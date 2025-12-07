void Instrument.GaugeStyle.hash(into:)(__int128 *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_242D3DE48(__dst);
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v5 = sub_242C65548(__dst);
        MEMORY[0x245D279A0](1);
        v6 = *(v5 + 16);
        *v22 = *v5;
        *&v22[16] = v6;
        *&v22[32] = *(v5 + 32);
        v22[48] = *(v5 + 48);
        ImageGroupConfiguration.hash(into:)(a1);
      }

      else
      {
        v12 = sub_242C65548(__dst);
        MEMORY[0x245D279A0](2);
        v13 = *(v12 + 48);
        *&v22[32] = *(v12 + 32);
        *&v22[48] = v13;
        *&v22[64] = *(v12 + 64);
        *&v22[80] = *(v12 + 80);
        v14 = *(v12 + 16);
        *v22 = *v12;
        *&v22[16] = v14;
        SymbolConfiguration.hash(into:)(a1);
      }
    }

    else
    {
      v8 = sub_242C65548(__dst);
      MEMORY[0x245D279A0](0);
      v9 = *(v8 + 80);
      *&v22[64] = *(v8 + 64);
      *&v22[80] = v9;
      *&v22[96] = *(v8 + 96);
      v10 = *(v8 + 16);
      *v22 = *v8;
      *&v22[16] = v10;
      v11 = *(v8 + 48);
      *&v22[32] = *(v8 + 32);
      *&v22[48] = v11;
      Instrument.GaugeStyle.CircularConfiguration.hash(into:)(a1);
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      v7 = sub_242C65548(__dst);
      MEMORY[0x245D279A0](6);
      memcpy(v22, v7, 0x164uLL);
      ProgressBarType.hash(into:)(a1);
    }

    else
    {
      MEMORY[0x245D279A0](5);
    }
  }

  else if (v3 == 3)
  {
    v4 = sub_242C65548(__dst);
    MEMORY[0x245D279A0](3);
    memcpy(v22, v4, sizeof(v22));
    TextDataType.hash(into:)(a1);
  }

  else
  {
    v15 = sub_242C65548(__dst);
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 36);
    MEMORY[0x245D279A0](4);
    *v22 = v16;
    v22[8] = v17;
    *&v22[16] = v18;
    *&v22[24] = v19;
    *&v22[32] = v20;
    v22[36] = v21;
    ShapeLayerConfiguration.hash(into:)(a1);
  }
}

uint64_t Instrument.GaugeStyle.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v108 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3308, &qword_242F18080);
  v105 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v107 = &v89 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3310, &qword_242F18088);
  v102 = *(v4 - 8);
  v103 = v4;
  MEMORY[0x28223BE20](v4);
  v112 = &v89 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3318, &qword_242F18090);
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v111 = &v89 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3320, &qword_242F18098);
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v106 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3328, &qword_242F180A0);
  v96 = *(v8 - 8);
  v97 = v8;
  MEMORY[0x28223BE20](v8);
  v110 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3330, &qword_242F180A8);
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v89 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3338, &qword_242F180B0);
  v93 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v89 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3340, &unk_242F180B8);
  v109 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v89 - v17;
  v19 = a1[3];
  v113 = a1;
  v20 = __swift_project_boxed_opaque_existential_2Tm(a1, v19);
  sub_242D483A0(v20, v21, v22);
  v23 = v119;
  sub_242F06480();
  if (v23)
  {
    goto LABEL_12;
  }

  v90 = v13;
  v91 = v12;
  v25 = v110;
  v24 = v111;
  v92 = 0;
  v26 = v112;
  v119 = v16;
  v27 = sub_242F05E10();
  v28 = (2 * *(v27 + 16)) | 1;
  v116[69] = v27;
  v116[70] = v27 + 32;
  v117 = 0;
  v118 = v28;
  v29 = sub_242C70290();
  if (v29 != 7 && v117 == v118 >> 1)
  {
    if (v29 > 2u)
    {
      if (v29 <= 4u)
      {
        v32 = v119;
        if (v29 == 3)
        {
          v115[0] = 3;
          sub_242D48598(v29, v30, v31);
          v33 = v106;
          v34 = v92;
          v35 = sub_242F05D10();
          v38 = v109;
          if (!v34)
          {
            sub_242D489E4(v35, v36, v37);
            v39 = v100;
            sub_242F05E00();
            (*(v98 + 8))(v33, v39);
            (*(v38 + 8))(v18, v32);
            swift_unknownObjectRelease();
            memcpy(v114, v115, sizeof(v114));
            sub_242D48A38(v114);
            v40 = v114;
LABEL_35:
            memcpy(v116, v40, 0x228uLL);
            v88 = v113;
            v63 = v108;
LABEL_37:
            memcpy(v63, v116, 0x228uLL);
            v49 = v88;
            return __swift_destroy_boxed_opaque_existential_2Tm(v49);
          }

          goto LABEL_26;
        }

        v115[0] = 4;
        sub_242D484F0(v29, v30, v31);
        v74 = v92;
        v75 = sub_242F05D10();
        v38 = v109;
        if (v74)
        {
LABEL_26:
          (*(v38 + 8))(v18, v32);
          goto LABEL_11;
        }

        sub_242D48928(v75, v76, v77);
        v85 = v104;
        sub_242F05E00();
        (*(v101 + 8))(v24, v85);
        (*(v38 + 8))(v18, v32);
        swift_unknownObjectRelease();
        *v115 = *v114;
        v115[8] = v114[8];
        *&v115[16] = *&v114[16];
        *&v115[32] = *&v114[32];
        v115[36] = v114[36];
        sub_242D4897C(v115);
LABEL_34:
        v40 = v115;
        goto LABEL_35;
      }

      v61 = v18;
      v54 = v119;
      if (v29 == 5)
      {
        v115[0] = 5;
        sub_242D4849C(v29, v30, v31);
        v62 = v92;
        sub_242F05D10();
        v63 = v108;
        if (v62)
        {
          v46 = *(v109 + 8);
          v47 = v61;
LABEL_29:
          v48 = v54;
          goto LABEL_10;
        }

        (*(v102 + 8))(v26, v103);
        (*(v109 + 8))(v61, v54);
        swift_unknownObjectRelease();
        sub_242D488F4(v116);
LABEL_36:
        v88 = v113;
        goto LABEL_37;
      }

      v115[0] = 6;
      sub_242D483F4(v29, v30, v31);
      v78 = v107;
      v53 = v61;
      v79 = v92;
      v80 = sub_242F05D10();
      v63 = v108;
      if (!v79)
      {
        sub_242D48838(v80, v81, v82);
        v86 = v99;
        sub_242F05E00();
        v87 = (v109 + 8);
        (*(v105 + 8))(v78, v86);
        (*v87)(v61, v54);
        swift_unknownObjectRelease();
        memcpy(v115, v114, 0x164uLL);
        sub_242D4888C(v115);
        memcpy(v116, v115, 0x228uLL);
        goto LABEL_36;
      }

LABEL_28:
      v46 = *(v109 + 8);
      v47 = v53;
      goto LABEL_29;
    }

    if (v29)
    {
      v51 = v92;
      if (v29 == 1)
      {
        v115[0] = 1;
        sub_242D486E8(v29, v30, v31);
        v52 = v91;
        v53 = v18;
        v54 = v119;
        v55 = sub_242F05D10();
        if (!v51)
        {
          v58 = v53;
          sub_242D48B5C(v55, v56, v57);
          v59 = v95;
          sub_242F05E00();
          v60 = (v109 + 8);
          (*(v94 + 8))(v52, v59);
          (*v60)(v58, v54);
          swift_unknownObjectRelease();
          *v115 = *v114;
          *&v115[16] = *&v114[16];
          *&v115[32] = *&v114[32];
          v115[48] = v114[48];
          sub_242D48BB0(v115);
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v115[0] = 2;
      sub_242D48640(v29, v30, v31);
      v64 = v119;
      v71 = sub_242F05D10();
      if (!v51)
      {
        sub_242D48AA0(v71, v72, v73);
        v83 = v97;
        sub_242F05E00();
        v84 = (v109 + 8);
        (*(v96 + 8))(v25, v83);
        (*v84)(v18, v119);
        swift_unknownObjectRelease();
        *&v115[32] = *&v114[32];
        *&v115[48] = *&v114[48];
        *&v115[64] = *&v114[64];
        *&v115[80] = *&v114[80];
        *v115 = *v114;
        *&v115[16] = *&v114[16];
        sub_242D48AF4(v115);
        goto LABEL_34;
      }
    }

    else
    {
      v115[0] = 0;
      sub_242D48790(v29, v30, v31);
      v64 = v119;
      v65 = v92;
      v66 = sub_242F05D10();
      if (!v65)
      {
        sub_242D48C18(v66, v67, v68);
        v69 = v90;
        sub_242F05E00();
        v70 = v109;
        (*(v93 + 8))(v15, v69);
        (*(v70 + 8))(v18, v64);
        swift_unknownObjectRelease();
        *&v115[64] = *&v114[64];
        *&v115[80] = *&v114[80];
        *&v115[96] = *&v114[96];
        *v115 = *v114;
        *&v115[16] = *&v114[16];
        *&v115[32] = *&v114[32];
        *&v115[48] = *&v114[48];
        sub_242D48C6C(v115);
        goto LABEL_34;
      }
    }

    (*(v109 + 8))(v18, v64);
    goto LABEL_11;
  }

  v41 = sub_242F05B10();
  swift_allocError();
  v42 = v18;
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
  *v44 = &type metadata for Instrument.GaugeStyle;
  v45 = v119;
  sub_242F05D20();
  sub_242F05AF0();
  (*(*(v41 - 8) + 104))(v44, *MEMORY[0x277D84160], v41);
  swift_willThrow();
  v46 = *(v109 + 8);
  v47 = v42;
  v48 = v45;
LABEL_10:
  v46(v47, v48);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v49 = v113;
  return __swift_destroy_boxed_opaque_existential_2Tm(v49);
}

uint64_t sub_242D43188()
{
  sub_242F06390();
  Instrument.GaugeStyle.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242D431CC(uint64_t a1)
{
  sub_242F06390();
  Instrument.GaugeStyle.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t Instrument.ConfigurableInputState.imageAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = *(v1 + 32);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  return sub_242C7F6C4(v2, v3, v4, v5, v7);
}

__n128 Instrument.ConfigurableInputState.imageAsset.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_242C7F724(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

__n128 Instrument.ConfigurableInputState.init(imageAsset:tintColorID:alignment:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a1[1];
  v16 = *a1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 5);
  v7 = *(a2 + 16);
  v8 = *a3;
  if (v7 == 255)
  {
    v13 = sub_242CE7008(MEMORY[0x277D84F90]);
  }

  else
  {
    v10 = *a2;
    v9 = a2[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378, &unk_242F2FFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F09510;
    *(inited + 32) = 0;
    v12 = inited + 32;
    *(inited + 40) = v10;
    *(inited + 48) = v9;
    *(inited + 56) = v7;
    v13 = sub_242CE7008(inited);
    swift_setDeallocating();
    sub_242C6D138(v12, &qword_27ECF1F18, &qword_242F131D0);
  }

  result = v15;
  *a4 = v16;
  *(a4 + 16) = v15;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  *(a4 + 48) = v13;
  *(a4 + 56) = v8;
  return result;
}

__n128 Instrument.ConfigurableInputState.init(imageAsset:tintColorIDs:alignment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a3;
  result = *a1;
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  *(a4 + 48) = a2;
  *(a4 + 56) = v6;
  return result;
}

uint64_t sub_242D43450(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6C6F43746E6974;
  v4 = 0xEC00000073444972;
  if (v2 != 1)
  {
    v3 = 0x6E656D6E67696C61;
    v4 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6567616D69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6F6C6F43746E6974;
  v8 = 0xEC00000073444972;
  if (*a2 != 1)
  {
    v7 = 0x6E656D6E67696C61;
    v8 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6567616D69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242D43568()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242D43614(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242D436AC(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

unint64_t sub_242D43754@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_242D4B828(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_242D43784(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC00000073444972;
  v5 = 0x6F6C6F43746E6974;
  if (v2 != 1)
  {
    v5 = 0x6E656D6E67696C61;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6567616D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242D437EC()
{
  v1 = 0x6F6C6F43746E6974;
  if (*v0 != 1)
  {
    v1 = 0x6E656D6E67696C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

unint64_t sub_242D43850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D4B828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D43878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48CD0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D438B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48CD0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.ConfigurableInputState.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3380, &qword_242F180C8);
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = v26 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v26[0] = *(v1 + 48);
  v37 = *(v1 + 56);
  v10 = a1[3];
  v26[1] = a1[4];
  v27 = v9;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, v10);
  v12 = sub_242C7F6C4(v5, v6, v7, v8, v11);
  sub_242D48CD0(v12, v13, v14);
  v15 = sub_242F064C0();
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v11;
  v16 = v28;
  v36 = v27;
  v38 = 0;
  sub_242C8B8E8(v15, v17, v18);
  v19 = v29;
  sub_242F05F20();
  sub_242C7F724(v31, v32, v33, v34, v35);
  if (v19)
  {
    return (*(v30 + 8))(v4, v16);
  }

  v21 = v37;
  v22 = v30;
  v31 = v26[0];
  v38 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  v23 = sub_242F05F20();
  LOBYTE(v31) = v21;
  v38 = 2;
  sub_242D48D24(v23, v24, v25);
  sub_242F05F20();
  return (*(v22 + 8))(v4, v16);
}

uint64_t Instrument.ConfigurableInputState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = *(v1 + 56);
  if (v6 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v3)
    {
      v11 = v3;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(a1, v4);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v5)
    {
      sub_242F063B0();
      v10 = v5;
      sub_242F05820();

      if (v6)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x245D279D0](v12);
  }

LABEL_13:
  MEMORY[0x245D279A0](v8);
  sub_242C79508(a1, v7);
  return MEMORY[0x245D279A0](v9 + 1);
}

uint64_t Instrument.ConfigurableInputState.hashValue.getter()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_242F06390();
  if (v4 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v1)
    {
      v9 = v1;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v12, v2);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v3)
    {
      sub_242F063B0();
      v8 = v3;
      sub_242F05820();

      if (v4)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x245D279D0](v10);
  }

LABEL_13:
  MEMORY[0x245D279A0](v6);
  sub_242C79508(v12, v5);
  MEMORY[0x245D279A0](v7 + 1);
  return sub_242F063E0();
}

void Instrument.ConfigurableInputState.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3398, &qword_242F180D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D48CD0(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    sub_242C8BA70(v12, v13, v14);
    sub_242F05E00();
    v15 = v37;
    v32 = a2;
    v33 = v38;
    v34 = v39;
    v44 = v40;
    v16 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    LOBYTE(v35[0]) = 1;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    v17 = sub_242F05E00();
    v31 = v16;
    v18 = v37;
    v45 = 2;
    sub_242D48D78(v17, v19, v20);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v30 = v46;
    v21 = v15;
    v23 = v33;
    v22 = v34;
    *&v35[0] = v15;
    *(&v35[0] + 1) = v33;
    v24 = v18;
    v25 = *(&v34 + 1);
    v35[1] = v34;
    LOBYTE(v15) = v44;
    v36[0] = v44;
    v26 = v31;
    *&v36[8] = v31;
    *&v36[16] = v24;
    v36[24] = v46;
    v27 = v34;
    v28 = v32;
    *v32 = v35[0];
    v28[1] = v27;
    v28[2] = *v36;
    *(v28 + 41) = *&v36[9];
    sub_242C7F938(v35, &v37);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v37 = v21;
    v38 = v23;
    *&v39 = v22;
    *(&v39 + 1) = v25;
    v40 = v15;
    v41 = v26;
    v42 = v24;
    v43 = v30;
    sub_242C7F994(&v37);
  }
}

uint64_t sub_242D441E4(uint64_t a1)
{
  v2 = *v1;
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  sub_242F06390();
  if (v5 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v2)
    {
      v10 = v2;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v13, v3);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v4)
    {
      sub_242F063B0();
      v9 = v4;
      sub_242F05820();

      if (v5)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x245D279D0](v11);
  }

LABEL_13:
  MEMORY[0x245D279A0](v7);
  sub_242C79508(v13, v6);
  MEMORY[0x245D279A0](v8 + 1);
  return sub_242F063E0();
}

uint64_t Instrument.RemainingRangeTextConfiguration.labelConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x150uLL);
  memcpy(a1, (v1 + 8), 0x150uLL);
  return sub_242D48DCC(__dst, v4);
}

void *Instrument.RemainingRangeTextConfiguration.labelConfiguration.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), 0x150uLL);
  sub_242D48E28(__dst);
  return memcpy((v1 + 8), a1, 0x150uLL);
}

void *Instrument.RemainingRangeTextConfiguration.init(labelConfiguration:remainingRangeDataIdentifier:)@<X0>(void *__src@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  a3[1] = 49;
  result = memcpy(a3 + 8, __src, 0x150uLL);
  *a3 = v4;
  return result;
}

unint64_t sub_242D444C8()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_242D44518@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D4B874(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D44540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48E7C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D4457C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48E7C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.RemainingRangeTextConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF33A8, &qword_242F180E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-v5 - 8];
  v7 = *v1;
  v23 = v1[1];
  memcpy(v22, v1 + 8, 0x150uLL);
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D48E7C(v8, v9, v10);
  v11 = sub_242F064C0();
  v21[0] = v7;
  v20[0] = 0;
  sub_242C8AC28(v11, v12, v13);
  v14 = v19;
  sub_242F05F20();
  if (!v14)
  {
    v21[0] = v23;
    v20[0] = 1;
    sub_242F05F20();
    memcpy(v21, v22, sizeof(v21));
    v24 = 2;
    v15 = sub_242D48DCC(v22, v20);
    sub_242D48ED0(v15, v16, v17);
    sub_242F05F20();
    memcpy(v20, v21, sizeof(v20));
    sub_242D48E28(v20);
  }

  return (*(v4 + 8))(v6, v3);
}

void Instrument.RemainingRangeTextConfiguration.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  memcpy(__dst, v1 + 8, sizeof(__dst));
  v6 = v3;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  v6 = v4;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MeasurementLabelConfiguration.hash(into:)(a1);
}

uint64_t Instrument.RemainingRangeTextConfiguration.hashValue.getter()
{
  memcpy(__dst, (v0 + 8), sizeof(__dst));
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MeasurementLabelConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t Instrument.RemainingRangeTextConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF33C0, &qword_242F180E8);
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D48E7C(v8, v9, v10);
  v11 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v14 = v5;
  v23 = a2;
  v25[0] = 0;
  sub_242C8AC7C(v11, v12, v13);
  v15 = v24;
  sub_242F05E00();
  v16 = v26[0];
  v25[0] = 1;
  v17 = sub_242F05E00();
  v18 = v16;
  v19 = v26[0];
  v28[365] = 2;
  sub_242D48F24(v17, v20, v21);
  sub_242F05E00();
  (*(v14 + 8))(v7, v15);
  memcpy(&v28[6], v27, 0x150uLL);
  v25[0] = v18;
  v25[1] = v19;
  memcpy(&v25[2], v28, 0x156uLL);
  memcpy(v23, v25, 0x158uLL);
  sub_242C8B93C(v25, v26);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v26[0] = v18;
  v26[1] = v19;
  memcpy(&v26[2], v28, 0x156uLL);
  return sub_242C8C790(v26);
}

void sub_242D44C3C(uint64_t a1)
{
  v4 = *(v1 + 296);
  v5 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v8[2] = a1;
  v6 = sub_242C8A810(v5, sub_242C8C7E4, v8, v4);
  if (v2)
  {
  }

  else
  {
    v7 = v6;

    *(v1 + 296) = v7;
  }
}

uint64_t sub_242D44D14(uint64_t a1)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MeasurementLabelConfiguration.hash(into:)(v3);
  return sub_242F063E0();
}

uint64_t Instrument.BoundsLabel.lowerBounds.getter()
{
  v1 = *v0;

  return v1;
}

void Instrument.BoundsLabel.lowerBounds.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t Instrument.BoundsLabel.upperBounds.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void Instrument.BoundsLabel.upperBounds.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t Instrument.BoundsLabel.init(lowerBounds:upperBounds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static Instrument.BoundsLabel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_242F06110(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_242F06110();
    }
  }

  return result;
}

uint64_t sub_242D44FA0()
{
  if (*v0)
  {
    return 0x756F427265707075;
  }

  else
  {
    return 0x756F427265776F6CLL;
  }
}

void sub_242D44FDC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F427265776F6CLL && a2 == 0xEB0000000073646ELL;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x756F427265707075 && a2 == 0xEB0000000073646ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242D450BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48F78(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D450F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48F78(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.BoundsLabel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF33D0, &qword_242F180F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v13[1] = *(v1 + 24);
  v13[2] = v7;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D48F78(v8, v9, v10);
  sub_242F064C0();
  v15 = 0;
  v11 = v13[3];
  sub_242F05EC0();
  if (!v11)
  {
    v14 = 1;
    sub_242F05EC0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Instrument.BoundsLabel.hash(into:)(uint64_t a1)
{
  sub_242F04DD0();

  return sub_242F04DD0();
}

uint64_t Instrument.BoundsLabel.hashValue.getter()
{
  sub_242F06390();
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

void Instrument.BoundsLabel.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF33E0, &qword_242F180F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D48F78(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v21 = 0;
    v12 = sub_242F05DA0();
    v14 = v13;
    v19 = v12;
    v20 = 1;
    v15 = sub_242F05DA0();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v19;
    a2[1] = v14;
    a2[2] = v15;
    a2[3] = v17;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242D455B0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_242F06110(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_242F06110();
    }
  }

  return result;
}

uint64_t sub_242D456C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48FCC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D45700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48FCC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.UnitSensitiveBoundsLabels.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF33E8, &qword_242F18100);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *v1;
  v16[0] = *(v1 + 1);
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D48FCC(v9, v10, v11);
  v12 = sub_242F064C0();
  v19 = v8;
  v18 = 0;
  sub_242C8AC28(v12, v13, v14);
  sub_242F05F20();
  if (!v2)
  {
    v16[1] = v16[0];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF33F8, &qword_242F18108);
    sub_242D49020(&qword_27ECF3400, sub_242D490A4, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Instrument.UnitSensitiveBoundsLabels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3410, &qword_242F18110);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D48FCC(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v20 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF33F8, &qword_242F18108);
    v19 = 1;
    sub_242D49020(&qword_27ECF3418, sub_242D490F8, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v16 = v18[1];
    *a2 = v15;
    *(a2 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D45C64()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

void sub_242D45CB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5A780 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242D45D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D4914C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D45DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D4914C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

_BYTE *Instrument.UnitSensitiveLabel.init(dataIdentifier:labels:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

void sub_242D45F98(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242D46078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D49210(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D460B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D49210(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D46134(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = *v5;
  v17[0] = *(v5 + 1);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  a4();
  v12 = sub_242F064C0();
  v22 = v11;
  v21 = 0;
  sub_242C8AC28(v12, v13, v14);
  v15 = v17[1];
  sub_242F05F20();
  if (!v15)
  {
    v19 = v17[0];
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3438, &qword_242F18120);
    sub_242D491A0(&qword_27ECF3440, MEMORY[0x277D83B90], MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_242F05F20();
  }

  return (*(v18 + 8))(v10, v8);
}

uint64_t sub_242D46330(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return a2(a1, v4);
}

uint64_t sub_242D463D0(uint64_t (*a1)(void *, uint64_t, __n128))
{
  v3 = *(v1 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  (a1)(v5, v3);
  return sub_242F063E0();
}

uint64_t sub_242D4649C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v22 = a6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  a4();
  v12 = sub_242F06480();
  if (!v6)
  {
    v15 = v9;
    v16 = v22;
    v26 = 0;
    sub_242C8AC7C(v12, v13, v14);
    v17 = v23;
    sub_242F05E00();
    v18 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3438, &qword_242F18120);
    v25 = 1;
    sub_242D491A0(&qword_27ECF3450, MEMORY[0x277D83BB8], MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_242F05E00();
    (*(v15 + 8))(v11, v17);
    v19 = v24;
    *v16 = v18;
    *(v16 + 8) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D466F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, __n128))
{
  v5 = *(v3 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  (a3)(v7, v5);
  return sub_242F063E0();
}

uint64_t sub_242D46778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(v4 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return a4(a1, v6);
}

uint64_t sub_242D46800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, __n128))
{
  v6 = *(v4 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  (a4)(v8, v6);
  return sub_242F063E0();
}

void *Instrument.GaugeStyle.assets.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242D3DE48(__dst);
  if (v1 <= 2)
  {
    if (!v1)
    {
LABEL_8:
      sub_242C65548(__dst);
      return MEMORY[0x277D84F90];
    }

    if (v1 == 1)
    {
      v4 = *(sub_242C65548(__dst) + 8);
      swift_getKeyPath();

      v5 = sub_242D47D30(v4, sub_242D49264);
    }

    else
    {
      v7 = sub_242C65548(__dst);
      v9 = *v7;
      v8 = *(v7 + 8);
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      v14 = *(v7 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_242F09510;
      *(v5 + 56) = &type metadata for VectorFont.Asset;
      *(v5 + 64) = &protocol witness table for VectorFont.Asset;
      v15 = swift_allocObject();
      *(v5 + 32) = v15;
      *(v15 + 16) = v9;
      *(v15 + 24) = v8;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
      *(v15 + 48) = v12;
      *(v15 + 56) = v13;
      *(v15 + 64) = v14;
      v16 = v14;
    }

    return v5;
  }

  else
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v2 = sub_242C65548(__dst);
        memcpy(v20, v2, 0x228uLL);
        return TextElementConfiguration.assets.getter();
      }

      goto LABEL_8;
    }

    if (v1 != 5)
    {
      return MEMORY[0x277D84F90];
    }

    v6 = sub_242C65548(__dst);
    memcpy(v20, v6, 0x164uLL);
    switch(sub_242D4926C(v20))
    {
      case 6u:
        v18 = sub_242C5904C(v20);
        memcpy(v19, v18, sizeof(v19));
        sub_242D49294(v19);
        sub_242C59070(v19);
        return MEMORY[0x277D84F90];
      case 8u:
      case 9u:
      case 0xAu:
        v17 = sub_242C5904C(v20);
        *&v19[176] = v17[11];
        *&v19[192] = v17[12];
        *&v19[208] = v17[13];
        *&v19[224] = v17[14];
        *&v19[112] = v17[7];
        *&v19[128] = v17[8];
        *&v19[144] = v17[9];
        *&v19[160] = v17[10];
        *&v19[48] = v17[3];
        *&v19[64] = v17[4];
        *&v19[80] = v17[5];
        *&v19[96] = v17[6];
        *v19 = *v17;
        *&v19[16] = v17[1];
        *&v19[32] = v17[2];
        result = Instrument.GaugeStyle.TicksConfiguration.assets.getter();
        break;
      default:
        sub_242C5904C(v20);
        return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void *Instrument.GaugeStyle.restoreAssets(from:)(void *a1)
{
  v3 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v27, v1, 0x228uLL);
  result = sub_242D3DE48(v27);
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v6 = sub_242C65548(v27);
        memcpy(__src, v6, 0x228uLL);
        memcpy(v25, __dst, 0x228uLL);
        v7 = sub_242C65548(v25);
        sub_242CA321C(v7, v23, &qword_27ECF3480, &unk_242F27C10);
        TextElementConfiguration.restoreAssets(from:)(a1);
        if (v2)
        {
          memcpy(v23, __src, 0x228uLL);
          return sub_242D4939C(v23);
        }

        memcpy(v21, v1, sizeof(v21));
        sub_242D480A8(v21);
        memcpy(v23, __src, 0x228uLL);
        sub_242D48A38(v23);
        v20 = v23;
        return memcpy(v3, v20, 0x228uLL);
      }

      return sub_242C65548(v27);
    }

    if (result != 5)
    {
      return result;
    }

    v10 = sub_242C65548(v27);
    memcpy(v21, v10, 0x164uLL);
    memcpy(v25, __dst, 0x228uLL);
    v11 = sub_242C65548(v25);
    sub_242CA321C(v11, __src, &qword_27ECF3470, &qword_242F18168);
    ProgressBarType.restoreAssets(from:)();
    if (v2)
    {
      memcpy(__src, v21, 0x164uLL);
      return sub_242D492A0(__src);
    }

    memcpy(v23, v1, 0x228uLL);
    sub_242D480A8(v23);
    memcpy(__src, v21, 0x164uLL);
    sub_242D4888C(__src);
    goto LABEL_20;
  }

  if (!result)
  {
    return sub_242C65548(v27);
  }

  if (result == 1)
  {
    v8 = sub_242C65548(v27);
    *v21 = *v8;
    *&v21[16] = *(v8 + 16);
    *&v21[32] = *(v8 + 32);
    v21[48] = *(v8 + 48);
    memcpy(v25, __dst, 0x228uLL);
    v9 = sub_242C65548(v25);
    sub_242CA321C(v9, __src, &qword_27ECF3478, &unk_242F18170);
    ImageGroupConfiguration.restoreAssets(from:)(a1);
    if (v2)
    {
      __src[0] = *v21;
      __src[1] = *&v21[16];
      __src[2] = *&v21[32];
      LOBYTE(__src[3]) = v21[48];
      return sub_242D49348(__src);
    }

    memcpy(v23, v1, 0x228uLL);
    sub_242D480A8(v23);
    __src[0] = *v21;
    __src[1] = *&v21[16];
    __src[2] = *&v21[32];
    LOBYTE(__src[3]) = v21[48];
    sub_242D48BB0(__src);
LABEL_20:
    v20 = __src;
    return memcpy(v3, v20, 0x228uLL);
  }

  v12 = sub_242C65548(v27);
  v13 = *v12;
  v14 = *(v12 + 8);
  v28 = *(v12 + 48);
  v23[0] = *v12;
  v23[1] = *(v12 + 16);
  v23[2] = *(v12 + 32);
  *v21 = *(v12 + 56);
  *&v21[10] = *(v12 + 66);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v15);
  v22 = 1;
  v17 = *(v16 + 8);
  sub_242D48070(__dst, v25);

  v18 = v17(v13, v14, &v22, v15, v16);
  if (v2)
  {

    v25[0] = v23[0];
    v25[1] = v23[1];
    v25[2] = v23[2];
    *&v25[3] = v28;
    *(&v25[3] + 8) = *v21;
    *(&v25[4] + 2) = *&v21[10];
    return sub_242D492F4(v25);
  }

  v19 = v18;

  memcpy(__src, v3, 0x228uLL);
  sub_242D480A8(__src);

  v25[0] = v23[0];
  v25[1] = v23[1];
  v25[2] = v23[2];
  *(&v25[3] + 8) = *v21;
  *(&v25[4] + 2) = *&v21[10];
  *&v25[3] = v19;
  sub_242D48AF4(v25);
  v20 = v25;
  return memcpy(v3, v20, 0x228uLL);
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO21CircularConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v27 = *(a1 + 48);
  v26 = *(a1 + 64);
  v24 = *(a1 + 72);
  v22 = *(a1 + 88);
  v20 = *(a1 + 96);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  v25 = *(a2 + 64);
  v23 = *(a2 + 72);
  v21 = *(a2 + 88);
  v19 = *(a2 + 96);
  v13 = InstrumentDataIdentifier.rawValue.getter();
  v15 = v14;
  if (v13 == InstrumentDataIdentifier.rawValue.getter() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_242F06110();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 != v8 || v2 != v7 || (v5 != v10 || v4 != v9) && (sub_242F06110() & 1) == 0 || (v6 != v12 || v27 != v11) && (sub_242F06110() & 1) == 0 || (sub_242F04710() & 1) == 0 || (v26 != v25 || v24 != v23) && (sub_242F06110() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242C73158(v22, v21) & 1) == 0)
  {
    return 0;
  }

  return sub_242C73158(v20, v19);
}

uint64_t _s14CarPlayAssetUI10InstrumentV22ConfigurableInputStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v17 = *(a1 + 56);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v14;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v15;
  sub_242C7F6C4(v23, v2, v3, v4, v14);
  sub_242C7F6C4(v7, v8, v9, v10, v15);
  LOBYTE(v7) = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v23, &v18);
  sub_242C7F724(v18, v19, v20, v21, v22);
  sub_242C7F724(v23, v24, v25, v26, v27);
  result = 0;
  if ((v7 & 1) != 0 && v6 == v12)
  {
    return sub_242C75A30(v5, v11) & (v17 == v13);
  }

  return result;
}

uint64_t sub_242D47304(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = InstrumentDataIdentifier.rawValue.getter();
  v7 = v6;
  if (v5 == InstrumentDataIdentifier.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_242F06110();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return a3(v3, v4);
}

BOOL _s14CarPlayAssetUI10InstrumentV18GaugeConfigurationV2eeoiySbAE_AEtFZ_0(void *__src, uint64_t a2)
{
  v3 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *(v3 + 552);
  v5 = v3[70];
  memcpy(v13, a2, sizeof(v13));
  v6 = *(a2 + 552);
  v7 = *(a2 + 560);
  memcpy(__srca, v3, sizeof(__srca));
  memcpy(v10, a2, sizeof(v10));
  sub_242D48070(__dst, v15);
  sub_242D48070(v13, v15);
  LOBYTE(v3) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO2eeoiySbAE_AEtFZ_0(__srca);
  memcpy(v14, v10, sizeof(v14));
  sub_242D480A8(v14);
  memcpy(v15, __srca, sizeof(v15));
  sub_242D480A8(v15);
  v8 = 0;
  if ((v3 & 1) != 0 && ((v4 ^ v6) & 1) == 0)
  {

    v8 = sub_242C72BB4(v5, v7);
  }

  return v8;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  memcpy(v44, v4, sizeof(v44));
  memcpy(v45, v2, sizeof(v45));
  memcpy(v46, v4, sizeof(v46));
  v5 = sub_242D3DE48(v46);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v9 = sub_242C65548(v46);
        memcpy(v41, __src, sizeof(v41));
        if (sub_242D3DE48(v41) != 1)
        {
          goto LABEL_22;
        }

        v10 = sub_242C65548(v41);
        *v39 = *v9;
        *&v39[16] = *(v9 + 16);
        *&v39[32] = *(v9 + 32);
        v39[48] = *(v9 + 48);
        v11 = *(v10 + 16);
        v38[0] = *v10;
        v38[1] = v11;
        v38[2] = *(v10 + 32);
        LOBYTE(v38[3]) = *(v10 + 48);
        sub_242D48070(__src, v40);
        sub_242D48070(__dst, v40);
        sub_242D48070(__dst, v40);
        sub_242D48070(__src, v40);
        v12 = _s14CarPlayAssetUI23ImageGroupConfigurationV2eeoiySbAC_ACtFZ_0(v39, v38);
      }

      else
      {
        v20 = sub_242C65548(v46);
        memcpy(v41, __src, sizeof(v41));
        if (sub_242D3DE48(v41) != 2)
        {
          goto LABEL_22;
        }

        v21 = sub_242C65548(v41);
        *&v39[32] = *(v20 + 32);
        *&v39[48] = *(v20 + 48);
        *&v39[64] = *(v20 + 64);
        *&v39[80] = *(v20 + 80);
        *v39 = *v20;
        *&v39[16] = *(v20 + 16);
        v22 = *(v21 + 48);
        v38[2] = *(v21 + 32);
        v38[3] = v22;
        v38[4] = *(v21 + 64);
        LOWORD(v38[5]) = *(v21 + 80);
        v23 = *(v21 + 16);
        v38[0] = *v21;
        v38[1] = v23;
        sub_242D48070(__src, v40);
        sub_242D48070(__dst, v40);
        sub_242D48070(__dst, v40);
        sub_242D48070(__src, v40);
        v12 = _s14CarPlayAssetUI19SymbolConfigurationV2eeoiySbAC_ACtFZ_0(v39, v38);
      }
    }

    else
    {
      v15 = sub_242C65548(v46);
      memcpy(v41, __src, sizeof(v41));
      if (sub_242D3DE48(v41))
      {
        goto LABEL_22;
      }

      v16 = sub_242C65548(v41);
      *&v39[48] = *(v15 + 48);
      *&v39[64] = *(v15 + 64);
      *&v39[80] = *(v15 + 80);
      *&v39[96] = *(v15 + 96);
      *v39 = *v15;
      *&v39[16] = *(v15 + 16);
      *&v39[32] = *(v15 + 32);
      v17 = *(v16 + 80);
      v38[4] = *(v16 + 64);
      v38[5] = v17;
      *&v38[6] = *(v16 + 96);
      v18 = *(v16 + 16);
      v38[0] = *v16;
      v38[1] = v18;
      v19 = *(v16 + 48);
      v38[2] = *(v16 + 32);
      v38[3] = v19;
      sub_242D48070(__src, v40);
      sub_242D48070(__dst, v40);
      sub_242D48070(__dst, v40);
      sub_242D48070(__src, v40);
      v12 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO21CircularConfigurationV2eeoiySbAG_AGtFZ_0(v39, v38);
    }

    goto LABEL_19;
  }

  if (v5 > 4)
  {
    if (v5 != 5)
    {
      memcpy(v41, __src, sizeof(v41));
      if (sub_242D3DE48(v41) == 6)
      {
        sub_242C6D138(v44, &qword_27ECF3668, &qword_242F21768);
        v8 = 1;
        return v8 & 1;
      }

LABEL_22:
      sub_242D48070(__dst, v41);
      sub_242D48070(__src, v41);
      sub_242C6D138(v44, &qword_27ECF3668, &qword_242F21768);
      v8 = 0;
      return v8 & 1;
    }

    v13 = sub_242C65548(v46);
    memcpy(v41, __src, sizeof(v41));
    if (sub_242D3DE48(v41) != 5)
    {
      goto LABEL_22;
    }

    v14 = sub_242C65548(v41);
    memcpy(v39, v13, 0x164uLL);
    memcpy(v38, v14, 0x164uLL);
    sub_242D48070(__src, v40);
    sub_242D48070(__dst, v40);
    sub_242D48070(__dst, v40);
    sub_242D48070(__src, v40);
    v12 = _s14CarPlayAssetUI15ProgressBarTypeO2eeoiySbAC_ACtFZ_0(v39, v38);
LABEL_19:
    v8 = v12;
    sub_242C6D138(v44, &qword_27ECF3668, &qword_242F21768);
    sub_242D480A8(__src);
    sub_242D480A8(__dst);
    return v8 & 1;
  }

  if (v5 != 3)
  {
    v24 = sub_242C65548(v46);
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    v30 = *(v24 + 36);
    memcpy(v41, __src, sizeof(v41));
    if (sub_242D3DE48(v41) != 4)
    {
      goto LABEL_22;
    }

    v31 = sub_242C65548(v41);
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 32);
    v35 = *(v31 + 36);
    *v39 = v25;
    v39[8] = v26;
    *&v39[16] = v27;
    *&v39[24] = v28;
    *&v39[32] = v29;
    v39[36] = v30;
    *&v38[0] = v32;
    BYTE8(v38[0]) = v33;
    v38[1] = *(v31 + 16);
    LODWORD(v38[2]) = v34;
    BYTE4(v38[2]) = v35;
    sub_242D48070(__src, v40);
    sub_242D48070(__dst, v40);
    sub_242D48070(__dst, v40);
    sub_242D48070(__src, v40);
    v12 = _s14CarPlayAssetUI23ShapeLayerConfigurationV2eeoiySbAC_ACtFZ_0(v39, v38);
    goto LABEL_19;
  }

  v6 = sub_242C65548(v46);
  memcpy(v41, __src, sizeof(v41));
  if (sub_242D3DE48(v41) != 3)
  {
    goto LABEL_22;
  }

  v7 = sub_242C65548(v41);
  memcpy(v38, v6, 0x228uLL);
  memcpy(v37, v7, sizeof(v37));
  sub_242D48070(__src, v40);
  sub_242D48070(__dst, v40);
  sub_242D48070(__dst, v40);
  sub_242D48070(__src, v40);
  v8 = _s14CarPlayAssetUI12TextDataTypeO2eeoiySbAC_ACtFZ_0(v38);
  sub_242C6D138(v44, &qword_27ECF3668, &qword_242F21768);
  memcpy(v39, v37, sizeof(v39));
  sub_242D4B9EC(v39);
  memcpy(v40, v38, sizeof(v40));
  sub_242D4B9EC(v40);
  return v8 & 1;
}

BOOL _s14CarPlayAssetUI10InstrumentV31RemainingRangeTextConfigurationV2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(__dst, a1 + 8, sizeof(__dst));
  v5 = *a2;
  v6 = a2[1];
  memcpy(__src, a2 + 8, sizeof(__src));
  v22[0] = v3;
  v21[0] = v5;
  v7 = InstrumentDataIdentifier.rawValue.getter();
  v9 = v8;
  if (v7 == InstrumentDataIdentifier.rawValue.getter() && v9 == v10)
  {
  }

  else
  {
    v11 = sub_242F06110();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v22[0] = v4;
  v21[0] = v6;
  v12 = InstrumentDataIdentifier.rawValue.getter();
  v14 = v13;
  if (v12 != InstrumentDataIdentifier.rawValue.getter() || v14 != v15)
  {
    v16 = sub_242F06110();

    if (v16)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  memcpy(v20, __dst, sizeof(v20));
  memcpy(v19, __src, sizeof(v19));
  sub_242D48DCC(__dst, v22);
  sub_242D48DCC(__src, v22);
  v17 = _s14CarPlayAssetUI29MeasurementLabelConfigurationV2eeoiySbAC_ACtFZ_0(v20, v19);
  memcpy(v21, v19, sizeof(v21));
  sub_242D48E28(v21);
  memcpy(v22, v20, sizeof(v22));
  sub_242D48E28(v22);
  return v17;
}

uint64_t sub_242D47D30(uint64_t a1, void (*a2)(void *__return_ptr, __int128 *))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v50 = MEMORY[0x277D84F90];
  sub_242E3BCB0(0, v2, 0);
  v3 = v50;
  v5 = v4 + 64;
  result = sub_242F05940();
  if (result < 0 || result >= 1 << *(v4 + 32))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v30 = v4 + 72;
    v31 = v2;
    v7 = *(v4 + 36);
    v8 = 1;
    v32 = v4 + 64;
    v33 = v4;
    while ((*(v5 + 8 * (result >> 6)) & (1 << result)) != 0)
    {
      v37 = result >> 6;
      v38 = 1 << result;
      v35 = v8;
      v36 = v7;
      v9 = (*(v4 + 56) + (result << 6));
      v11 = v9[1];
      v10 = v9[2];
      v12 = *v9;
      *(v47 + 9) = *(v9 + 41);
      v46[1] = v11;
      v47[0] = v10;
      v46[0] = v12;
      v40 = *v9;
      v41 = v9[1];
      v42[0] = v9[2];
      *(v42 + 9) = *(v9 + 41);
      v51 = result;
      sub_242C7F938(v46, v39);
      a2(v43, &v40);
      v48[0] = v40;
      v48[1] = v41;
      v49[0] = v42[0];
      *(v49 + 9) = *(v42 + 9);
      sub_242C7F994(v48);
      v50 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_242E3BCB0((v13 > 1), v14 + 1, 1);
        v3 = v50;
      }

      v15 = v43[0];
      v16 = v43[1];
      v17 = v43[2];
      v18 = v43[3];
      v19 = v45;
      v20 = v44;
      *(&v41 + 1) = &type metadata for ImageAsset;
      *&v42[0] = &protocol witness table for ImageAsset;
      v21 = swift_allocObject();
      *&v40 = v21;
      *(v21 + 16) = v15;
      *(v21 + 24) = v16;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      *(v21 + 48) = v20;
      *(v21 + 56) = v19;
      *(v3 + 16) = v14 + 1;
      sub_242C65564(&v40, v3 + 40 * v14 + 32);
      sub_242C7F6C4(v15, v16, v17, v18, v20);
      sub_242C7F724(v15, v16, v17, v18, v20);
      v4 = v33;
      v22 = 1 << *(v33 + 32);
      result = v51;
      if (v51 >= v22)
      {
        goto LABEL_25;
      }

      v5 = v32;
      v23 = *(v32 + 8 * v37);
      if ((v23 & v38) == 0)
      {
        goto LABEL_26;
      }

      if (v36 != *(v33 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v51 & 0x3F));
      if (v24)
      {
        result = __clz(__rbit64(v24)) | v51 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v37 << 6;
        v26 = v37 + 1;
        v27 = (v30 + 8 * v37);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_242C9E060(v51, v36, 0);
            result = __clz(__rbit64(v28)) + v25;
            goto LABEL_18;
          }
        }

        sub_242C9E060(v51, v36, 0);
        result = v22;
      }

LABEL_18:
      if (v35 == v31)
      {
        return v3;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v7 = *(v33 + 36);
        v8 = v35 + 1;
        if (result < 1 << *(v33 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_242D480D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3210;
  if (!qword_27ECF3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3210);
  }

  return result;
}

unint64_t sub_242D4812C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3218;
  if (!qword_27ECF3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3218);
  }

  return result;
}

unint64_t sub_242D48180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3220;
  if (!qword_27ECF3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3220);
  }

  return result;
}

unint64_t sub_242D481D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3230;
  if (!qword_27ECF3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3230);
  }

  return result;
}

unint64_t sub_242D48228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3238;
  if (!qword_27ECF3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3238);
  }

  return result;
}

unint64_t sub_242D482E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3248;
  if (!qword_27ECF3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3248);
  }

  return result;
}

unint64_t sub_242D483A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3298;
  if (!qword_27ECF3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3298);
  }

  return result;
}

unint64_t sub_242D483F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32A0;
  if (!qword_27ECF32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32A0);
  }

  return result;
}

unint64_t sub_242D48448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32A8;
  if (!qword_27ECF32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32A8);
  }

  return result;
}

unint64_t sub_242D4849C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32B0;
  if (!qword_27ECF32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32B0);
  }

  return result;
}

unint64_t sub_242D484F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32B8;
  if (!qword_27ECF32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32B8);
  }

  return result;
}

unint64_t sub_242D48544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32C0;
  if (!qword_27ECF32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32C0);
  }

  return result;
}

unint64_t sub_242D48598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32C8;
  if (!qword_27ECF32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32C8);
  }

  return result;
}

unint64_t sub_242D485EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32D0;
  if (!qword_27ECF32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32D0);
  }

  return result;
}

unint64_t sub_242D48640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32D8;
  if (!qword_27ECF32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32D8);
  }

  return result;
}

unint64_t sub_242D48694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32E0;
  if (!qword_27ECF32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32E0);
  }

  return result;
}

unint64_t sub_242D486E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32E8;
  if (!qword_27ECF32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32E8);
  }

  return result;
}

unint64_t sub_242D4873C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32F0;
  if (!qword_27ECF32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32F0);
  }

  return result;
}

unint64_t sub_242D48790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF32F8;
  if (!qword_27ECF32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF32F8);
  }

  return result;
}

unint64_t sub_242D487E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3300;
  if (!qword_27ECF3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3300);
  }

  return result;
}

unint64_t sub_242D48838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3348;
  if (!qword_27ECF3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3348);
  }

  return result;
}

void *sub_242D4888C(void *result)
{
  v1 = result[49] & 7;
  v2 = result[52] & 7;
  v3 = result[55] & 7;
  v4 = result[58] & 7;
  v5 = result[61] & 7;
  v6 = result[64] & 7;
  v7 = result[67] & 0xF000000000000007 | 0xA00000000000000;
  result[46] &= 7uLL;
  result[49] = v1;
  result[52] = v2;
  result[55] = v3;
  result[58] = v4;
  result[61] = v5;
  result[64] = v6;
  result[67] = v7;
  return result;
}

void sub_242D488F4(void *a1)
{
  bzero(a1, 0x218uLL);
  a1[67] = 0xC00000000000000;
  a1[68] = 0;
}

unint64_t sub_242D48928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3350;
  if (!qword_27ECF3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3350);
  }

  return result;
}

void *sub_242D4897C(void *result)
{
  v1 = result[49] & 7;
  v2 = result[52] & 7;
  v3 = result[55] & 7;
  v4 = result[58] & 7;
  v5 = result[61] & 7;
  v6 = result[64] & 7;
  v7 = result[67] & 0xF000000000000007 | 0x800000000000000;
  result[46] &= 7uLL;
  result[49] = v1;
  result[52] = v2;
  result[55] = v3;
  result[58] = v4;
  result[61] = v5;
  result[64] = v6;
  result[67] = v7;
  return result;
}

unint64_t sub_242D489E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3358;
  if (!qword_27ECF3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3358);
  }

  return result;
}

void *sub_242D48A38(void *result)
{
  v1 = result[49] & 7;
  v2 = result[52] & 7;
  v3 = result[55] & 7;
  v4 = result[58] & 7;
  v5 = result[61] & 7;
  v6 = result[64] & 7;
  v7 = result[67] & 0xF000000000000007 | 0x600000000000000;
  result[46] &= 7uLL;
  result[49] = v1;
  result[52] = v2;
  result[55] = v3;
  result[58] = v4;
  result[61] = v5;
  result[64] = v6;
  result[67] = v7;
  return result;
}

unint64_t sub_242D48AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3360;
  if (!qword_27ECF3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3360);
  }

  return result;
}

void *sub_242D48AF4(void *result)
{
  v1 = result[49] & 7;
  v2 = result[52] & 7;
  v3 = result[55] & 7;
  v4 = result[58] & 7;
  v5 = result[61] & 7;
  v6 = result[64] & 7;
  v7 = result[67] & 0xF000000000000007 | 0x400000000000000;
  result[46] &= 7uLL;
  result[49] = v1;
  result[52] = v2;
  result[55] = v3;
  result[58] = v4;
  result[61] = v5;
  result[64] = v6;
  result[67] = v7;
  return result;
}

unint64_t sub_242D48B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3368;
  if (!qword_27ECF3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3368);
  }

  return result;
}

void *sub_242D48BB0(void *result)
{
  v1 = result[49] & 7;
  v2 = result[52] & 7;
  v3 = result[55] & 7;
  v4 = result[58] & 7;
  v5 = result[61] & 7;
  v6 = result[64] & 7;
  v7 = result[67] & 0xF000000000000007 | 0x200000000000000;
  result[46] &= 7uLL;
  result[49] = v1;
  result[52] = v2;
  result[55] = v3;
  result[58] = v4;
  result[61] = v5;
  result[64] = v6;
  result[67] = v7;
  return result;
}

unint64_t sub_242D48C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3370;
  if (!qword_27ECF3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3370);
  }

  return result;
}

void *sub_242D48C6C(void *result)
{
  v1 = result[49] & 7;
  v2 = result[52] & 7;
  v3 = result[55] & 7;
  v4 = result[58] & 7;
  v5 = result[61] & 7;
  v6 = result[64] & 7;
  v7 = result[67] & 0xF000000000000007;
  result[46] &= 7uLL;
  result[49] = v1;
  result[52] = v2;
  result[55] = v3;
  result[58] = v4;
  result[61] = v5;
  result[64] = v6;
  result[67] = v7;
  return result;
}

unint64_t sub_242D48CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3388;
  if (!qword_27ECF3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3388);
  }

  return result;
}

unint64_t sub_242D48D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3390;
  if (!qword_27ECF3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3390);
  }

  return result;
}

unint64_t sub_242D48D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF33A0;
  if (!qword_27ECF33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF33A0);
  }

  return result;
}

unint64_t sub_242D48E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF33B0;
  if (!qword_27ECF33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF33B0);
  }

  return result;
}

unint64_t sub_242D48ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF33B8;
  if (!qword_27ECF33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF33B8);
  }

  return result;
}

unint64_t sub_242D48F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF33C8;
  if (!qword_27ECF33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF33C8);
  }

  return result;
}

unint64_t sub_242D48F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF33D8;
  if (!qword_27ECF33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF33D8);
  }

  return result;
}

unint64_t sub_242D48FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF33F0;
  if (!qword_27ECF33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF33F0);
  }

  return result;
}

uint64_t sub_242D49020(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF33F8, &qword_242F18108);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242D490A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3408;
  if (!qword_27ECF3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3408);
  }

  return result;
}

unint64_t sub_242D490F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3420;
  if (!qword_27ECF3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3420);
  }

  return result;
}

unint64_t sub_242D4914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3430;
  if (!qword_27ECF3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3430);
  }

  return result;
}

uint64_t sub_242D491A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF3438, &qword_242F18120);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242D49210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3460;
  if (!qword_27ECF3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3460);
  }

  return result;
}

unint64_t sub_242D493F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3488;
  if (!qword_27ECF3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3488);
  }

  return result;
}

unint64_t sub_242D4944C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3490;
  if (!qword_27ECF3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3490);
  }

  return result;
}

unint64_t sub_242D494A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3498;
  if (!qword_27ECF3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3498);
  }

  return result;
}

unint64_t sub_242D49500()
{
  result = qword_27ECF34A0;
  if (!qword_27ECF34A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF34A8, &qword_242F18370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34A0);
  }

  return result;
}

unint64_t sub_242D49568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34B0;
  if (!qword_27ECF34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34B0);
  }

  return result;
}

unint64_t sub_242D495C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34B8;
  if (!qword_27ECF34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34B8);
  }

  return result;
}

unint64_t sub_242D49618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34C0;
  if (!qword_27ECF34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34C0);
  }

  return result;
}

unint64_t sub_242D49670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34C8;
  if (!qword_27ECF34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34C8);
  }

  return result;
}

unint64_t sub_242D496C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34D0;
  if (!qword_27ECF34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34D0);
  }

  return result;
}

unint64_t sub_242D49720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34D8;
  if (!qword_27ECF34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34D8);
  }

  return result;
}

unint64_t sub_242D49778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34E0;
  if (!qword_27ECF34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI23ImageGroupConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI5ThemeO7ColorIDOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI17BlurConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10InstrumentV10GaugeStyleO(uint64_t a1)
{
  if (((*(a1 + 536) >> 57) & 7u) <= 5)
  {
    return (*(a1 + 536) >> 57) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_242D49888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 568))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 368) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_242D498D8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 568) = 1;
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
      result = 0.0;
      *(a1 + 336) = 0u;
      *(a1 + 352) = 0u;
      *(a1 + 304) = 0u;
      *(a1 + 320) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 368) = 8 * -a2;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      *(a1 + 472) = 0u;
      *(a1 + 488) = 0u;
      *(a1 + 504) = 0u;
      *(a1 + 520) = 0u;
      *(a1 + 536) = 0u;
      return result;
    }

    *(a1 + 568) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242D49A10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 552))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 368) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_242D49A60(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 552) = 1;
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
      result = 0.0;
      *(a1 + 336) = 0u;
      *(a1 + 352) = 0u;
      *(a1 + 304) = 0u;
      *(a1 + 320) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 368) = 8 * -a2;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      *(a1 + 472) = 0u;
      *(a1 + 488) = 0u;
      *(a1 + 504) = 0u;
      *(a1 + 520) = 0u;
      *(a1 + 536) = 0u;
      return result;
    }

    *(a1 + 552) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_242D49B84(void *a1, uint64_t a2)
{
  if (a2 < 6)
  {
    v3 = a1[49] & 7;
    v4 = a1[52] & 7;
    v5 = a1[55] & 7;
    v6 = a1[58] & 7;
    v7 = a1[61] & 7;
    v8 = a1[64] & 7;
    v9 = a1[67] & 0xF000000000000007 | (a2 << 57);
    a1[46] &= 7uLL;
    a1[49] = v3;
    a1[52] = v4;
    a1[55] = v5;
    a1[58] = v6;
    a1[61] = v7;
    a1[64] = v8;
    a1[67] = v9;
  }

  else
  {
    *a1 = (a2 - 6);
    bzero(a1 + 1, 0x210uLL);
    a1[67] = 0xC00000000000000;
    a1[68] = 0;
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_242D49C70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_242D49CB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_242D49D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242D49DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242D49E18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 344))
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

uint64_t sub_242D49E60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10GaugeStyleO21CircularConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10GaugeStyleO21CircularConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242D4A18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34E8;
  if (!qword_27ECF34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34E8);
  }

  return result;
}

unint64_t sub_242D4A1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34F0;
  if (!qword_27ECF34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34F0);
  }

  return result;
}

unint64_t sub_242D4A23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF34F8;
  if (!qword_27ECF34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF34F8);
  }

  return result;
}

unint64_t sub_242D4A294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3500;
  if (!qword_27ECF3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3500);
  }

  return result;
}

unint64_t sub_242D4A2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3508;
  if (!qword_27ECF3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3508);
  }

  return result;
}

unint64_t sub_242D4A344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3510;
  if (!qword_27ECF3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3510);
  }

  return result;
}

unint64_t sub_242D4A39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3518;
  if (!qword_27ECF3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3518);
  }

  return result;
}

unint64_t sub_242D4A3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3520;
  if (!qword_27ECF3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3520);
  }

  return result;
}

unint64_t sub_242D4A44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3528;
  if (!qword_27ECF3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3528);
  }

  return result;
}

unint64_t sub_242D4A4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3530;
  if (!qword_27ECF3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3530);
  }

  return result;
}

unint64_t sub_242D4A4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3538;
  if (!qword_27ECF3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3538);
  }

  return result;
}

unint64_t sub_242D4A554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3540;
  if (!qword_27ECF3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3540);
  }

  return result;
}

unint64_t sub_242D4A5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3548;
  if (!qword_27ECF3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3548);
  }

  return result;
}

unint64_t sub_242D4A604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3550;
  if (!qword_27ECF3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3550);
  }

  return result;
}

unint64_t sub_242D4A65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3558;
  if (!qword_27ECF3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3558);
  }

  return result;
}

unint64_t sub_242D4A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3560;
  if (!qword_27ECF3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3560);
  }

  return result;
}

unint64_t sub_242D4A70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3568;
  if (!qword_27ECF3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3568);
  }

  return result;
}

unint64_t sub_242D4A764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3570;
  if (!qword_27ECF3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3570);
  }

  return result;
}

unint64_t sub_242D4A7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3578;
  if (!qword_27ECF3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3578);
  }

  return result;
}

unint64_t sub_242D4A814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3580;
  if (!qword_27ECF3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3580);
  }

  return result;
}

unint64_t sub_242D4A86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3588;
  if (!qword_27ECF3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3588);
  }

  return result;
}

unint64_t sub_242D4A8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3590;
  if (!qword_27ECF3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3590);
  }

  return result;
}

unint64_t sub_242D4A91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3598;
  if (!qword_27ECF3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3598);
  }

  return result;
}

unint64_t sub_242D4A974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35A0;
  if (!qword_27ECF35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35A0);
  }

  return result;
}

unint64_t sub_242D4A9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35A8;
  if (!qword_27ECF35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35A8);
  }

  return result;
}

unint64_t sub_242D4AA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35B0;
  if (!qword_27ECF35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35B0);
  }

  return result;
}

unint64_t sub_242D4AA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35B8;
  if (!qword_27ECF35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35B8);
  }

  return result;
}

unint64_t sub_242D4AAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35C0;
  if (!qword_27ECF35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35C0);
  }

  return result;
}

unint64_t sub_242D4AB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35C8;
  if (!qword_27ECF35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35C8);
  }

  return result;
}

unint64_t sub_242D4AB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35D0;
  if (!qword_27ECF35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35D0);
  }

  return result;
}

unint64_t sub_242D4ABDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35D8;
  if (!qword_27ECF35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35D8);
  }

  return result;
}

unint64_t sub_242D4AC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35E0;
  if (!qword_27ECF35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35E0);
  }

  return result;
}

unint64_t sub_242D4AC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35E8;
  if (!qword_27ECF35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35E8);
  }

  return result;
}

unint64_t sub_242D4ACE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35F0;
  if (!qword_27ECF35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35F0);
  }

  return result;
}

unint64_t sub_242D4AD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF35F8;
  if (!qword_27ECF35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF35F8);
  }

  return result;
}

unint64_t sub_242D4AD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3600;
  if (!qword_27ECF3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3600);
  }

  return result;
}

unint64_t sub_242D4ADEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3608;
  if (!qword_27ECF3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3608);
  }

  return result;
}

unint64_t sub_242D4AE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3610;
  if (!qword_27ECF3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3610);
  }

  return result;
}

unint64_t sub_242D4AE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3618;
  if (!qword_27ECF3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3618);
  }

  return result;
}

unint64_t sub_242D4AEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3620;
  if (!qword_27ECF3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3620);
  }

  return result;
}

unint64_t sub_242D4AF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3628;
  if (!qword_27ECF3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3628);
  }

  return result;
}

unint64_t sub_242D4AFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3630;
  if (!qword_27ECF3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3630);
  }

  return result;
}

unint64_t sub_242D4AFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3638;
  if (!qword_27ECF3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3638);
  }

  return result;
}

unint64_t sub_242D4B054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3640;
  if (!qword_27ECF3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3640);
  }

  return result;
}

unint64_t sub_242D4B0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3648;
  if (!qword_27ECF3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3648);
  }

  return result;
}

unint64_t sub_242D4B104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3650;
  if (!qword_27ECF3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3650);
  }

  return result;
}

unint64_t sub_242D4B15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3658;
  if (!qword_27ECF3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3658);
  }

  return result;
}

uint64_t sub_242D4B1B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C737265646E6572 && a2 == 0xEE00796C6C61636FLL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F57AC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242D4B2D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562614C6E696DLL && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6562614C6E696DLL && a2 == 0xED0000726F6C6F43 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6562614C78616DLL && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6562614C78616DLL && a2 == 0xED0000726F6C6F43 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6C6F43746E6974 && a2 == 0xEA00000000007372 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5A720 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_242D4B5C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C7563726963 && a2 == 0xE800000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72476567616D69 && a2 == 0xEA00000000007075 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D656C4574786574 && a2 == 0xEB00000000746E65 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79614C6570616873 && a2 == 0xEA00000000007265 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5A700 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEB00000000726142)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_242D4B828(uint64_t a1, uint64_t a2)
{
  v2 = sub_242F05CD0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242D4B874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x8000000242F5A740 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59750 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A760 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_242D4B998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3660;
  if (!qword_27ECF3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3660);
  }

  return result;
}

uint64_t static Color.Backgrounds.== infix(_:_:)(void *a1, void *a2)
{
  if ((sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04710();
}

uint64_t sub_242D4BB6C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73736572676F7270;
    v6 = 0x72616C75646F6DLL;
    if (a1 != 2)
    {
      v6 = 0x756F72676B636162;
    }

    if (a1)
    {
      v5 = 0x646E614269676964;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1818588518;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0x74616D726F666E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 6513505;
    if (a1 != 4)
    {
      v3 = 0x656E696C646572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242D4BCA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D55140(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D4BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D5370C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D4BD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D5370C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Color.ColorValues.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3740, &qword_242F217C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v66 - v5;
  v7 = v1[3];
  v121 = v1[2];
  v122 = v7;
  v123 = *(v1 + 8);
  v8 = v1[1];
  v119 = *v1;
  v120 = v8;
  v9 = *(v1 + 88);
  v10 = *(v1 + 120);
  v126 = *(v1 + 104);
  v127 = v10;
  v11 = *(v1 + 18);
  v128 = *(v1 + 17);
  v124 = *(v1 + 72);
  v125 = v9;
  v12 = *(v1 + 20);
  v84 = *(v1 + 19);
  v85 = v11;
  v13 = *(v1 + 21);
  v14 = *(v1 + 22);
  v82 = v12;
  v83 = v13;
  v15 = *(v1 + 23);
  v16 = *(v1 + 24);
  *&v78 = v14;
  *(&v78 + 1) = v15;
  v17 = *(v1 + 25);
  v18 = *(v1 + 26);
  *&v79 = v16;
  *(&v79 + 1) = v17;
  v20 = *(v1 + 27);
  v19 = *(v1 + 28);
  *&v80 = v18;
  *(&v80 + 1) = v20;
  v81 = v19;
  v21 = *(v1 + 29);
  v23 = *(v1 + 31);
  v22 = *(v1 + 32);
  *&v73 = *(v1 + 30);
  *(&v73 + 1) = v23;
  *&v74 = v22;
  v24 = *(v1 + 34);
  *(&v74 + 1) = *(v1 + 33);
  *&v75 = v24;
  v25 = *(v1 + 36);
  *(&v75 + 1) = *(v1 + 35);
  v76 = v25;
  v77 = v21;
  v26 = *(v1 + 312);
  v129 = *(v1 + 296);
  v130 = v26;
  v27 = *(v1 + 344);
  v131 = *(v1 + 328);
  v132 = v27;
  v28 = *(v1 + 46);
  v66 = *(v1 + 45);
  v67 = v28;
  v29 = *(v1 + 48);
  v68 = *(v1 + 47);
  v69 = v29;
  v30 = *(v1 + 49);
  v70 = *(v1 + 50);
  v71 = *(v1 + 51);
  v72 = v30;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v31 = sub_242C8D144(&v119, &v114);
  sub_242D5370C(v31, v32, v33);
  v34 = sub_242F064C0();
  v116 = v121;
  v117 = v122;
  v118 = v123;
  v114 = v119;
  v115 = v120;
  v113 = 0;
  sub_242D53760(v34, v35, v36);
  v37 = v133;
  sub_242F05F20();
  if (v37)
  {
    v110 = v116;
    v111 = v117;
    v112 = v118;
    v108 = v114;
    v109 = v115;
    sub_242C8D24C(&v108);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v40 = v84;
    v39 = v85;
    v133 = v4;
    v110 = v116;
    v111 = v117;
    v112 = v118;
    v108 = v114;
    v109 = v115;
    sub_242C8D24C(&v108);
    v105 = v126;
    v106 = v127;
    v107 = v128;
    v103 = v124;
    v104 = v125;
    v102 = 1;
    v41 = sub_242C8CBA8(&v124, v100);
    sub_242D537B4(v41, v42, v43);
    sub_242F05F20();
    v100[2] = v105;
    v100[3] = v106;
    v101 = v107;
    v100[0] = v103;
    v100[1] = v104;
    v44 = sub_242C8CCB0(v100);
    *&v96 = v39;
    LOBYTE(v94[0]) = 2;
    sub_242D53808(v44, v45, v46);

    sub_242F05F20();

    *&v96 = v40;
    *(&v96 + 1) = v82;
    *&v97 = v83;
    LOBYTE(v94[0]) = 3;
    sub_242D5385C(v47, v48, v49);

    sub_242F05F20();

    v96 = v78;
    v97 = v79;
    v98 = v80;
    *&v99 = v81;
    LOBYTE(v94[0]) = 4;
    sub_242D538B0(v50, v51, v52);

    v85 = v3;
    sub_242F05F20();
    v84 = *(&v96 + 1);

    *&v96 = v77;
    LOBYTE(v94[0]) = 5;
    sub_242D53904(v53, v54, v55);

    v84 = v6;
    sub_242F05F20();

    v96 = v73;
    v97 = v74;
    v98 = v75;
    *&v99 = v76;
    LOBYTE(v94[0]) = 6;
    sub_242D53958(v56, v57, v58);

    sub_242F05F20();
    v83 = v97;

    v96 = v129;
    v97 = v130;
    v98 = v131;
    v99 = v132;
    v95 = 7;
    v59 = sub_242C8E7B0(&v129, v94);
    sub_242D539AC(v59, v60, v61);
    sub_242F05F20();
    v94[0] = v96;
    v94[1] = v97;
    v94[2] = v98;
    v94[3] = v99;
    v62 = sub_242D53A00(v94);
    v87 = v66;
    v88 = v67;
    v89 = v68;
    v90 = v69;
    v91 = v72;
    v92 = v70;
    v93 = v71;
    v86 = 8;
    sub_242D53A30(v62, v63, v64);

    v65 = v84;
    sub_242F05F20();

    return (*(v133 + 8))(v65, v85);
  }
}

uint64_t Color.ColorValues.hash(into:)(uint64_t a1)
{
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();

  return sub_242F04720();
}

uint64_t Color.ColorValues.hashValue.getter()
{
  sub_242F06390();
  Color.ColorValues.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Color.ColorValues.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3798, &qword_242F217C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = a1[3];
  v143 = a1;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242D5370C(v10, v11, v12);
  v13 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v143);
  }

  v72 = a2;
  v128 = 0;
  sub_242D53A84(v13, v14, v15);
  v16 = sub_242F05E00();
  v140 = v131;
  v141 = v132;
  *v142 = v133;
  v138 = v129;
  v139 = v130;
  v122 = 1;
  sub_242D53AD8(v16, v17, v18);
  v19 = sub_242F05E00();
  *&v142[24] = v124;
  *&v142[40] = v125;
  *&v142[56] = v126;
  *&v142[72] = v127;
  *&v142[8] = v123;
  LOBYTE(v73[0]) = 2;
  sub_242D53B2C(v19, v20, v21);
  v22 = sub_242F05E00();
  *&v71 = v74;
  LOBYTE(v73[0]) = 3;
  sub_242D53B80(v22, v23, v24);
  v25 = sub_242F05E00();
  v56 = *(&v74 + 1);
  *(&v71 + 1) = v74;
  v26 = v75;
  LOBYTE(v73[0]) = 4;
  sub_242D53BD4(v25, v27, v28);
  v29 = sub_242F05E00();
  v55 = v74;
  v65 = v75;
  v66 = *(&v74 + 1);
  v69 = v76;
  v70 = *(&v75 + 1);
  v67 = v77;
  v68 = *(&v76 + 1);
  LOBYTE(v73[0]) = 5;
  sub_242D53C28(v29, v30, v31);
  v32 = sub_242F05E00();
  v64 = v74;
  LOBYTE(v73[0]) = 6;
  sub_242D53C7C(v32, v33, v34);
  v35 = sub_242F05E00();
  v62 = *(&v74 + 1);
  v63 = v74;
  v60 = *(&v75 + 1);
  v61 = v75;
  v58 = *(&v76 + 1);
  v59 = v76;
  v57 = v77;
  v117 = 7;
  sub_242D53CD0(v35, v36, v37);
  v38 = sub_242F05E00();
  v134 = v118;
  v135 = v119;
  v136 = v120;
  v137 = v121;
  v112 = 8;
  sub_242D53D24(v38, v39, v40);
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v53 = *(&v114 + 1);
  v41 = v114;
  v54 = v113;
  v51 = *(&v115 + 1);
  v52 = v115;
  v49 = *(&v116 + 1);
  v50 = v116;
  v73[6] = *&v142[32];
  v73[7] = *&v142[48];
  v73[8] = *&v142[64];
  v73[2] = v140;
  v73[3] = v141;
  v73[4] = *v142;
  v73[5] = *&v142[16];
  v73[0] = v138;
  v73[1] = v139;
  v42 = v71;
  v73[9] = v71;
  v43 = v55;
  *&v73[10] = v56;
  *(&v73[10] + 1) = v26;
  v44 = v65;
  v45 = v66;
  *&v73[11] = v55;
  *(&v73[11] + 1) = v66;
  *&v73[12] = v65;
  *(&v73[12] + 1) = v70;
  *&v73[13] = v69;
  *(&v73[13] + 1) = v68;
  *&v73[14] = v67;
  *(&v73[14] + 1) = v64;
  *&v73[15] = v63;
  *(&v73[15] + 1) = v62;
  *&v73[16] = v61;
  *(&v73[16] + 1) = v60;
  *&v73[17] = v59;
  v46 = v57;
  *(&v73[17] + 1) = v58;
  *&v73[18] = v57;
  *(&v73[20] + 8) = v136;
  *(&v73[21] + 8) = v137;
  *(&v73[18] + 8) = v134;
  *(&v73[19] + 8) = v135;
  *(&v73[22] + 1) = v113;
  v73[23] = v114;
  v73[24] = v115;
  v73[25] = v116;
  memcpy(v72, v73, 0x1A0uLL);
  sub_242C8DFF4(v73, &v74);
  __swift_destroy_boxed_opaque_existential_2Tm(v143);
  v80 = *&v142[32];
  v81 = *&v142[48];
  v82 = *&v142[64];
  v76 = v140;
  v77 = v141;
  v78 = *v142;
  v79 = *&v142[16];
  v74 = v138;
  v75 = v139;
  v83 = __PAIR128__(*(&v71 + 1), v42);
  v84 = v56;
  v85 = v26;
  v86 = v43;
  v87 = v45;
  v88 = v44;
  v89 = v70;
  v90 = v69;
  v91 = v68;
  v92 = v67;
  v93 = v64;
  v94 = v63;
  v95 = v62;
  v96 = v61;
  v97 = v60;
  v98 = v59;
  v99 = v58;
  v103 = v136;
  v104 = v137;
  v101 = v134;
  v102 = v135;
  v100 = v46;
  v105 = v54;
  v106 = v41;
  v107 = v53;
  v108 = v52;
  v109 = v51;
  v110 = v50;
  v111 = v49;
  return sub_242D53D78(&v74);
}

unint64_t sub_242D4D2E8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v3 = 0x544C657669746361;
    v4 = 0x754E657669746361;
    if (a1 != 2)
    {
      v4 = 0x6576697463616E69;
    }

    if (a1)
    {
      v3 = 0x544D657669746361;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    if (a1 != 7)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 5u)
    {
      return 0x6576697463616E69;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242D4D478()
{
  sub_242F06390();
  Color.ColorValues.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242D4D4BC(uint64_t a1)
{
  sub_242F06390();
  Color.ColorValues.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t sub_242D4D504@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D5543C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D4D52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53DA8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D4D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53DA8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Color.Ticks.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF37F8, &qword_242F217D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D53DA8(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v15 = a2;
  LOBYTE(v33) = 0;
  sub_242C7C540(v12, v13, v14);
  sub_242F05E00();
  v32 = v38[0];
  LOBYTE(v33) = 1;
  sub_242F05E00();
  v30 = v38[0];
  LOBYTE(v33) = 2;
  sub_242F05E00();
  v29 = v38[0];
  LOBYTE(v33) = 3;
  sub_242F05E00();
  v31 = v38[0];
  LOBYTE(v33) = 4;
  sub_242F05E00();
  v16 = v38[0];
  LOBYTE(v33) = 5;
  sub_242F05E00();
  v28 = v38[0];
  LOBYTE(v33) = 6;
  v27 = 0;
  sub_242F05E00();
  v26 = v38[0];
  LOBYTE(v33) = 7;
  sub_242F05E00();
  v25 = v38[0];
  v39 = 8;
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v17 = v40;
  v18 = v31;
  v19 = v32;
  v20 = v30;
  *&v33 = v32;
  *(&v33 + 1) = v30;
  v21 = v29;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v16;
  *(&v35 + 1) = v28;
  *&v36 = v26;
  *(&v36 + 1) = v25;
  v37 = v40;
  *(v15 + 64) = v40;
  v22 = v36;
  *(v15 + 32) = v35;
  *(v15 + 48) = v22;
  v23 = v34;
  *v15 = v33;
  *(v15 + 16) = v23;
  sub_242C8CBA8(&v33, v38);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v38[0] = v19;
  v38[1] = v20;
  v38[2] = v21;
  v38[3] = v18;
  v38[4] = v16;
  v38[5] = v28;
  v38[6] = v26;
  v38[7] = v25;
  v38[8] = v17;
  return sub_242C8CCB0(v38);
}

uint64_t sub_242D4DC5C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000015;
    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    v6 = 0xD000000000000012;
    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x706D65546C657566;
    v2 = 0x656E696C646572;
    v3 = 0x74656D7265776F70;
    if (a1 == 7)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_242D4DDD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D55730(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D4DE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53DFC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D4DE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53DFC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D4DEBC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = *v5;
  v10 = v5[1];
  v12 = v5[3];
  v32 = v5[2];
  v33 = v10;
  v31 = v12;
  v13 = v5[4];
  v29 = v5[5];
  v30 = v13;
  v14 = v5[6];
  v27 = v5[7];
  v28 = v14;
  v26 = v5[8];
  v15 = a1[3];
  v16 = a1;
  v18 = &v26 - v17;
  __swift_project_boxed_opaque_existential_2Tm(v16, v15);
  a4();

  v19 = sub_242F064C0();
  v36 = v11;
  v35 = 0;
  sub_242C7C594(v19, v20, v21);
  v22 = v34;
  sub_242F05F20();
  if (v22)
  {
  }

  else
  {
    v24 = v31;
    v23 = v32;

    v36 = v33;
    v35 = 1;
    sub_242F05F20();
    v36 = v23;
    v35 = 2;
    sub_242F05F20();
    v36 = v24;
    v35 = 3;
    sub_242F05F20();
    v36 = v30;
    v35 = 4;
    sub_242F05F20();
    v36 = v29;
    v35 = 5;
    sub_242F05F20();
    v36 = v28;
    v35 = 6;
    sub_242F05F20();
    v36 = v27;
    v35 = 7;
    sub_242F05F20();
    v36 = v26;
    v35 = 8;
    sub_242F05F20();
  }

  return (*(v9 + 8))(v18, v8);
}

uint64_t sub_242D4E240(uint64_t a1)
{
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();

  return sub_242F04720();
}

uint64_t sub_242D4E308()
{
  sub_242F06390();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t Color.ProgressBars.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3810, &qword_242F217E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D53DFC(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v15 = a2;
  LOBYTE(v33) = 0;
  sub_242C7C540(v12, v13, v14);
  sub_242F05E00();
  v32 = v38[0];
  LOBYTE(v33) = 1;
  sub_242F05E00();
  v30 = v38[0];
  LOBYTE(v33) = 2;
  sub_242F05E00();
  v29 = v38[0];
  LOBYTE(v33) = 3;
  sub_242F05E00();
  v31 = v38[0];
  LOBYTE(v33) = 4;
  sub_242F05E00();
  v16 = v38[0];
  LOBYTE(v33) = 5;
  sub_242F05E00();
  v28 = v38[0];
  LOBYTE(v33) = 6;
  v27 = 0;
  sub_242F05E00();
  v26 = v38[0];
  LOBYTE(v33) = 7;
  sub_242F05E00();
  v25 = v38[0];
  v39 = 8;
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v17 = v40;
  v18 = v31;
  v19 = v32;
  v20 = v30;
  *&v33 = v32;
  *(&v33 + 1) = v30;
  v21 = v29;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v16;
  *(&v35 + 1) = v28;
  *&v36 = v26;
  *(&v36 + 1) = v25;
  v37 = v40;
  *(v15 + 64) = v40;
  v22 = v36;
  *(v15 + 32) = v35;
  *(v15 + 48) = v22;
  v23 = v34;
  *v15 = v33;
  *(v15 + 16) = v23;
  sub_242C8D144(&v33, v38);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v38[0] = v19;
  v38[1] = v20;
  v38[2] = v21;
  v38[3] = v18;
  v38[4] = v16;
  v38[5] = v28;
  v38[6] = v26;
  v38[7] = v25;
  v38[8] = v17;
  return sub_242C8D24C(v38);
}

uint64_t sub_242D4EA84(uint64_t a1)
{
  sub_242F06390();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

void sub_242D4EB74(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000242F5A880 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_242D4EC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53E50(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D4EC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53E50(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D4ED44()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0x7265626D756ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x7254657669746361;
    }
  }

  else
  {
    v2 = 0x6D694C6465657073;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0x6176697463616564;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_242D4EE4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D55A28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D4EE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53EA4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D4EEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53EA4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D4EFA4()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  qword_27ECF3670 = v7;
  *algn_27ECF3678 = v8;
  qword_27ECF3680 = result;
  return result;
}

uint64_t static Color.Backgrounds.common.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF0B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_27ECF3678;
  v2 = qword_27ECF3680;
  *a1 = qword_27ECF3670;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_242D4F1B0()
{
  v1 = 0x756C426B63617274;
  if (*v0 != 1)
  {
    v1 = 0x5074786554636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E695269676964;
  }
}

uint64_t sub_242D4F228@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D55C8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D4F250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53EF8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D4F28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53EF8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Color.Backgrounds.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3848, &qword_242F21810);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v19 = v1[2];
  v20 = v8;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D53EF8(v10, v11, v12);

  v13 = sub_242F064C0();
  v22 = v9;
  v21 = 0;
  sub_242C7C594(v13, v14, v15);
  sub_242F05F20();

  if (!v2)
  {
    v16 = v19;
    v22 = v20;
    v21 = 1;
    sub_242F05F20();
    v22 = v16;
    v21 = 2;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Color.Backgrounds.hash(into:)(uint64_t a1)
{
  sub_242F04720();
  sub_242F04720();

  return sub_242F04720();
}

uint64_t Color.Backgrounds.hashValue.getter()
{
  sub_242F06390();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t Color.Backgrounds.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3858, &qword_242F21818);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D53EF8(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v21 = 0;
  sub_242C7C540(v12, v13, v14);
  sub_242F05E00();
  v20 = v22;
  v21 = 1;
  sub_242F05E00();
  v19 = v22;
  v21 = 2;
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v15 = v22;
  v16 = v19;
  *a2 = v20;
  a2[1] = v16;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D4F840()
{
  sub_242F06390();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t sub_242D4F8AC(uint64_t a1)
{
  sub_242F04720();
  sub_242F04720();

  return sub_242F04720();
}

uint64_t sub_242D4F904(uint64_t a1)
{
  sub_242F06390();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t sub_242D4F96C(void *a1, void *a2)
{
  if ((sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04710();
}

uint64_t sub_242D4F9EC()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECF3688 = result;
  return result;
}

uint64_t static Color.Redline.common.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF0B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27ECF3688;
}

void sub_242D4FB50(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000242F5A900 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_242D4FBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53F4C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D4FC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53F4C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D4FCA0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v16[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  v11 = *v5;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  (v16[0])();

  v12 = sub_242F064C0();
  v16[3] = v11;
  sub_242C7C594(v12, v13, v14);
  sub_242F05F20();

  return (*(v8 + 8))(v10, v7);
}

uint64_t _s7SwiftUI5ColorV012CarPlayAssetB0E7ModularV9hashValueSivg_0()
{
  sub_242F06390();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t sub_242D4FE90@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v17 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  a4();
  v12 = sub_242F06480();
  if (!v6)
  {
    v15 = v17;
    sub_242C7C540(v12, v13, v14);
    sub_242F05E00();
    (*(v18 + 8))(v11, v9);
    *v15 = v19;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D50038(uint64_t a1)
{
  sub_242F06390();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t sub_242D5007C()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  qword_27ECF3690 = v14;
  *algn_27ECF3698 = v7;
  qword_27ECF36A0 = v8;
  unk_27ECF36A8 = v9;
  qword_27ECF36B0 = v10;
  unk_27ECF36B8 = v11;
  qword_27ECF36C0 = result;
  return result;
}

uint64_t static Color.Fuel.common.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF0C0 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_27ECF3698;
  v2 = qword_27ECF36A0;
  v3 = unk_27ECF36A8;
  v4 = qword_27ECF36B0;
  v5 = unk_27ECF36B8;
  v6 = qword_27ECF36C0;
  *a1 = qword_27ECF3690;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_242D503D4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x546C657546776F6CLL;
    if (v1 != 1)
    {
      v4 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x4D6C657546776F6CLL;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 == 5)
    {
      v2 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_242D504E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D55DBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D50508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53FA0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D50544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53FA0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D50638()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v13 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF36C8 = v14;
  *(&xmmword_27ECF36C8 + 1) = v13;
  qword_27ECF36D8 = v7;
  unk_27ECF36E0 = v8;
  *&xmmword_27ECF36E8 = v9;
  *(&xmmword_27ECF36E8 + 1) = v10;
  qword_27ECF36F8 = v11;
  unk_27ECF3700 = result;
  return result;
}

uint64_t static Color.EngineTemperature.common.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27ECEF0C8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_27ECF36D8;
  v7[0] = xmmword_27ECF36C8;
  v7[1] = *&qword_27ECF36D8;
  v2 = xmmword_27ECF36E8;
  v3 = *&qword_27ECF36F8;
  v7[2] = xmmword_27ECF36E8;
  v7[3] = *&qword_27ECF36F8;
  *a1 = xmmword_27ECF36C8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_242C8E7B0(v7, &v6);
}

uint64_t sub_242D5097C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0xD000000000000014;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x706D6554646C6F63;
    v3 = 0x54706D6554746F68;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 0x4D706D6554746F68;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_242D50AB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D56018(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D50ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53FF4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D50B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D53FF4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Color.EngineTemperature.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3890, &qword_242F21840);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v28 = v1[2];
  v29 = v8;
  v11 = v1[5];
  v26 = v1[4];
  v27 = v10;
  v12 = v1[7];
  v24 = v1[6];
  v25 = v11;
  v23 = v12;
  v13 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D53FF4(v13, v14, v15);

  v16 = v4;
  v17 = sub_242F064C0();
  v31 = v9;
  v30 = 0;
  sub_242C7C594(v17, v18, v19);
  sub_242F05F20();
  if (v2)
  {
  }

  else
  {
    v20 = v27;
    v21 = v28;

    v31 = v29;
    v30 = 1;
    sub_242F05F20();
    v31 = v21;
    v30 = 2;
    sub_242F05F20();
    v31 = v20;
    v30 = 3;
    sub_242F05F20();
    v31 = v26;
    v30 = 4;
    sub_242F05F20();
    v31 = v25;
    v30 = 5;
    sub_242F05F20();
    v31 = v24;
    v30 = 6;
    sub_242F05F20();
    v31 = v23;
    v30 = 7;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v16);
}

uint64_t Color.EngineTemperature.hash(into:)(uint64_t a1)
{
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();

  return sub_242F04720();
}

uint64_t Color.EngineTemperature.hashValue.getter()
{
  sub_242F06390();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t Color.EngineTemperature.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF38A0, &qword_242F21848);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D53FF4(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v15 = a2;
  LOBYTE(v33) = 0;
  sub_242C7C540(v12, v13, v14);
  sub_242F05E00();
  v32 = v37[0];
  LOBYTE(v33) = 1;
  sub_242F05E00();
  v31 = v37[0];
  LOBYTE(v33) = 2;
  sub_242F05E00();
  v30 = v37[0];
  LOBYTE(v33) = 3;
  sub_242F05E00();
  v29 = v37[0];
  LOBYTE(v33) = 4;
  sub_242F05E00();
  v28 = v37[0];
  LOBYTE(v33) = 5;
  v27 = 0;
  sub_242F05E00();
  v26 = v37[0];
  LOBYTE(v33) = 6;
  sub_242F05E00();
  v25 = v37[0];
  v38 = 7;
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v27 = v39;
  v16 = v31;
  v17 = v32;
  *&v33 = v32;
  *(&v33 + 1) = v31;
  v19 = v29;
  v18 = v30;
  *&v34 = v30;
  *(&v34 + 1) = v29;
  v20 = v28;
  v21 = v26;
  *&v35 = v28;
  *(&v35 + 1) = v26;
  *&v36 = v25;
  *(&v36 + 1) = v39;
  v22 = v34;
  *v15 = v33;
  v15[1] = v22;
  v23 = v36;
  v15[2] = v35;
  v15[3] = v23;
  sub_242C8E7B0(&v33, v37);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v37[0] = v17;
  v37[1] = v16;
  v37[2] = v18;
  v37[3] = v19;
  v37[4] = v20;
  v37[5] = v21;
  v37[6] = v25;
  v37[7] = v27;
  return sub_242D53A00(v37);
}

uint64_t sub_242D515FC(uint64_t a1)
{
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();

  return sub_242F04720();
}

uint64_t sub_242D516A8(uint64_t a1)
{
  sub_242F06390();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t sub_242D51768()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF3708 = v14;
  *(&xmmword_27ECF3708 + 1) = v7;
  qword_27ECF3718 = v8;
  unk_27ECF3720 = v9;
  *&xmmword_27ECF3728 = v10;
  *(&xmmword_27ECF3728 + 1) = v11;
  qword_27ECF3738 = result;
  return result;
}

uint64_t static Color.Information.common.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF3708 + 1);
  v3 = qword_27ECF3718;
  v4 = unk_27ECF3720;
  v5 = xmmword_27ECF3728;
  v6 = qword_27ECF3738;
  *a1 = xmmword_27ECF3708;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.Information.common.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF3708 = v5;
  *&qword_27ECF3718 = v4;
  xmmword_27ECF3728 = v3;
  qword_27ECF3738 = v1;
}

uint64_t (*static Color.Information.common.modify(uint64_t a1))()
{
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242D51C40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF3708 + 1);
  v3 = qword_27ECF3718;
  v4 = unk_27ECF3720;
  v5 = xmmword_27ECF3728;
  v6 = qword_27ECF3738;
  *a1 = xmmword_27ECF3708;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t sub_242D51D20(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = qword_27ECEF0D0;
  v9 = *a1;

  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_27ECF3708 = v9;
  *(&xmmword_27ECF3708 + 1) = v1;
  qword_27ECF3718 = v2;
  unk_27ECF3720 = v3;
  *&xmmword_27ECF3728 = v4;
  *(&xmmword_27ECF3728 + 1) = v5;
  qword_27ECF3738 = v6;
}

uint64_t sub_242D51E64()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x4E5250656772616CLL;
    if (v1 != 1)
    {
      v5 = 0x646F4D6576697264;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 == 5)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v1 != 3)
    {
      v2 = 0xD000000000000015;
    }

    if (*v0 <= 4u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_242D51F60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D562C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D51F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D54048(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D51FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D54048(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D52044(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v12 = *v5;
  v11 = v5[1];
  v13 = v5[3];
  v27 = v5[2];
  v28 = v11;
  v14 = v5[5];
  v25 = v5[4];
  v26 = v13;
  v23 = v5[6];
  v24 = v14;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v29();

  v15 = sub_242F064C0();
  v32 = v12;
  v31 = 0;
  sub_242C7C594(v15, v16, v17);
  v18 = v30;
  sub_242F05F20();
  if (v18)
  {
  }

  else
  {
    v20 = v26;
    v19 = v27;

    v32 = v28;
    v31 = 1;
    sub_242F05F20();
    v32 = v19;
    v31 = 2;
    sub_242F05F20();
    v32 = v20;
    v31 = 3;
    sub_242F05F20();
    v32 = v25;
    v31 = 4;
    sub_242F05F20();
    v32 = v24;
    v31 = 5;
    sub_242F05F20();
    v32 = v23;
    v31 = 6;
    sub_242F05F20();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_242D52344(uint64_t a1)
{
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();

  return sub_242F04720();
}

uint64_t sub_242D523E8()
{
  sub_242F06390();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t sub_242D524E0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v12 = &v24 - v11;
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  a4();
  v14 = sub_242F06480();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v30);
  }

  v17 = v10;
  v31 = 0;
  sub_242C7C540(v14, v15, v16);
  sub_242F05E00();
  v18 = v32;
  v31 = 1;
  sub_242F05E00();
  v19 = v32;
  v31 = 2;
  sub_242F05E00();
  v28 = v32;
  v31 = 3;
  sub_242F05E00();
  v27 = v32;
  v31 = 4;
  sub_242F05E00();
  v26 = v32;
  v31 = 5;
  sub_242F05E00();
  v25 = v32;
  v31 = 6;
  sub_242F05E00();
  (*(v17 + 8))(v12, v29);
  v21 = v32;
  *a6 = v18;
  a6[1] = v19;
  v22 = v27;
  a6[2] = v28;
  a6[3] = v22;
  v23 = v25;
  a6[4] = v26;
  a6[5] = v23;
  a6[6] = v21;

  __swift_destroy_boxed_opaque_existential_2Tm(v30);
}

uint64_t sub_242D52A00(uint64_t a1)
{
  sub_242F06390();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t sub_242D52AB0(void *a1, void *a2)
{
  if ((sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04710();
}

uint64_t _s7SwiftUI5ColorV012CarPlayAssetB0E17EngineTemperatureV2eeoiySbAF_AFtFZ_0(void *a1, void *a2)
{
  if ((sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04710();
}

uint64_t sub_242D52CF8(void *a1, void *a2)
{
  if ((sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04710();
}

uint64_t _s7SwiftUI5ColorV012CarPlayAssetB0E0C6ValuesV2eeoiySbAF_AFtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v87 = *(a1 + 32);
  v88 = v3;
  v4 = *(a1 + 16);
  v86[0] = *a1;
  v86[1] = v4;
  v5 = *(a1 + 88);
  v6 = *(a1 + 120);
  v92 = *(a1 + 104);
  v93 = v6;
  v90 = *(a1 + 72);
  v91 = v5;
  v7 = *(a1 + 312);
  v95 = *(a1 + 296);
  v96 = v7;
  v8 = *(a1 + 344);
  v97 = *(a1 + 328);
  v98 = v8;
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v99[3] = a2[3];
  v99[2] = v11;
  v13 = a2[1];
  v12 = a2[2];
  v14 = *a2;
  v99[0] = v10;
  v99[1] = v13;
  v15 = *(a2 + 88);
  v16 = *(a2 + 120);
  v103 = *(a2 + 104);
  v104 = v16;
  v17 = *(a2 + 72);
  v102 = v15;
  v101 = v17;
  v18 = *(a2 + 312);
  v106 = *(a2 + 296);
  v107 = v18;
  v19 = *(a2 + 344);
  v108 = *(a2 + 328);
  v109 = v19;
  v20 = *(a1 + 48);
  v83 = v87;
  v84 = v20;
  v89 = *(a1 + 64);
  v94 = *(a1 + 136);
  v51 = *(a1 + 176);
  v54 = *(a1 + 200);
  v55 = *(a1 + 208);
  v52 = *(a1 + 192);
  v53 = *(a1 + 224);
  v43 = *(a1 + 240);
  v44 = *(a1 + 256);
  v45 = *(a1 + 272);
  v46 = *(a1 + 288);
  v35 = *(a1 + 360);
  v36 = *(a1 + 376);
  v37 = *(a1 + 392);
  v38 = *(a1 + 408);
  v100 = *(a2 + 8);
  v105 = *(a2 + 17);
  v85 = *(a1 + 64);
  v81 = v86[0];
  v82 = v2;
  v21 = a2[3];
  v80 = *(a2 + 8);
  v49 = a2[11];
  v50 = *(a2 + 24);
  *v56 = *(a2 + 200);
  v22 = *(a2 + 28);
  *&v56[16] = *(a2 + 27);
  v41 = a2[15];
  v42 = a2[16];
  v47 = a2[17];
  v48 = *(a2 + 36);
  v33 = *(a2 + 360);
  v34 = *(a2 + 376);
  v39 = *(a2 + 392);
  v40 = *(a2 + 51);
  v78 = v12;
  v79 = v21;
  v76 = v14;
  v77 = v9;
  sub_242C8D144(v86, v112);
  sub_242C8D144(v99, v112);
  v23 = sub_242D52AB0(&v81, &v76);
  v110[2] = v78;
  v110[3] = v79;
  v111 = v80;
  v110[0] = v76;
  v110[1] = v77;
  sub_242C8D24C(v110);
  v112[2] = v83;
  v112[3] = v84;
  v113 = v85;
  v112[0] = v81;
  v112[1] = v82;
  sub_242C8D24C(v112);
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

  v73 = v92;
  v74 = v93;
  v75 = v94;
  v71 = v90;
  v72 = v91;
  v68 = v103;
  v69 = v104;
  v70 = v105;
  v66 = v101;
  v67 = v102;
  sub_242C8CBA8(&v90, &v62);
  sub_242C8CBA8(&v101, &v62);
  v24 = sub_242D52AB0(&v71, &v66);
  v78 = v68;
  v79 = v69;
  v80 = v70;
  v76 = v66;
  v77 = v67;
  sub_242C8CCB0(&v76);
  v83 = v73;
  v84 = v74;
  v85 = v75;
  v81 = v71;
  v82 = v72;
  sub_242C8CCB0(&v81);
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = sub_242F04710();

  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((sub_242F04710() & 1) == 0 || (sub_242F04710() & 1) == 0)
  {

LABEL_13:
    v31 = 0;
    return v31 & 1;
  }

  v26 = sub_242F04710();

  if ((v26 & 1) == 0)
  {
    goto LABEL_13;
  }

  v71 = v51;
  *&v72 = v52;
  *(&v72 + 1) = v54;
  v73 = v55;
  *&v74 = v53;
  v66 = v49;
  *&v67 = v50;
  *(&v67 + 1) = *v56;
  v68 = *&v56[8];
  *&v69 = v22;

  v27 = sub_242D52CF8(&v71, &v66);

  if ((v27 & 1) == 0)
  {
    goto LABEL_13;
  }

  v28 = sub_242F04710();

  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

  v71 = v43;
  v72 = v44;
  v73 = v45;
  *&v74 = v46;
  v66 = v41;
  v67 = v42;
  v68 = v47;
  *&v69 = v48;

  v29 = sub_242D52CF8(&v71, &v66);

  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

  v62 = v95;
  v63 = v96;
  v64 = v97;
  v65 = v98;
  v58 = v106;
  v59 = v107;
  v60 = v108;
  v61 = v109;
  sub_242C8E7B0(&v95, v57);
  sub_242C8E7B0(&v106, v57);
  v30 = _s7SwiftUI5ColorV012CarPlayAssetB0E17EngineTemperatureV2eeoiySbAF_AFtFZ_0(&v62, &v58);
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v69 = v61;
  sub_242D53A00(&v66);
  v71 = v62;
  v72 = v63;
  v73 = v64;
  v74 = v65;
  sub_242D53A00(&v71);
  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

  v62 = v35;
  v63 = v36;
  v64 = v37;
  *&v65 = v38;
  v58 = v33;
  v59 = v34;
  v60 = v39;
  *&v61 = v40;

  v31 = sub_242D52CF8(&v62, &v58);

  return v31 & 1;
}

unint64_t sub_242D5370C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3748;
  if (!qword_27ECF3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3748);
  }

  return result;
}

unint64_t sub_242D53760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3750;
  if (!qword_27ECF3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3750);
  }

  return result;
}

unint64_t sub_242D537B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3758;
  if (!qword_27ECF3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3758);
  }

  return result;
}

unint64_t sub_242D53808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3760;
  if (!qword_27ECF3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3760);
  }

  return result;
}

unint64_t sub_242D5385C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3768;
  if (!qword_27ECF3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3768);
  }

  return result;
}

unint64_t sub_242D538B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3770;
  if (!qword_27ECF3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3770);
  }

  return result;
}

unint64_t sub_242D53904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3778;
  if (!qword_27ECF3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3778);
  }

  return result;
}

unint64_t sub_242D53958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3780;
  if (!qword_27ECF3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3780);
  }

  return result;
}

unint64_t sub_242D539AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3788;
  if (!qword_27ECF3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3788);
  }

  return result;
}

unint64_t sub_242D53A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3790;
  if (!qword_27ECF3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3790);
  }

  return result;
}

unint64_t sub_242D53A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37A0;
  if (!qword_27ECF37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37A0);
  }

  return result;
}

unint64_t sub_242D53AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37A8;
  if (!qword_27ECF37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37A8);
  }

  return result;
}

unint64_t sub_242D53B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37B0;
  if (!qword_27ECF37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37B0);
  }

  return result;
}

unint64_t sub_242D53B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37B8;
  if (!qword_27ECF37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37B8);
  }

  return result;
}

unint64_t sub_242D53BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37C0;
  if (!qword_27ECF37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37C0);
  }

  return result;
}

unint64_t sub_242D53C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37C8;
  if (!qword_27ECF37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37C8);
  }

  return result;
}

unint64_t sub_242D53C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37D0;
  if (!qword_27ECF37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37D0);
  }

  return result;
}

unint64_t sub_242D53CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37D8;
  if (!qword_27ECF37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37D8);
  }

  return result;
}

unint64_t sub_242D53D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37E0;
  if (!qword_27ECF37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37E0);
  }

  return result;
}

unint64_t sub_242D53DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF37F0;
  if (!qword_27ECF37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF37F0);
  }

  return result;
}

unint64_t sub_242D53DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3808;
  if (!qword_27ECF3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3808);
  }

  return result;
}

unint64_t sub_242D53E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3820;
  if (!qword_27ECF3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3820);
  }

  return result;
}

unint64_t sub_242D53EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3838;
  if (!qword_27ECF3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3838);
  }

  return result;
}

unint64_t sub_242D53EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3850;
  if (!qword_27ECF3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3850);
  }

  return result;
}

unint64_t sub_242D53F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3868;
  if (!qword_27ECF3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3868);
  }

  return result;
}

unint64_t sub_242D53FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3880;
  if (!qword_27ECF3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3880);
  }

  return result;
}

unint64_t sub_242D53FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3898;
  if (!qword_27ECF3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3898);
  }

  return result;
}

unint64_t sub_242D54048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF38B0;
  if (!qword_27ECF38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF38B0);
  }

  return result;
}

unint64_t sub_242D540A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF38C0;
  if (!qword_27ECF38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF38C0);
  }

  return result;
}

unint64_t sub_242D540F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF38C8;
  if (!qword_27ECF38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF38C8);
  }

  return result;
}

unint64_t sub_242D54150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF38D0;
  if (!qword_27ECF38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF38D0);
  }

  return result;
}

unint64_t sub_242D541A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF38D8;
  if (!qword_27ECF38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF38D8);
  }

  return result;
}

unint64_t sub_242D54200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF38E0;
  if (!qword_27ECF38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF38E0);
  }

  return result;
}

unint64_t sub_242D54258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF38E8;
  if (!qword_27ECF38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF38E8);
  }

  return result;
}

unint64_t sub_242D542B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF38F0;
  if (!qword_27ECF38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF38F0);
  }

  return result;
}

unint64_t sub_242D54308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF38F8;
  if (!qword_27ECF38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF38F8);
  }

  return result;
}

unint64_t sub_242D54360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3900;
  if (!qword_27ECF3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3900);
  }

  return result;
}

unint64_t sub_242D543B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3908;
  if (!qword_27ECF3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3908);
  }

  return result;
}

uint64_t sub_242D54414(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
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

uint64_t sub_242D5445C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_242D546F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3910;
  if (!qword_27ECF3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3910);
  }

  return result;
}

unint64_t sub_242D5474C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3918;
  if (!qword_27ECF3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3918);
  }

  return result;
}

unint64_t sub_242D547A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3920;
  if (!qword_27ECF3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3920);
  }

  return result;
}

unint64_t sub_242D547FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3928;
  if (!qword_27ECF3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3928);
  }

  return result;
}

unint64_t sub_242D54854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3930;
  if (!qword_27ECF3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3930);
  }

  return result;
}

unint64_t sub_242D548AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3938;
  if (!qword_27ECF3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3938);
  }

  return result;
}

unint64_t sub_242D54904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3940;
  if (!qword_27ECF3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3940);
  }

  return result;
}

unint64_t sub_242D5495C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3948;
  if (!qword_27ECF3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3948);
  }

  return result;
}

unint64_t sub_242D549B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3950;
  if (!qword_27ECF3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3950);
  }

  return result;
}

unint64_t sub_242D54A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3958;
  if (!qword_27ECF3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3958);
  }

  return result;
}

unint64_t sub_242D54A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3960;
  if (!qword_27ECF3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3960);
  }

  return result;
}

unint64_t sub_242D54ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3968;
  if (!qword_27ECF3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3968);
  }

  return result;
}

unint64_t sub_242D54B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3970;
  if (!qword_27ECF3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3970);
  }

  return result;
}

unint64_t sub_242D54B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3978;
  if (!qword_27ECF3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3978);
  }

  return result;
}

unint64_t sub_242D54BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3980;
  if (!qword_27ECF3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3980);
  }

  return result;
}

unint64_t sub_242D54C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3988;
  if (!qword_27ECF3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3988);
  }

  return result;
}

unint64_t sub_242D54C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3990;
  if (!qword_27ECF3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3990);
  }

  return result;
}

unint64_t sub_242D54CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3998;
  if (!qword_27ECF3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3998);
  }

  return result;
}

unint64_t sub_242D54D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39A0;
  if (!qword_27ECF39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39A0);
  }

  return result;
}

unint64_t sub_242D54D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39A8;
  if (!qword_27ECF39A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39A8);
  }

  return result;
}

unint64_t sub_242D54DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39B0;
  if (!qword_27ECF39B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39B0);
  }

  return result;
}

unint64_t sub_242D54E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39B8;
  if (!qword_27ECF39B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39B8);
  }

  return result;
}

unint64_t sub_242D54E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39C0;
  if (!qword_27ECF39C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39C0);
  }

  return result;
}

unint64_t sub_242D54EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39C8;
  if (!qword_27ECF39C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39C8);
  }

  return result;
}

unint64_t sub_242D54F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39D0;
  if (!qword_27ECF39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39D0);
  }

  return result;
}

unint64_t sub_242D54F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39D8;
  if (!qword_27ECF39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39D8);
  }

  return result;
}

unint64_t sub_242D54FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39E0;
  if (!qword_27ECF39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39E0);
  }

  return result;
}

unint64_t sub_242D5503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39E8;
  if (!qword_27ECF39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39E8);
  }

  return result;
}

unint64_t sub_242D55094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39F0;
  if (!qword_27ECF39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39F0);
  }

  return result;
}

unint64_t sub_242D550EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF39F8;
  if (!qword_27ECF39F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF39F8);
  }

  return result;
}

uint64_t sub_242D55140(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xEC00000073726142;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E614269676964 && a2 == 0xED0000736B636954 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75646F6DLL && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEB0000000073646ELL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6513505 && a2 == 0xE300000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E696C646572 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1818588518 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F58670 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74616D726F666E69 && a2 == 0xEB000000006E6F69)
  {

    return 8;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_242D5543C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x544C657669746361 && a2 == 0xEC000000736B6369;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x544D657669746361 && a2 == 0xEC000000736B6369 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E657669746361 && a2 == 0xED0000737265626DLL || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xEE00736B6369544CLL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xEE00736B6369544DLL || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xEF737265626D754ELL || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5A7A0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A7C0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F57F60 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_242D55730(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000242F5A7E0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5A800 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5A820 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F5A840 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5A860 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x706D65546C657566 && a2 == 0xEE00736C6562614CLL || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656E696C646572 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A7C0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74656D7265776F70 && a2 == 0xEF74696D694C7265)
  {

    return 8;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_242D55A28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7254657669746361 && a2 == 0xEE007261426B6361;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5A8A0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6176697463616564 && a2 == 0xEE00726142646574 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5A8C0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D694C6465657073 && a2 == 0xEF72614272657469 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A8E0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_242D55C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E695269676964 && a2 == 0xEF72657474616C50;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756C426B63617274 && a2 == 0xE900000000000072 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5074786554636361 && a2 == 0xEE0072657474616CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242D55DBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D6C657546776F6CLL && a2 == 0xED000072656B7261;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546C657546776F6CLL && a2 == 0xEF6E6F6349747865 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A920 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5A940 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5A960 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F5A980 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F5A9A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_242D56018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D6554646C6F63 && a2 == 0xEE0072656B72614DLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D706D6554746F68 && a2 == 0xED000072656B7261 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54706D6554746F68 && a2 == 0xEF6E6F6349747865 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A9C0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5A9E0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5AA00 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5AA20 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F5AA40 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_242D562C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000242F5AA60 == a2;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E5250656772616CLL && a2 == 0xEE006F676F4C4C44 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6576697264 && a2 == 0xEF484D4B48504D65 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5AA80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F58030 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F58050 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F58070 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t KeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[3] = a7;
  v9[0] = a4;
  v9[1] = a5;
  v9[2] = a6;
  v7 = type metadata accessor for SkipEncode(0, v9);
  result = sub_242D56C60(v7);
  if ((result & 1) == 0)
  {
    return sub_242F05F20();
  }

  return result;
}

void *KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v30 = a4;
  v31 = a6;
  v29 = a7;
  v9 = sub_242F05860();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v32 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = a5;
  v19 = v37;
  result = sub_242F05D90();
  if (!v19)
  {
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v37 = 0;
    if ((*(v32 + 48))(v11, 1, a3) == 1)
    {
      (*(v21 + 8))(v11, v9);
      (*(v23 + 8))(a3, v23);
      v24 = v22;
      (*(v32 + 32))(v22, v14, a3);
      v33 = a3;
      v34 = v23;
      v35 = v18;
    }

    else
    {
      v25 = v32;
      v28 = v18;
      v26 = *(v32 + 32);
      v26(v17, v11, a3);
      (*(v25 + 16))(v14, v17, a3);
      (*(v25 + 8))(v17, a3);
      v24 = v22;
      v26(v22, v14, a3);
      v33 = a3;
      v34 = v23;
      v35 = v28;
    }

    v36 = v31;
    result = type metadata accessor for SkipEncode(0, &v33);
    *&v24[*(result + 13)] = 7;
  }

  return result;
}

uint64_t SkipEncode.init(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  (*(*(a3 - 8) + 32))(a7, a1);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for SkipEncode(0, v14);
  *(a7 + *(result + 52)) = v12;
  return result;
}

uint64_t SkipEncode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242C6CF00(v16, v19);
  sub_242F054A0();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  (*(v13 + 32))(a6, v15, a2);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  result = type metadata accessor for SkipEncode(0, v19);
  *(a6 + *(result + 52)) = 7;
  return result;
}

uint64_t sub_242D56C60(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5 = MEMORY[0x28223BE20](a1);
  if ((qword_242F22E18[byte_27ECF3A00] | *(v1 + *(v6 + 52))) == -1)
  {
    v9 = 1;
  }

  else
  {
    (*(v4 + 16))(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v2, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2118, &qword_242F13A70);
    if (swift_dynamicCast())
    {
      v7 = *(&v12 + 1);
      v8 = v13;
      __swift_project_boxed_opaque_existential_2Tm(&v11, *(&v12 + 1));
      v9 = (*(v8 + 8))(v7, v8);
      __swift_destroy_boxed_opaque_existential_2Tm(&v11);
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
      sub_242D573C0(&v11);
      v9 = 0;
    }
  }

  return v9 & 1;
}

void *UnkeyedDecodingContainer.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_242F05F80();
  if (!v6)
  {
    (*(v12 + 32))(a6, v14, a2);
    v16[0] = a2;
    v16[1] = a3;
    v16[2] = a4;
    v16[3] = a5;
    result = type metadata accessor for SkipEncode(0, v16);
    *(a6 + *(result + 13)) = 7;
  }

  return result;
}

void *SingleValueDecodingContainer.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_242F06160();
  if (!v6)
  {
    (*(v12 + 32))(a6, v14, a2);
    v16[0] = a2;
    v16[1] = a3;
    v16[2] = a4;
    v16[3] = a5;
    result = type metadata accessor for SkipEncode(0, v16);
    *(a6 + *(result + 13)) = 7;
  }

  return result;
}

uint64_t UnkeyedEncodingContainer.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[3] = a7;
  v9[0] = a3;
  v9[1] = a5;
  v9[2] = a6;
  v7 = type metadata accessor for SkipEncode(0, v9);
  result = sub_242D56C60(v7);
  if ((result & 1) == 0)
  {
    return sub_242F05FA0();
  }

  return result;
}

uint64_t sub_242D570C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242D57138(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_242D5723C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_242D573C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2120, &qword_242F13A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int64x2_t sub_242D57470()
{
  if (qword_27ECEF0E0 != -1)
  {
    swift_once();
  }

  sub_242F04450();
  v0 = sub_242F04480();

  v1 = qword_27ED5D2B8;

  v2 = sub_242F04210();
  v3 = MEMORY[0x277CE04F8];
  v4 = MEMORY[0x277CE04E8];
  v8 = MEMORY[0x277CE04F8];
  v9 = MEMORY[0x277CE04E8];
  LODWORD(v7) = v2;
  v5 = sub_242F04230();
  qword_27ECF3AF0 = v3;
  unk_27ECF3AF8 = v4;
  dword_27ECF3AD8 = v5;
  qword_27ECF3AA0 = v0;
  unk_27ECF3AA8 = v1;
  sub_242C65564(&v7, &unk_27ECF3AB0);
  result = vdupq_n_s64(0x4046000000000000uLL);
  xmmword_27ECF3B00 = result;
  unk_27ECF3B10 = vdupq_n_s64(0x4044000000000000uLL);
  qword_27ECF3B20 = 0x4020000000000000;
  qword_27ECF3B28 = 8;
  byte_27ECF3B30 = 1;
  qword_27ECF3B38 = 0x3FF0000000000000;
  return result;
}

uint64_t static NotificationTextConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27ECEF0E8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_242D575E8(&qword_27ECF3AA0, v2);
}

uint64_t sub_242D57650(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48, &qword_242F23098);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_242F04430();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_242F04460();
  result = sub_242D5A3A0(v5);
  *a2 = v7;
  return result;
}

double sub_242D5772C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48, &qword_242F23098);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_opt_self() _carSystemQuaternaryColor];
  v4 = sub_242F047D0();
  sub_242F04450();
  v5 = sub_242F04430();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = sub_242F04460();
  sub_242D5A3A0(v2);
  xmmword_27ECF3B40 = xmmword_242F22E40;
  *algn_27ECF3B50 = xmmword_242F22E50;
  *&xmmword_27ECF3B60 = v4;
  *(&xmmword_27ECF3B60 + 1) = v6;
  result = 20.0;
  xmmword_27ECF3B70 = xmmword_242F22E60;
  return result;
}

int64x2_t sub_242D5785C()
{
  if (qword_27ECEF0F0 != -1)
  {
    swift_once();
  }

  sub_242F04450();
  v0 = sub_242F04480();

  v1 = qword_27ED5D2C0;

  v2 = sub_242F04210();
  v3 = MEMORY[0x277CE04F8];
  v4 = MEMORY[0x277CE04E8];
  v8 = MEMORY[0x277CE04F8];
  v9 = MEMORY[0x277CE04E8];
  LODWORD(v7) = v2;
  v5 = sub_242F04230();
  qword_27ECF3BD0 = v3;
  unk_27ECF3BD8 = v4;
  dword_27ECF3BB8 = v5;
  qword_27ECF3B80 = v0;
  unk_27ECF3B88 = v1;
  sub_242C65564(&v7, &unk_27ECF3B90);
  result = vdupq_n_s64(0x4046000000000000uLL);
  xmmword_27ECF3BE0 = result;
  unk_27ECF3BF0 = vdupq_n_s64(0x4044000000000000uLL);
  qword_27ECF3C00 = 0x4020000000000000;
  unk_27ECF3C08 = 8;
  byte_27ECF3C10 = 0;
  qword_27ECF3C18 = 0x3FF0000000000000;
  return result;
}

double sub_242D57960()
{
  if (qword_27ECEF0F0 != -1)
  {
    swift_once();
  }

  sub_242F04450();
  v0 = sub_242F04480();

  v1 = qword_27ED5D2C0;

  v2 = sub_242F04210();
  v3 = MEMORY[0x277CE04F8];
  v4 = MEMORY[0x277CE04E8];
  v8 = MEMORY[0x277CE04F8];
  v9 = MEMORY[0x277CE04E8];
  LODWORD(v7) = v2;
  v5 = sub_242F04230();
  qword_27ECF3C70 = v3;
  unk_27ECF3C78 = v4;
  dword_27ECF3C58 = v5;
  qword_27ECF3C20 = v0;
  unk_27ECF3C28 = v1;
  sub_242C65564(&v7, &unk_27ECF3C30);
  xmmword_27ECF3C80 = vdupq_n_s64(0x4042000000000000uLL);
  qword_27ECF3C90 = 0x4034000000000000;
  result = 24.0;
  unk_27ECF3C98 = xmmword_242F22E70;
  qword_27ECF3CA8 = 8;
  byte_27ECF3CB0 = 0;
  qword_27ECF3CB8 = 0x3FF0000000000000;
  return result;
}

double sub_242D57A6C(uint64_t a1)
{
  __asm { FMOV            V1.2D, #16.0 }

  *&result = sub_242D57A84(xmmword_242F22E80, _Q1, a1, qword_27ECF3CC0).u64[0];
  return result;
}

int64x2_t sub_242D57A84(__n128 a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v18 = a1;
  v19 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48, &qword_242F23098);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for NotificationSymbolConfiguration(0);
  __swift_allocate_value_buffer(v8, a4);
  v9 = __swift_project_value_buffer(v8, a4);
  v10 = sub_242F04430();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_242F04460();
  sub_242D5A3A0(v7);
  sub_242F04450();
  v11 = sub_242F04480();

  v12 = *(v8 + 28);
  v13 = *MEMORY[0x277CE1048];
  v14 = sub_242F04820();
  (*(*(v14 - 8) + 104))(v9 + v12, v13, v14);
  *v9 = v11;
  *(v9 + 8) = xmmword_242F22E90;
  *(v9 + 24) = 0;
  v15 = (v9 + *(v8 + 32));
  v16 = v19;
  *v15 = v18;
  v15[1] = v16;
  result = vdupq_n_s64(0x404E000000000000uLL);
  *(v9 + 32) = result;
  return result;
}

uint64_t sub_242D57C4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for NotificationSymbolConfiguration(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_242D5A274(v7, a4, type metadata accessor for NotificationSymbolConfiguration);
}

double sub_242D57CB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48, &qword_242F23098);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for NotificationSymbolConfiguration(0);
  __swift_allocate_value_buffer(v3, qword_27ECF3CD8);
  v4 = __swift_project_value_buffer(v3, qword_27ECF3CD8);
  v5 = sub_242F04430();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_242F04460();
  sub_242D5A3A0(v2);
  sub_242F04450();
  v6 = sub_242F04480();

  v7 = *(v3 + 28);
  v8 = *MEMORY[0x277CE1048];
  v9 = sub_242F04820();
  (*(*(v9 - 8) + 104))(v4 + v7, v8, v9);
  *v4 = v6;
  *(v4 + 8) = xmmword_242F22E90;
  *(v4 + 24) = 0;
  v10 = (v4 + *(v3 + 32));
  *v10 = 0x4038000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  result = 240.0;
  *(v4 + 32) = xmmword_242F22EA0;
  return result;
}

uint64_t sub_242D57E7C()
{
  v0 = sub_242F04A30();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for ActionConfiguration(0);
  __swift_allocate_value_buffer(v9, qword_27ECF3CF0);
  v10 = __swift_project_value_buffer(v9, qword_27ECF3CF0);
  if (qword_27ECEF0F8 != -1)
  {
    swift_once();
  }

  v40 = xmmword_27ECF3B40;
  v41 = *algn_27ECF3B50;
  v42 = xmmword_27ECF3B60;
  v43 = xmmword_27ECF3B70;
  sub_242D5A344(&v40, v39);
  if (qword_27ECEF110 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_27ECF3CC0);
  sub_242D5A274(v11, v8, type metadata accessor for NotificationSymbolConfiguration);
  if (qword_27ECEF118 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_27ECF3CD8);
  sub_242D5A274(v12, v5, type metadata accessor for NotificationSymbolConfiguration);
  if (qword_27ECEF100 != -1)
  {
    swift_once();
  }

  sub_242D575E8(&qword_27ECF3B80, v39);
  if (qword_27ECEF108 != -1)
  {
    swift_once();
  }

  sub_242D575E8(&qword_27ECF3C20, v38);
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  v13 = v10 + v9[11];
  v14 = v10 + v9[12];
  v15 = (v10 + v9[15]);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v16 = v40;
  v17 = v41;
  v18 = v43;
  *(v10 + 32) = v42;
  *(v10 + 48) = v18;
  *v10 = v16;
  *(v10 + 16) = v17;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0x4048000000000000;
  sub_242D5A2DC(v8, v10 + v9[7], type metadata accessor for NotificationSymbolConfiguration);
  sub_242D5A2DC(v5, v10 + v9[8], type metadata accessor for NotificationSymbolConfiguration);
  v19 = (v10 + v9[9]);
  v21 = v39[8];
  v20 = v39[9];
  v22 = v39[7];
  v19[6] = v39[6];
  v19[7] = v22;
  v19[8] = v21;
  v19[9] = v20;
  v24 = v39[4];
  v23 = v39[5];
  v25 = v39[3];
  v19[2] = v39[2];
  v19[3] = v25;
  v19[4] = v24;
  v19[5] = v23;
  v26 = v39[1];
  *v19 = v39[0];
  v19[1] = v26;
  v27 = (v10 + v9[10]);
  v28 = v38[6];
  v29 = v38[7];
  v30 = v38[9];
  v27[8] = v38[8];
  v27[9] = v30;
  v27[6] = v28;
  v27[7] = v29;
  v31 = v38[2];
  v32 = v38[3];
  v33 = v38[5];
  v27[4] = v38[4];
  v27[5] = v33;
  v27[2] = v31;
  v27[3] = v32;
  v34 = v38[1];
  *v27 = v38[0];
  v27[1] = v34;
  *(v10 + v9[13]) = 0;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  (*(v36 + 32))(v10 + v9[14], v2, v37);
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
}

uint64_t static ActionConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ActionConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF3CF0);
  return sub_242D5A274(v3, a1, type metadata accessor for ActionConfiguration);
}

int64x2_t sub_242D58304()
{
  if (qword_27ECEF0E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27ECF3AA0;
  v1 = unk_27ECF3AA8;
  v2 = qword_27ECF3B20;
  v3 = qword_27ECF3B28;
  v4 = byte_27ECF3B30;

  v5 = sub_242F04210();
  v6 = MEMORY[0x277CE04F8];
  v7 = MEMORY[0x277CE04E8];
  v16 = MEMORY[0x277CE04F8];
  v17 = MEMORY[0x277CE04E8];
  LODWORD(v15) = v5;
  v8 = sub_242F04230();
  qword_27ECF3D58 = v6;
  unk_27ECF3D60 = v7;
  dword_27ECF3D40 = v8;
  qword_27ECF3D08 = v0;
  *algn_27ECF3D10 = v1;
  sub_242C65564(&v15, &algn_27ECF3D10[8]);
  result = vdupq_n_s64(0x4042000000000000uLL);
  __asm { FMOV            V1.2D, #24.0 }

  xmmword_27ECF3D68 = result;
  unk_27ECF3D78 = _Q1;
  qword_27ECF3D88 = v2;
  qword_27ECF3D90 = v3;
  byte_27ECF3D98 = v4;
  qword_27ECF3DA0 = 0x3FF0000000000000;
  return result;
}

uint64_t sub_242D58434()
{
  v0 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v0);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v26 - v4;
  v6 = type metadata accessor for IconNotificationButtonConfiguration(0);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BannerConfiguration(0);
  __swift_allocate_value_buffer(v9, qword_27ECF3DC0);
  v10 = __swift_project_value_buffer(v9, qword_27ECF3DC0);
  if (qword_27ECEF6C0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_27ECF7C98);
  sub_242D5A274(v11, v8, type metadata accessor for IconNotificationButtonConfiguration);
  if (qword_27ECEF0D8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_27ECF3A88);
  sub_242D5A274(v12, v5, type metadata accessor for NotificationSymbolConfiguration);
  if (qword_27ECEF130 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, qword_27ECF3DA8);
  sub_242D5A274(v13, v2, type metadata accessor for NotificationSymbolConfiguration);
  if (qword_27ECEF0E8 != -1)
  {
    swift_once();
  }

  sub_242D575E8(&qword_27ECF3AA0, v26);
  if (qword_27ECEF128 != -1)
  {
    swift_once();
  }

  sub_242D575E8(&qword_27ECF3D08, v10 + v9[10]);
  v14 = v10 + v9[11];
  v15 = v10 + v9[12];
  v16 = (v10 + v9[14]);
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  sub_242D5A2DC(v8, v10, type metadata accessor for IconNotificationButtonConfiguration);
  *(v10 + v9[5]) = 0x4044000000000000;
  sub_242D5A2DC(v5, v10 + v9[7], type metadata accessor for NotificationSymbolConfiguration);
  sub_242D5A2DC(v2, v10 + v9[8], type metadata accessor for NotificationSymbolConfiguration);
  v17 = (v10 + v9[9]);
  v19 = v26[8];
  v18 = v26[9];
  v20 = v26[7];
  v17[6] = v26[6];
  v17[7] = v20;
  v17[8] = v19;
  v17[9] = v18;
  v22 = v26[4];
  v21 = v26[5];
  v23 = v26[3];
  v17[2] = v26[2];
  v17[3] = v23;
  v17[4] = v22;
  v17[5] = v21;
  v24 = v26[1];
  *v17 = v26[0];
  v17[1] = v24;
  *(v10 + v9[6]) = 0;
  *(v10 + v9[13]) = 0;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
}

uint64_t static BannerConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF138 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for BannerConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF3DC0);
  return sub_242D5A274(v3, a1, type metadata accessor for BannerConfiguration);
}

int64x2_t sub_242D58854()
{
  if (qword_27ECEF0E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27ECF3AA0;
  v1 = unk_27ECF3AA8;
  v2 = qword_27ECF3B20;
  v3 = qword_27ECF3B28;
  v4 = byte_27ECF3B30;

  v5 = sub_242F04210();
  v6 = MEMORY[0x277CE04F8];
  v7 = MEMORY[0x277CE04E8];
  v16 = MEMORY[0x277CE04F8];
  v17 = MEMORY[0x277CE04E8];
  LODWORD(v15) = v5;
  v8 = sub_242F04230();
  qword_27ECF3E28 = v6;
  unk_27ECF3E30 = v7;
  dword_27ECF3E10 = v8;
  qword_27ECF3DD8 = v0;
  unk_27ECF3DE0 = v1;
  sub_242C65564(&v15, &unk_27ECF3DE8);
  result = vdupq_n_s64(0x4042000000000000uLL);
  __asm { FMOV            V1.2D, #24.0 }

  xmmword_27ECF3E38 = result;
  unk_27ECF3E48 = _Q1;
  qword_27ECF3E58 = v2;
  qword_27ECF3E60 = v3;
  byte_27ECF3E68 = v4;
  qword_27ECF3E70 = 0x3FF0000000000000;
  return result;
}

uint64_t sub_242D58960(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for NotificationSymbolConfiguration(0);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_27ECEF0D8 != -1)
  {
    swift_once();
  }

  v5 = *__swift_project_value_buffer(v3, qword_27ECF3A88);
  v6 = *(v3 + 28);
  v7 = *MEMORY[0x277CE1048];
  v8 = sub_242F04820();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *v4 = v5;
  *(v4 + 8) = xmmword_242F22EB0;
  *(v4 + 24) = 0;
  v9 = (v4 + *(v3 + 32));
  *v9 = xmmword_242F22EC0;
  v9[1] = xmmword_242F22ED0;
  *(v4 + 32) = xmmword_242F22EA0;
}

uint64_t sub_242D58AB8()
{
  v0 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v0);
  v2 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v22 - v4;
  v6 = type metadata accessor for NoticeConfiguration(0);
  __swift_allocate_value_buffer(v6, qword_27ECF3E90);
  v7 = __swift_project_value_buffer(v6, qword_27ECF3E90);
  if (qword_27ECEF0D8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27ECF3A88);
  sub_242D5A274(v8, v5, type metadata accessor for NotificationSymbolConfiguration);
  if (qword_27ECEF148 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27ECF3E78);
  sub_242D5A274(v9, v2, type metadata accessor for NotificationSymbolConfiguration);
  if (qword_27ECEF0E8 != -1)
  {
    swift_once();
  }

  sub_242D575E8(&qword_27ECF3AA0, v22);
  if (qword_27ECEF140 != -1)
  {
    swift_once();
  }

  sub_242D575E8(&qword_27ECF3DD8, v7 + v6[8]);
  v10 = v7 + v6[9];
  v11 = v7 + v6[10];
  v12 = (v7 + v6[12]);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  *v7 = 0x4044000000000000;
  sub_242D5A2DC(v5, v7 + v6[5], type metadata accessor for NotificationSymbolConfiguration);
  sub_242D5A2DC(v2, v7 + v6[6], type metadata accessor for NotificationSymbolConfiguration);
  v13 = (v7 + v6[7]);
  v15 = v22[8];
  v14 = v22[9];
  v16 = v22[7];
  v13[6] = v22[6];
  v13[7] = v16;
  v13[8] = v15;
  v13[9] = v14;
  v18 = v22[4];
  v17 = v22[5];
  v19 = v22[3];
  v13[2] = v22[2];
  v13[3] = v19;
  v13[4] = v18;
  v13[5] = v17;
  v20 = v22[1];
  *v13 = v22[0];
  v13[1] = v20;
  *(v7 + v6[11]) = 0;
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
}

uint64_t static NoticeConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF150 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NoticeConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF3E90);
  return sub_242D5A274(v3, a1, type metadata accessor for NoticeConfiguration);
}

uint64_t sub_242D58E40(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ActionConfiguration(0);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_27ECEF120 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_27ECF3CF0);
  return sub_242D5A274(v5, v4, type metadata accessor for ActionConfiguration);
}

uint64_t sub_242D58F04@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ActionConfiguration(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_242D5A274(v7, a4, type metadata accessor for ActionConfiguration);
}

uint64_t sub_242D58F70()
{
  v0 = type metadata accessor for BannerConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_27ECF3ED8);
  v1 = __swift_project_value_buffer(v0, qword_27ECF3ED8);
  if (qword_27ECEF138 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27ECF3DC0);
  return sub_242D5A274(v2, v1, type metadata accessor for BannerConfiguration);
}

uint64_t sub_242D59014@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF168 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for BannerConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF3ED8);
  return sub_242D5A274(v3, a1, type metadata accessor for BannerConfiguration);
}

uint64_t sub_242D59094()
{
  v0 = type metadata accessor for NoticeConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_27ECF3EF0);
  v1 = __swift_project_value_buffer(v0, qword_27ECF3EF0);
  if (qword_27ECEF150 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27ECF3E90);
  return sub_242D5A274(v2, v1, type metadata accessor for NoticeConfiguration);
}

uint64_t sub_242D59138@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NoticeConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF3EF0);
  return sub_242D5A274(v3, a1, type metadata accessor for NoticeConfiguration);
}

uint64_t sub_242D591B8()
{
  v0 = type metadata accessor for FancyNotificationConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_27ECF3F08);
  v1 = __swift_project_value_buffer(v0, qword_27ECF3F08);
  if (qword_27ECEF1F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27ECF4FF0);
  return sub_242D5A274(v2, v1, type metadata accessor for FancyNotificationConfiguration);
}

uint64_t sub_242D5925C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FancyNotificationConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF3F08);
  return sub_242D5A274(v3, a1, type metadata accessor for FancyNotificationConfiguration);
}
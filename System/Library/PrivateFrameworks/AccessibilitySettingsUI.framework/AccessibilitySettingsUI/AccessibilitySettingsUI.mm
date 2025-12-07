void AXSUIVoiceOverSpeechView.init<>(overrideSettings:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41B0, &qword_23D9DBDF0);
  v5 = a2 + v4[9];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a2 + v4[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41B8, &qword_23D9DBE20);
  sub_23D9DA3A4();
  *v6 = v15;
  *(v6 + 16) = v16;
  if (a1)
  {
    v7 = *MEMORY[0x277CE7998];
    swift_beginAccess();
    v8 = *&a1[v7];
  }

  else
  {
    v9 = sub_23D9DAC94();
    v11 = MEMORY[0x23EEF3E90](v9, v10);
    v12 = *MEMORY[0x277CE7998];
    swift_beginAccess();
    v13 = *&v11[v12];
  }

  v14 = (a2 + v4[11]);
  sub_23D9DAC84();
  sub_23D91B760(&qword_27E2F41C0, MEMORY[0x277CE7988], MEMORY[0x277CE7950]);
  sub_23D9DA6C4();

  *v14 = 0;
  v14[1] = 0;
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

uint64_t sub_23D91AB54(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41B8, &qword_23D9DBE20);
  sub_23D9DA3A4();
  return v3;
}

uint64_t sub_23D91ABA0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23D91ABAC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23D9DAFC4();
  }
}

uint64_t sub_23D91ABDC()
{
  sub_23D9DB034();
  sub_23D9DA914();
  return sub_23D9DB064();
}

uint64_t sub_23D91AC30(uint64_t a1)
{
  sub_23D9DB034();
  sub_23D9DA914();
  return sub_23D9DB064();
}

void sub_23D91AC78(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_23D9D9954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 36);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10 & 1;
  }

  else
  {

    sub_23D9DACD4();
    v11 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D91F080(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

void *sub_23D91ADD8@<X0>(_BYTE *a1@<X8>)
{
  sub_23D91F3A4();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D91AE74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4468, &qword_23D9DC2A8);
  sub_23D9DA3D4();
  return v2;
}

uint64_t sub_23D91AED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6A4();
  v0 = sub_23D9DAC64();

  v1 = "will not update.";
  if (v0)
  {
    v1 = "ON_EXPLANATION_OFF";
    v2 = 0xD000000000000021;
  }

  else
  {
    v2 = 0xD000000000000022;
  }

  v3 = v1 | 0x8000000000000000;
  return AXSUILocString(_:)(*&v2)._countAndFlagsBits;
}

void AXSUIVoiceOverSpeechView.init(overrideSettings:extraSettings:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for AXSUIVoiceOverSpeechView(0, a4, a5, a4);
  v11 = a6 + v10[9];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = (a6 + v10[10]);
  *v12 = sub_23D91AB54(0, 0);
  v12[1] = v13;
  v12[2] = v14;
  if (a1)
  {
    v15 = *MEMORY[0x277CE7998];
    swift_beginAccess();
    v16 = *&a1[v15];
  }

  else
  {
    sub_23D9DAC94();
    v17 = MEMORY[0x23EEF3E90]();
    v18 = *MEMORY[0x277CE7998];
    swift_beginAccess();
    v19 = *&v17[v18];
  }

  v20 = (a6 + v10[11]);
  swift_getObjectType();
  sub_23D91B760(&qword_27E2F41C0, MEMORY[0x277CE7988], MEMORY[0x277CE7950]);
  sub_23D9DA6C4();

  *v20 = a2;
  v20[1] = a3;
}

uint64_t AXSUIVoiceOverSpeechView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v42 = a2;
  v50._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41C8, &qword_23D9DBE28);
  v50._object = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D0, &qword_23D9DBE30);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D8, &qword_23D9DBE38);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41E0, &qword_23D9DBE40);
  v43 = *(a1 + 16);
  v53 = sub_23D9DAD74();
  swift_getTupleTypeMetadata();
  v3 = sub_23D9DA7C4();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for AXSUIPlatformFormListView(0, v3, WitnessTable, v4);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v32 - v6;
  v8 = swift_getWitnessTable();
  v9 = sub_23D91B650();
  v10 = MEMORY[0x277D837D0];
  v50._countAndFlagsBits = v5;
  v50._object = MEMORY[0x277D837D0];
  v51 = v8;
  v52 = v9;
  v11 = v8;
  v32[2] = v8;
  v12 = v9;
  v32[1] = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = OpaqueTypeMetadata2;
  v38 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41F0, qword_23D9DBE48);
  v36 = v16;
  v50._countAndFlagsBits = v5;
  v50._object = v10;
  v51 = v11;
  v52 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = OpaqueTypeConformance2;
  v34 = sub_23D91B6A4();
  v50._countAndFlagsBits = OpaqueTypeMetadata2;
  v50._object = v16;
  v51 = OpaqueTypeConformance2;
  v52 = v34;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v32 - v23;
  v25 = *(v37 + 24);
  v47 = v43;
  v48 = v25;
  v26 = v41;
  v49 = v41;
  AXSUIPlatformFormListView.init(content:)(sub_23D91C428);
  v27._countAndFlagsBits = 0x545F484345455053;
  v27._object = 0xEC000000454C5449;
  v50 = AXSUILocString(_:)(v27);
  sub_23D9DA064();

  (*(v40 + 8))(v7, v5);
  v44 = v43;
  v45 = v25;
  v46 = v26;
  v28 = v33;
  sub_23D9DA1B4();
  (*(v38 + 8))(v15, v28);
  v29 = *(v19 + 16);
  v29(v24, v21, v18);
  v30 = *(v19 + 8);
  v30(v21, v18);
  v29(v42, v24, v18);
  return (v30)(v24, v18);
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

unint64_t sub_23D91B650()
{
  result = qword_27E2F41E8;
  if (!qword_27E2F41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F41E8);
  }

  return result;
}

unint64_t sub_23D91B6A4()
{
  result = qword_27E2F41F8;
  if (!qword_27E2F41F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41F0, qword_23D9DBE48);
    sub_23D91B760(&qword_27E2F4200, MEMORY[0x277CDD688], MEMORY[0x277CDD670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F41F8);
  }

  return result;
}

uint64_t sub_23D91B760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D91B7A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a4;
  v104 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v95 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = v92 - v9;
  v103 = sub_23D9DAD74();
  v99 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v117 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4368, &qword_23D9DC090);
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x28223BE20](v13);
  v93 = v92 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41E0, &qword_23D9DBE40);
  MEMORY[0x28223BE20](v98);
  v116 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v113 = v92 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41D8, &qword_23D9DBE38);
  v100 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v119 = v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41D0, &qword_23D9DBE30);
  v111 = *(v21 - 8);
  v112 = v21;
  MEMORY[0x28223BE20](v21);
  v110 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v92 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41C8, &qword_23D9DBE28);
  v108 = *(v26 - 8);
  v109 = v26;
  MEMORY[0x28223BE20](v26);
  v107 = v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v92 - v29;
  v31._countAndFlagsBits = 0xD000000000000014;
  v31._object = 0x800000023D9E39D0;
  v139 = AXSUILocString(_:)(v31);
  v126 = a2;
  v127 = a3;
  v128 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4370, &qword_23D9DC098);
  sub_23D91E940();
  v32 = sub_23D91B650();
  v105 = v30;
  sub_23D9DA654();
  v123 = a2;
  v124 = a3;
  v125 = a1;
  v33._object = 0x800000023D9E39F0;
  v33._countAndFlagsBits = 0xD000000000000011;
  v139 = AXSUILocString(_:)(v33);
  v139._countAndFlagsBits = sub_23D9D9F04();
  v139._object = v34;
  LOBYTE(v140) = v35 & 1;
  v141 = v36;
  v37._countAndFlagsBits = 0xD000000000000012;
  v37._object = 0x800000023D9E3A10;
  v135 = AXSUILocString(_:)(v37);
  v92[2] = v32;
  v135._countAndFlagsBits = sub_23D9D9F04();
  v135._object = v38;
  LOBYTE(v136) = v39 & 1;
  v137 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F43A8, &qword_23D9DC0A8);
  v90 = sub_23D91EB18();
  v91 = MEMORY[0x277CE0BC0];
  v106 = v25;
  sub_23D9DA674();
  v120 = a2;
  v121 = a3;
  v122 = a1;
  sub_23D91D5F4(&v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F43F0, &qword_23D9DC0C8);
  sub_23D91F01C(&qword_27E2F43F8, &qword_27E2F43F0, &qword_23D9DC0C8, MEMORY[0x277CE14C8]);
  sub_23D9DA694();
  v118 = a3;
  v42 = type metadata accessor for AXSUIVoiceOverSpeechView(0, a2, a3, v41);
  sub_23D91AC78(v42, &v139);
  if (LOBYTE(v139._countAndFlagsBits) == 1)
  {
    MEMORY[0x28223BE20](v43);
    v92[1] = &v92[-6];
    v44 = v118;
    v92[-4] = a2;
    v92[-3] = v44;
    v90 = a1;
    if (qword_27E2F41A8 != -1)
    {
      swift_once();
    }

    v45 = 0xEE005245544F4F46;
    v46 = 0x5F50554B41455053;
    if (qword_27E2F7320)
    {
      v47 = qword_27E2F7320;
      v48 = sub_23D9DA8A4();
      v49 = sub_23D9DA8A4();
      v50 = sub_23D9DA8A4();
      v51 = [v47 localizedStringForKey:v48 value:v49 table:v50];

      v46 = sub_23D9DA8B4();
      v45 = v52;
    }

    v53 = v104;
    v139._countAndFlagsBits = v46;
    v139._object = v45;
    v139._countAndFlagsBits = sub_23D9D9F04();
    v139._object = v54;
    LOBYTE(v140) = v55 & 1;
    v141 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
    v57 = v93;
    sub_23D9DA694();
    v59 = v96;
    v58 = v97;
    v60 = v113;
    (*(v96 + 32))(v113, v57, v97);
    v61 = 0;
  }

  else
  {
    v61 = 1;
    v60 = v113;
    v53 = v104;
    v59 = v96;
    v58 = v97;
  }

  v62 = 1;
  (*(v59 + 56))(v60, v61, 1, v58);
  v63 = a1 + *(v42 + 44);
  v64 = *v63;
  v65 = v117;
  if (*v63)
  {
    v66 = *(v63 + 8);

    v68 = v95;
    v64(v67);
    sub_23D91F064(v64, v66);
    v69 = *(v53 + 16);
    v70 = v94;
    v69(v94, v68, a2);
    v71 = *(v53 + 8);
    v71(v68, a2);
    v69(v68, v70, a2);
    v71(v70, a2);
    (*(v53 + 32))(v65, v68, a2);
    v62 = 0;
  }

  (*(v53 + 56))(v65, v62, 1, a2);
  v72 = v101;
  sub_23D995250(v65, v101);
  v73 = v99;
  v97 = *(v99 + 8);
  v104 = v99 + 8;
  v74 = v103;
  v97(v65, v103);
  v75 = v107;
  (*(v108 + 16))(v107, v105, v109);
  v139._countAndFlagsBits = v75;
  v76 = v110;
  v77 = v112;
  (*(v111 + 16))(v110, v106);
  v139._object = v76;
  v78 = v100;
  v79 = v114;
  v80 = v115;
  (*(v100 + 16))(v114, v119, v115);
  v140 = v79;
  v81 = v113;
  v82 = v116;
  sub_23D91F2DC(v113, v116, &qword_27E2F41E0, &qword_23D9DBE40);
  v141 = v82;
  (*(v73 + 16))(v65, v72, v74);
  v142 = v65;
  v83 = v109;
  v135._countAndFlagsBits = v109;
  v135._object = v77;
  v84 = v77;
  v136 = v80;
  v137 = v98;
  v138 = v74;
  v130 = sub_23D91ECE8();
  v131 = sub_23D91ED80();
  v132 = sub_23D91EE10();
  v133 = sub_23D91EED4();
  v129 = v118;
  WitnessTable = swift_getWitnessTable();
  sub_23D9952BC(&v139._countAndFlagsBits, 5uLL, &v135);
  v85 = v97;
  v97(v72, v74);
  sub_23D91F344(v81, &qword_27E2F41E0, &qword_23D9DBE40);
  v86 = *(v78 + 8);
  v86(v119, v80);
  v87 = *(v111 + 8);
  v87(v106, v84);
  v88 = *(v108 + 8);
  v88(v105, v83);
  v85(v117, v74);
  sub_23D91F344(v116, &qword_27E2F41E0, &qword_23D9DBE40);
  v86(v114, v115);
  v87(v110, v112);
  return (v88)(v107, v83);
}

uint64_t sub_23D91C434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4388, &qword_23D9DC0A0);
  MEMORY[0x28223BE20](v0);
  v2 = v8 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6A4();
  v3 = v8[1];
  sub_23D9DAC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4470, &qword_23D9DC2B0);
  sub_23D91B760(&qword_27E2F4478, MEMORY[0x277CE7988], MEMORY[0x277CE7940]);
  v4 = sub_23D9D8E44();

  AXSUISystemDefaultVoiceSelectionCell.init(voiceTable:)(v4, v2);
  KeyPath = swift_getKeyPath();
  v6 = &v2[*(v0 + 36)];
  *v6 = 0xD000000000000014;
  *(v6 + 1) = 0x800000023D9E39D0;
  *(v6 + 2) = KeyPath;
  v6[24] = 0;
  sub_23D91E9FC();
  sub_23D9DA114();
  return sub_23D91F344(v2, &qword_27E2F4388, &qword_23D9DC0A0);
}

double sub_23D91C634@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a2;
  v60 = a3;
  v7 = type metadata accessor for AXSUIVoiceOverSpeechView(0, a2, a3, a4);
  v57 = *(v7 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v40[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v40[-v14];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  v16 = *(v10 + 8);
  v16(v15, v9);
  v51 = v67;
  v50 = v68;
  v17 = sub_23D91AE74(v7);
  v54 = v18;
  v55 = v17;
  v52 = v20;
  v53 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  v16(v12, v9);
  v49 = v65;
  v48 = v66;
  KeyPath = swift_getKeyPath();
  LOBYTE(v61) = 0;
  sub_23D9DA3A4();
  v45 = v63;
  v46 = *(&v63 + 1);
  v61 = 0;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4458, &qword_23D9DD3A0);
  sub_23D9DA3A4();
  v43 = v63;
  v42 = v64;
  LOBYTE(v63) = 0;
  v44 = swift_getKeyPath();
  sub_23D91AC78(v7, &v67);
  v41 = v67;
  v21 = sub_23D91AE74(v7);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v56;
  v29 = v57;
  (*(v57 + 16))(v56, a1, v7);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v32 = v60;
  *(v31 + 16) = v59;
  *(v31 + 24) = v32;
  (*(v29 + 32))(v31 + v30, v28, v7);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F43A8, &qword_23D9DC0A8);
  sub_23D9D1374(v21, v23, v25, v27, sub_23D91F240, v31, 0, 0, (a5 + *(v33 + 36)));
  *a5 = v51;
  *(a5 + 8) = v50;
  *(a5 + 24) = v45;
  *(a5 + 25) = v67;
  *(a5 + 28) = *(&v67 + 3);
  v35 = v54;
  v34 = v55;
  *(a5 + 32) = v46;
  *(a5 + 40) = v34;
  v36 = v52;
  v37 = v53;
  *(a5 + 48) = v35;
  *(a5 + 56) = v37;
  *(a5 + 64) = v36;
  *(a5 + 72) = v43;
  v38 = KeyPath;
  *(a5 + 88) = v42;
  *(a5 + 96) = v38;
  *(a5 + 104) = 0;
  *(a5 + 108) = *(&v65 + 3);
  *(a5 + 105) = v65;
  *(a5 + 112) = v49;
  result = *&v48;
  *(a5 + 120) = v48;
  *(a5 + 136) = v44;
  *(a5 + 144) = v41;
  return result;
}

uint64_t sub_23D91CAD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9DABE4();
  *a1 = result;
  return result;
}

uint64_t sub_23D91CB30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v11 = *a1;
  v10 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6A4();
  v12 = sub_23D9D8C74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  *a2 = v11;
  a2[1] = v10;
  type metadata accessor for VoiceRotorDetailView(0);
  sub_23D9DAC84();
  sub_23D91B760(&qword_27E2F41C0, MEMORY[0x277CE7988], MEMORY[0x277CE7950]);
  sub_23D9DA6C4();
  sub_23D91F2DC(v9, v6, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  return sub_23D91F344(v9, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t sub_23D91CD0C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4438, &qword_23D9DC128);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4440, &qword_23D9DC130);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  *v16 = sub_23D9D99B4();
  *(v16 + 1) = 0;
  v17 = 1;
  v16[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4448, &qword_23D9DC138);
  sub_23D91D084(&v16[*(v18 + 44)]);
  KeyPath = swift_getKeyPath();
  v20 = &v16[*(v10 + 36)];
  *v20 = 0xD000000000000013;
  *(v20 + 1) = 0x800000023D9E3B20;
  *(v20 + 2) = KeyPath;
  v20[24] = 0;
  v22 = type metadata accessor for AXSUIVoiceOverSpeechView(0, a2, a3, v21);
  sub_23D91AC78(v22, &v33);
  if ((v33 & 1) == 0)
  {
    *v13 = sub_23D9D99B4();
    *(v13 + 1) = 0;
    v13[16] = 1;
    sub_23D91D33C(&v13[*(v18 + 44)]);
    v23 = swift_getKeyPath();
    v24 = &v13[*(v10 + 36)];
    *v24 = 0xD000000000000012;
    *(v24 + 1) = 0x800000023D9E3B40;
    *(v24 + 2) = v23;
    v24[24] = 0;
    sub_23D91F090(v13, v32);
    v17 = 0;
  }

  v25 = v32;
  (*(v11 + 56))(v32, v17, 1, v10);
  sub_23D91F2DC(v16, v13, &qword_27E2F4440, &qword_23D9DC130);
  v26 = v30;
  sub_23D91F2DC(v25, v30, &qword_27E2F4438, &qword_23D9DC128);
  v27 = v31;
  sub_23D91F2DC(v13, v31, &qword_27E2F4440, &qword_23D9DC130);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4450, qword_23D9DC168);
  sub_23D91F2DC(v26, v27 + *(v28 + 48), &qword_27E2F4438, &qword_23D9DC128);
  sub_23D91F344(v25, &qword_27E2F4438, &qword_23D9DC128);
  sub_23D91F344(v16, &qword_27E2F4440, &qword_23D9DC130);
  sub_23D91F344(v26, &qword_27E2F4438, &qword_23D9DC128);
  return sub_23D91F344(v13, &qword_27E2F4440, &qword_23D9DC130);
}

uint64_t sub_23D91D084@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9._object = 0x800000023D9E3B20;
  v9._countAndFlagsBits = 0xD000000000000013;
  v12 = AXSUILocString(_:)(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v2 + 8))(v4, v1);
  sub_23D91B650();
  sub_23D9DA4C4();
  sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
  sub_23D9DA114();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23D91D2E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D9DAC44();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D91D33C@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9._object = 0x800000023D9E3B40;
  v9._countAndFlagsBits = 0xD000000000000012;
  v12 = AXSUILocString(_:)(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v2 + 8))(v4, v1);
  sub_23D91B650();
  sub_23D9DA4C4();
  sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
  sub_23D9DA114();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23D91D59C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23D9DAC64();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D91D5F4@<X0>(uint64_t a1@<X8>)
{
  sub_23D91AED8();
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_23D91D650()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  v4._countAndFlagsBits = 0x50554B41455053;
  v4._object = 0xE700000000000000;
  v7 = AXSUILocString(_:)(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v1 + 8))(v3, v0);
  sub_23D91B650();
  return sub_23D9DA4C4();
}

uint64_t sub_23D91D7BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D9DAC24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D91D814()
{
  v0 = sub_23D9D9414();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4360, &qword_23D9DC088);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6A4();
  v7 = v11[1];
  v8 = sub_23D9DAC04();

  v9 = *(v8 + 16);

  if (v9)
  {
    sub_23D9D9404();
    (*(v1 + 16))(v6, v3, v0);
    swift_storeEnumTagMultiPayload();
    sub_23D91B760(&qword_27E2F4200, MEMORY[0x277CDD688], MEMORY[0x277CDD670]);
    sub_23D9D9B14();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_23D91B760(&qword_27E2F4200, MEMORY[0x277CDD688], MEMORY[0x277CDD670]);
    return sub_23D9D9B14();
  }
}

uint64_t sub_23D91DAA8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D9D9CA4();

    return sub_23D9D96C4();
  }

  else
  {
    sub_23D9D9754();
    swift_getWitnessTable();
    sub_23D9D9C24();
    sub_23D9D96C4();
    sub_23D9DAD74();
    swift_getWitnessTable();
    sub_23D9D9754();
    swift_getWitnessTable();
    sub_23D9D9C24();
    return sub_23D9D96C4();
  }
}

uint64_t sub_23D91DC0C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D9D9CA4();
    sub_23D9D96C4();
  }

  else
  {
    sub_23D9D9754();
    swift_getWitnessTable();
    sub_23D9D9C24();
    sub_23D9D96C4();
    sub_23D9DAD74();
    swift_getWitnessTable();
    sub_23D9D9754();
    swift_getWitnessTable();
    sub_23D9D9C24();
    sub_23D9D96C4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D91DE0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D9D9CA4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  MEMORY[0x23EEF34C0](v16, a3, v12, v18);
  return (*(v13 + 8))(v16, v12);
}

_DWORD *sub_23D91DFC4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_23D91DFE0()
{
  sub_23D9DB034();
  sub_23D9DB054();
  return sub_23D9DB064();
}

uint64_t sub_23D91E054(uint64_t a1)
{
  sub_23D9DB034();
  sub_23D9DB054();
  return sub_23D9DB064();
}

uint64_t sub_23D91E0AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23D91E0BC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23D9D9614();
  }

  else
  {
    sub_23D9D9584();
  }

  return sub_23D9D96C4();
}

uint64_t sub_23D91E124(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23D9D9614();
    sub_23D9D96C4();
    sub_23D91E218();
  }

  else
  {
    sub_23D9D9584();
    sub_23D9D96C4();
    sub_23D91B760(&qword_27E2F4228, MEMORY[0x277CDD8B8], MEMORY[0x277CDD8A8]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_23D91E218()
{
  result = qword_27E2F4220;
  if (!qword_27E2F4220)
  {
    sub_23D9D9614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4220);
  }

  return result;
}

void sub_23D91E2B0(uint64_t a1)
{
  sub_23D91E5A8(319);
  if (v1 <= 0x3F)
  {
    sub_23D91F478(319, &qword_27E2F4338, &type metadata for AXSUIVoiceOverSpeechViewContext, MEMORY[0x277CDF470]);
    if (v2 <= 0x3F)
    {
      sub_23D91E600(319, &qword_27E2F4340, &qword_27E2F41B8, &qword_23D9DBE20, MEMORY[0x277CE10B0]);
      if (v3 <= 0x3F)
      {
        sub_23D91E600(319, &qword_27E2F4348, &qword_27E2F4350, qword_23D9DBF90, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23D91E3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23D91E4E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

void sub_23D91E5A8(uint64_t a1)
{
  if (!qword_27E2F4330)
  {
    sub_23D9DAC84();
    v1 = sub_23D9DA6E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F4330);
    }
  }
}

void sub_23D91E600(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23D91E664()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41C8, &qword_23D9DBE28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D0, &qword_23D9DBE30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D8, &qword_23D9DBE38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41E0, &qword_23D9DBE40);
  sub_23D9DAD74();
  swift_getTupleTypeMetadata();
  v0 = sub_23D9DA7C4();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AXSUIPlatformFormListView(255, v0, WitnessTable, v2);
  swift_getWitnessTable();
  sub_23D91B650();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41F0, qword_23D9DBE48);
  swift_getOpaqueTypeConformance2();
  sub_23D91B6A4();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D91E83C(uint64_t a1, int a2)
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

uint64_t sub_23D91E884(uint64_t result, int a2, int a3)
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

unint64_t sub_23D91E8D4()
{
  result = qword_27E2F4358;
  if (!qword_27E2F4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4358);
  }

  return result;
}

unint64_t sub_23D91E940()
{
  result = qword_27E2F4378;
  if (!qword_27E2F4378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4370, &qword_23D9DC098);
    sub_23D91E9FC();
    sub_23D91B760(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4378);
  }

  return result;
}

unint64_t sub_23D91E9FC()
{
  result = qword_27E2F4380;
  if (!qword_27E2F4380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4388, &qword_23D9DC0A0);
    sub_23D91B760(&unk_27E2F4390, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell, &protocol conformance descriptor for AXSUISystemDefaultVoiceSelectionCell);
    sub_23D91EAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4380);
  }

  return result;
}

unint64_t sub_23D91EAB8()
{
  result = qword_27E2F6370;
  if (!qword_27E2F6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6370);
  }

  return result;
}

unint64_t sub_23D91EB18()
{
  result = qword_27E2F43B0;
  if (!qword_27E2F43B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F43A8, &qword_23D9DC0A8);
    sub_23D91EBD0();
    sub_23D91F01C(&qword_27E2F43E0, &qword_27E2F43E8, &qword_23D9DC0C0, &unk_23D9E1990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F43B0);
  }

  return result;
}

unint64_t sub_23D91EBD0()
{
  result = qword_27E2F43B8;
  if (!qword_27E2F43B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F43C0, &qword_23D9DC0B0);
    sub_23D91EC88();
    sub_23D91F01C(&qword_27E2F43D0, &qword_27E2F43D8, &qword_23D9DC0B8, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F43B8);
  }

  return result;
}

unint64_t sub_23D91EC88()
{
  result = qword_27E2F43C8;
  if (!qword_27E2F43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F43C8);
  }

  return result;
}

unint64_t sub_23D91ECE8()
{
  result = qword_27E2F4400;
  if (!qword_27E2F4400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41C8, &qword_23D9DBE28);
    sub_23D91E940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4400);
  }

  return result;
}

unint64_t sub_23D91ED80()
{
  result = qword_27E2F4408;
  if (!qword_27E2F4408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D0, &qword_23D9DBE30);
    sub_23D91EB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4408);
  }

  return result;
}

unint64_t sub_23D91EE10()
{
  result = qword_27E2F4410;
  if (!qword_27E2F4410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D8, &qword_23D9DBE38);
    sub_23D91F01C(&qword_27E2F43F8, &qword_27E2F43F0, &qword_23D9DC0C8, MEMORY[0x277CE14C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4410);
  }

  return result;
}

unint64_t sub_23D91EED4()
{
  result = qword_27E2F4418;
  if (!qword_27E2F4418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41E0, &qword_23D9DBE40);
    sub_23D91EF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4418);
  }

  return result;
}

unint64_t sub_23D91EF58()
{
  result = qword_27E2F4420;
  if (!qword_27E2F4420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4368, &qword_23D9DC090);
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4420);
  }

  return result;
}

uint64_t sub_23D91F01C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D91F064(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D91F080(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_23D91F090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4440, &qword_23D9DC130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D91F108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for AXSUIVoiceOverSpeechView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_23D91F080(*(v6 + v5[11]), *(v6 + v5[11] + 8));

  if (*(v6 + v5[13]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D91F240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  type metadata accessor for AXSUIVoiceOverSpeechView(0, *(v3 + 16), *(v3 + 24), a2);

  return sub_23D91CB30(a1, a3);
}

uint64_t sub_23D91F2DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D91F344(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23D91F3A4()
{
  result = qword_27E2F4480;
  if (!qword_27E2F4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4480);
  }

  return result;
}

void sub_23D91F478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t AXSUIMacroLanguageDisambiguationSelection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4._object = 0x800000023D9E3B90;
  v4._countAndFlagsBits = 0xD000000000000015;
  AXSUILocString(_:)(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4560, &qword_23D9DC3F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23D9DC3E0;
  v6 = sub_23D9D8934();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_23D91F908();
  if (!v8)
  {
    v6 = sub_23D9D88D4();
    v8 = v9;
  }

  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = sub_23D9DA8C4();
  v12 = v11;

  v13._countAndFlagsBits = 0x4749424D41534944;
  v13._object = 0xEE004E4F49544155;
  v43 = AXSUILocString(_:)(v13);
  sub_23D91B650();
  v43._countAndFlagsBits = sub_23D9D9F04();
  v43._object = v14;
  v44 = v15 & 1;
  v45 = v16;
  v39 = v10;
  v40 = v12;
  v39 = sub_23D9D9F04();
  v40 = v17;
  v41 = v18 & 1;
  v42 = v19;
  MEMORY[0x28223BE20](v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4570, &qword_23D9DC3F8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4578, &qword_23D9DC400);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4580, &qword_23D9DC408);
  v22 = sub_23D9D9994();
  v23 = sub_23D91F01C(&qword_27E2F4588, &qword_27E2F4580, &qword_23D9DC408, MEMORY[0x277CDF040]);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = MEMORY[0x277CDDD98];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v20;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_23D9DA674();
  v26 = v33;
  sub_23D92581C(v1, v33, type metadata accessor for AXSUIMacroLanguageDisambiguationSelection);
  v27 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v28 = swift_allocObject();
  sub_23D925888(v26, v28 + v27, type metadata accessor for AXSUIMacroLanguageDisambiguationSelection);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4598, &qword_23D9DC418);
  v30 = (v25 + *(result + 36));
  *v30 = sub_23D920738;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  return result;
}

unint64_t sub_23D91F908()
{
  result = qword_27E2F4568;
  if (!qword_27E2F4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4568);
  }

  return result;
}

uint64_t sub_23D91F95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_23D9D9994();
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4580, &qword_23D9DC408);
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4578, &qword_23D9DC400);
  v12 = *(v11 - 8);
  v22 = v11;
  v23 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15._countAndFlagsBits = 0x4749424D41534944;
  v15._object = 0xEE004E4F49544155;
  v28 = AXSUILocString(_:)(v15);
  type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0);
  sub_23D9DA584();
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47D8, &qword_23D9DC8C8);
  sub_23D92A334();
  sub_23D91F01C(&qword_27E2F47E8, &qword_27E2F47D8, &qword_23D9DC8C8, MEMORY[0x277CE14C8]);
  sub_23D91B650();
  sub_23D9DA484();
  sub_23D9D9984();
  v16 = sub_23D91F01C(&qword_27E2F4588, &qword_27E2F4580, &qword_23D9DC408, MEMORY[0x277CDF040]);
  v17 = MEMORY[0x277CDDD98];
  v18 = v24;
  sub_23D9D9FE4();
  (*(v25 + 8))(v6, v18);
  (*(v21 + 8))(v10, v8);
  v28._countAndFlagsBits = v8;
  v28._object = v18;
  v29 = v16;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_23D9DA004();
  return (*(v23 + 8))(v14, v19);
}

uint64_t sub_23D91FD6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a1;
  v49 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47F0, &qword_23D9DC8D0);
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47F8, &qword_23D9DC8D8);
  v43 = *(v45 - 8);
  v9 = v43;
  MEMORY[0x28223BE20](v45);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15._countAndFlagsBits = 0x544C5541464544;
  v15._object = 0xE700000000000000;
  v51 = AXSUILocString(_:)(v15);
  sub_23D91B650();
  v16 = sub_23D9D9F04();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_23D9D8954();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4208, &unk_23D9DC8E0) + 36)];
  sub_23D92A2BC(v8, v24, &qword_27E2F4210, &qword_23D9DBE60);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4218, &qword_23D9DBE68) + 36)) = 1;
  *v14 = v16;
  *(v14 + 1) = v18;
  v14[16] = v20 & 1;
  *(v14 + 3) = v22;
  v42 = v14;
  v25 = (v44 + *(type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0) + 24));
  v27 = *v25;
  v26 = v25[1];
  v51._countAndFlagsBits = v27;
  v51._object = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47D0, &qword_23D9DC8C0);
  sub_23D9DA3B4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277D83980]);
  sub_23D927B50(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v28 = sub_23D92A334();
  v51._countAndFlagsBits = MEMORY[0x277CE0BD0];
  v51._object = v6;
  v52 = MEMORY[0x277CE0BC0];
  v53 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v50;
  v30 = v45;
  sub_23D9DA614();
  v31 = *(v9 + 16);
  v31(v11, v14, v30);
  v32 = v46;
  v33 = v47;
  v34 = *(v47 + 16);
  v35 = v29;
  v36 = v48;
  v34(v46, v35, v48);
  v37 = v49;
  v31(v49, v11, v30);
  v38 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4808, &qword_23D9DC908) + 48)];
  v34(v38, v32, v36);
  v39 = *(v33 + 8);
  v39(v50, v36);
  v40 = *(v43 + 8);
  v40(v42, v30);
  v39(v32, v36);
  return (v40)(v11, v30);
}

uint64_t sub_23D920290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_23D9D8934();
  if (!v8)
  {
    v7 = sub_23D9D88D4();
  }

  v20[0] = v7;
  v20[1] = v8;
  sub_23D91B650();
  v9 = sub_23D9D9F04();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_23D9D8954();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v6, a1, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4208, &unk_23D9DC8E0) + 36);
  sub_23D92A2BC(v6, v18, &qword_27E2F4210, &qword_23D9DBE60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4218, &qword_23D9DBE68);
  *(v18 + *(result + 36)) = 1;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_23D92043C(uint64_t a1)
{
  v2 = sub_23D9D8904();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_23D94FB78(*(v2 + 16), 0);
  v6 = *(sub_23D9D8954() - 8);
  sub_23D99F664(v14, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v4, v3);
  v8 = v7;
  v9 = v14[0];

  sub_23D92A324(v9);
  if (v8 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v14[0] = v5;
  sub_23D925DBC(v14);

  v10 = (a1 + *(type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0) + 24));
  v12 = *v10;
  v11 = v10[1];
  v14[0] = v12;
  v14[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47D0, &qword_23D9DC8C0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9205A8()
{
  v1 = type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_23D9D8954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v2 + *(v1 + 20);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410) + 32);
  if (!(*(v4 + 48))(v6 + v7, 1, v3))
  {
    v5(v6 + v7, v3);
  }

  return swift_deallocObject();
}

BOOL sub_23D920764(uint64_t a1)
{
  sub_23D9D8934();
  if (!v1)
  {
    sub_23D9D88D4();
  }

  sub_23D9D8934();
  if (!v2)
  {
    sub_23D9D88D4();
  }

  sub_23D91B650();
  v3 = sub_23D9DAD94();

  return v3 == -1;
}

void *sub_23D920814()
{
  type metadata accessor for AXSUILanguageDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  return sub_23D9DA3B4();
}

uint64_t sub_23D920868()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AXSUILanguageDetailView(0) + 40));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_23D9DACD4();
    v8 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_23D9209B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  v9 = sub_23D9D8954();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, a4, v10);
  sub_23D91F2DC(a1, v8, &qword_27E2F5900, &unk_23D9DC640);
  v14 = sub_23D9D8DC4();
  sub_23D95914C(v8, v12);
  return v14(v16, 0);
}

void sub_23D920B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16[-v8];
  v10 = sub_23D9D8954();
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    (*(v11 + 16))(v14, a4, v12);
    sub_23D91F2DC(a1, v9, &qword_27E2F4210, &qword_23D9DBE60);
    v15 = sub_23D9D8DC4();
    sub_23D959378(v9, v14);
    v15(v16, 0);
  }
}

uint64_t sub_23D920C9C()
{
  v1 = v0;
  v2 = type metadata accessor for AXSUILanguageDetailView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = (v1 + *(v3 + 56));
  v11 = *v10;
  v12 = v10[1];
  v22 = *v10;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4748, &qword_23D9DC7B8);
  sub_23D9DA3B4();
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
    sub_23D9DAA44();
  }

  v13 = sub_23D9DA9F4();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_23D92581C(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUILanguageDetailView);
  sub_23D9DA9B4();
  v14 = sub_23D9DA9A4();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_23D925888(v6, v16 + v15, type metadata accessor for AXSUILanguageDetailView);
  v18 = sub_23D9897D0(0, 0, v9, &unk_23D9DC7D8, v16);
  v22 = v11;
  v23 = v12;
  v21 = v18;
  return sub_23D9DA3C4();
}

uint64_t sub_23D920F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B8, &qword_23D9DC738);
  v4[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C0, &qword_23D9DC740);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C8, &qword_23D9DC748);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46D0, &qword_23D9DC750);
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_23D9DA9B4();
  v4[24] = sub_23D9DA9A4();
  v10 = sub_23D9DA994();
  v4[25] = v10;
  v4[26] = v9;

  return MEMORY[0x2822009F8](sub_23D9211A0, v10, v9);
}

uint64_t sub_23D9211A0()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for AXSUILanguageDetailView(0);
  *(v0 + 216) = v5;
  sub_23D9D8DB4();
  sub_23D920868();
  sub_23D9D8DD4();

  (*(v2 + 8))(v1, v3);
  v6 = (v4 + *(v5 + 44));
  v7 = *v6;
  *(v0 + 279) = *v6;
  v8 = *(v6 + 1);
  *(v0 + 224) = v8;
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  *(v0 + 276) = 0;

  *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3C4();
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_23D921318;
  v10 = *(v0 + 160);
  v11 = *(v0 + 128);

  return MEMORY[0x282138898](v11, v10);
}

uint64_t sub_23D921318()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_23D921438, v3, v2);
}

uint64_t sub_23D921438()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 279);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 272) = *(*(v0 + 216) + 32);
  sub_23D91F2DC(v3, v4, &qword_27E2F5900, &unk_23D9DC640);
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3C4();
  sub_23D91F344(v3, &qword_27E2F5900, &unk_23D9DC640);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 277) = 1;
  sub_23D9DA3C4();

  sub_23D9D8E14();
  v5 = sub_23D9DA9A4();
  *(v0 + 256) = v5;
  v6 = swift_task_alloc();
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = sub_23D9215D0;
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v5, v9, v8);
}

uint64_t sub_23D9215D0()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_23D921714, v3, v2);
}

uint64_t sub_23D921714()
{
  v1 = *(v0 + 72);
  if ((*(*(v0 + 112) + 48))(v1, 1, *(v0 + 104)) == 1)
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 160);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);

    (*(v5 + 8))(v6, v7);
    (*(v3 + 8))(v2, v4);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v18 = *(v0 + 224);
    v10 = *(v0 + 279);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    sub_23D92A2BC(v1, v11, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D91F2DC(v11, v12, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D9DA3C4();
    sub_23D91F344(v11, &qword_27E2F5900, &unk_23D9DC640);
    *(v0 + 48) = v10;
    *(v0 + 56) = v18;
    *(v0 + 278) = 1;
    sub_23D9DA3C4();
    v13 = sub_23D9DA9A4();
    *(v0 + 256) = v13;
    v14 = swift_task_alloc();
    *(v0 + 264) = v14;
    *v14 = v0;
    v14[1] = sub_23D9215D0;
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v15, v13, v17, v16);
  }
}

uint64_t sub_23D92196C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AXSUILanguageDetailView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = v5;
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46D8, &qword_23D9DC758);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  sub_23D921CA8(v1, &v21 - v8);
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 36)];
  *v11 = KeyPath;
  v11[8] = 0;
  v24 = type metadata accessor for AXSUILanguageDetailView;
  sub_23D92581C(v1, v6, type metadata accessor for AXSUILanguageDetailView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v22 = type metadata accessor for AXSUILanguageDetailView;
  sub_23D925888(v6, v13 + v12, type metadata accessor for AXSUILanguageDetailView);
  sub_23D9D8954();
  sub_23D92784C();
  sub_23D927B50(&qword_27E2F4730, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
  sub_23D9DA1E4();

  sub_23D91F344(v9, &qword_27E2F46D8, &qword_23D9DC758);
  v14 = v24;
  sub_23D92581C(v1, v6, v24);
  v15 = swift_allocObject();
  v16 = v22;
  sub_23D925888(v6, v15 + v12, v22);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4738, &qword_23D9DC7A8) + 36));
  *v17 = sub_23D9277F0;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  sub_23D92581C(v1, v6, v14);
  v18 = swift_allocObject();
  sub_23D925888(v6, v18 + v12, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4740, &qword_23D9DC7B0);
  v20 = (a1 + *(result + 36));
  *v20 = 0;
  v20[1] = 0;
  v20[2] = sub_23D927E80;
  v20[3] = v18;
  return result;
}

uint64_t sub_23D921CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v3 - 8);
  v96 = &v86 - v4;
  v5 = sub_23D9D8954();
  v99 = *(v5 - 8);
  *&v100 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = v6;
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v91);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v98 = &v86 - v11;
  v90 = type metadata accessor for AXSUIVoiceSettings(0);
  MEMORY[0x28223BE20](v90);
  v89 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4710, &qword_23D9DC798);
  MEMORY[0x28223BE20](v104);
  v95 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v97 = &v86 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4768, &unk_23D9DC7F0);
  MEMORY[0x28223BE20](v102);
  v103 = &v86 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v94);
  v93 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v86 - v19;
  v20 = type metadata accessor for AXSUILanguageDetailView(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - v25;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A8, &unk_23D9DC460);
  MEMORY[0x28223BE20](v101);
  v28 = &v86 - v27;
  v29 = a1;
  if (sub_23D9D88F4())
  {
    sub_23D92581C(a1, v26, type metadata accessor for AXSUILanguageDetailView);
    v30 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v98 = swift_allocObject();
    sub_23D925888(v26, v98 + v30, type metadata accessor for AXSUILanguageDetailView);
    sub_23D92581C(a1, v26, type metadata accessor for AXSUILanguageDetailView);
    v97 = swift_allocObject();
    sub_23D925888(v26, v97 + v30, type metadata accessor for AXSUILanguageDetailView);
    sub_23D92581C(a1, v26, type metadata accessor for AXSUILanguageDetailView);
    v96 = swift_allocObject();
    sub_23D925888(v26, v96 + v30, type metadata accessor for AXSUILanguageDetailView);
    sub_23D92581C(a1, v23, type metadata accessor for AXSUILanguageDetailView);
    v31 = swift_allocObject();
    sub_23D925888(v23, v31 + v30, type metadata accessor for AXSUILanguageDetailView);
    v32 = v101;
    v33 = v100;
    v34 = *(v99 + 56);
    v34(&v28[*(v101 + 68)], 1, 1, v100);
    v35 = v32[18];
    *&v28[v35] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
    swift_storeEnumTagMultiPayload();
    v36 = &v28[v32[19]];
    LOBYTE(v111) = 1;
    sub_23D9DA3A4();
    v37 = *(&v108 + 1);
    *v36 = v108;
    *(v36 + 1) = v37;
    v38 = &v28[v32[20]];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = &v28[v32[21]];
    *v39 = swift_getKeyPath();
    v39[40] = 0;
    v40 = v92;
    v34(v92, 1, 1, v33);
    sub_23D91F2DC(v40, v93, &qword_27E2F4210, &qword_23D9DBE60);
    sub_23D9DA3A4();
    sub_23D91F344(v40, &qword_27E2F4210, &qword_23D9DBE60);
    v41 = v97;
    v42 = v98;
    *v28 = sub_23D929B74;
    *(v28 + 1) = v42;
    *(v28 + 2) = sub_23D929C40;
    *(v28 + 3) = v41;
    v28[48] = 0;
    v43 = v96;
    *(v28 + 7) = sub_23D929D04;
    *(v28 + 8) = v43;
    *(v28 + 4) = sub_23D929D84;
    *(v28 + 5) = v31;
    v44 = &qword_27E2F45A8;
    v45 = &unk_23D9DC460;
    sub_23D91F2DC(v28, v103, &qword_27E2F45A8, &unk_23D9DC460);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F4630, &qword_27E2F45A8, &unk_23D9DC460, &protocol conformance descriptor for AXSUITTSLanguageList<A, B>);
    sub_23D927A14();
    sub_23D9D9B14();
    v46 = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
    v86 = a1;
    sub_23D9DA3D4();
    v47 = *(v20 + 20);
    v48 = v20;
    v87 = v20;
    v49 = *(a1 + v47);
    v50 = v99;
    v94 = *(v99 + 16);
    v51 = v29;
    v52 = v100;
    v94(v7, v51, v100);
    v53 = *(v50 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    (*(v50 + 32))(v54 + ((v53 + 24) & ~v53), v7, v52);

    sub_23D9DA524();

    sub_23D91F344(v9, &qword_27E2F4760, &qword_23D9E0740);
    v55 = v86;
    v56 = v96;
    sub_23D91F2DC(v86 + *(v48 + 28), v96, &qword_27E2F4670, &qword_23D9DC650);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
    v57 = (v53 + 32) & ~v53;
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_23D9DC3E0;
    v94((v58 + v57), v55, v52);
    v59 = sub_23D93D8F8(v58);
    swift_setDeallocating();
    (*(v50 + 8))(v58 + v57, v52);
    swift_deallocClassInstance();
    *&v108 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
    sub_23D9DA5A4();

    v60 = v111;
    v61 = v90;
    v62 = v89;
    v63 = &v89[*(v90 + 28)];
    LOBYTE(v106) = 0;
    v100 = v112;
    sub_23D9DA3A4();
    v64 = *(&v108 + 1);
    *v63 = v108;
    *(v63 + 1) = v64;
    sub_23D9D9C64();
    v65 = v61[10];
    v66 = sub_23D9D89C4();
    (*(*(v66 - 8) + 56))(v62 + v65, 1, 1, v66);
    v67 = (v62 + v61[12]);
    v68 = v62 + v61[13];
    *v68 = swift_getKeyPath();
    *(v68 + 8) = 0;
    v69 = v62 + v61[14];
    LOBYTE(v106) = 0;
    sub_23D9DA3A4();
    v70 = *(&v108 + 1);
    *v69 = v108;
    *(v69 + 8) = v70;
    v71 = v61[15];
    v106 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
    sub_23D9DA3A4();
    *(v62 + v71) = v108;
    v72 = v98;
    sub_23D91F2DC(v98, v62, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D929AE4(v56, v62 + v65);
    *(v62 + v61[11]) = 125;
    v73 = v62 + v61[5];
    *v73 = v60;
    *(v73 + 8) = v100;
    v74 = (v62 + v61[9]);
    *v74 = 0;
    v74[1] = 0;
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_23D9DA5A4();
    sub_23D91F344(v56, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v72, &qword_27E2F4760, &qword_23D9E0740);
    v75 = v109;
    v76 = v110;
    v77 = v62 + v61[6];
    *v77 = v108;
    *(v77 + 16) = v75;
    *(v77 + 24) = v76;
    *v67 = 0;
    v67[1] = 0;
    v78 = v55 + *(v87 + 44);
    LOBYTE(v76) = *v78;
    v79 = *(v78 + 8);
    LOBYTE(v108) = v76;
    *(&v108 + 1) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
    sub_23D9DA3B4();
    LOBYTE(v55) = v111;
    KeyPath = swift_getKeyPath();
    v81 = swift_allocObject();
    *(v81 + 16) = (v55 & 1) == 0;
    v82 = v95;
    sub_23D925888(v62, v95, type metadata accessor for AXSUIVoiceSettings);
    v83 = (v82 + *(v104 + 36));
    *v83 = KeyPath;
    v83[1] = sub_23D929B6C;
    v83[2] = v81;
    v44 = &qword_27E2F4710;
    v45 = &qword_23D9DC798;
    v84 = v97;
    sub_23D92A2BC(v82, v97, &qword_27E2F4710, &qword_23D9DC798);
    sub_23D91F2DC(v84, v103, &qword_27E2F4710, &qword_23D9DC798);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F4630, &qword_27E2F45A8, &unk_23D9DC460, &protocol conformance descriptor for AXSUITTSLanguageList<A, B>);
    sub_23D927A14();
    sub_23D9D9B14();
    v46 = v84;
  }

  return sub_23D91F344(v46, v44, v45);
}

double sub_23D9229A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v31 = &v30 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v32);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = sub_23D9D8954();
  v16 = *(v15 - 8);
  (*(v16 + 16))(a4, a1, v15);
  v17 = type metadata accessor for AXSUILanguageDetailView(0);
  v18 = *(a3 + v17[5]);
  v19 = v17[7];
  v20 = sub_23D9D89C4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a4 + v19, v30, v20);
  (*(v21 + 56))(a4 + v19, 0, 1, v20);
  v22 = sub_23D9D8DA4();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = v31;
  (*(v16 + 56))(v31, 1, 1, v15);
  KeyPath = swift_getKeyPath();
  *(a4 + v17[5]) = v18;
  *(a4 + v17[6]) = 0;
  sub_23D91F2DC(v14, v11, &qword_27E2F5900, &unk_23D9DC640);

  sub_23D9DA3A4();
  sub_23D91F344(v14, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v23, v33, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D9DA3A4();
  sub_23D91F344(v23, &qword_27E2F4210, &qword_23D9DBE60);
  v25 = a4 + v17[10];
  *v25 = KeyPath;
  *(v25 + 8) = 0;
  v26 = a4 + v17[11];
  LOBYTE(v35) = 0;
  sub_23D9DA3A4();
  v27 = *(&v36 + 1);
  *v26 = v36;
  *(v26 + 8) = v27;
  v28 = v17[12];
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  result = *&v36;
  *(a4 + v28) = v36;
  return result;
}

uint64_t sub_23D922D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v24);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = sub_23D9D8954();
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  v17 = *(a2 + *(type metadata accessor for AXSUILanguageDetailView(0) + 20));
  v18 = sub_23D9D8DA4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = sub_23D9D8C74();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  KeyPath = swift_getKeyPath();
  v21 = type metadata accessor for AXSUILanguageAccessoryView(0);
  *(a3 + *(v21 + 20)) = v17;
  v22 = a3 + *(v21 + 24);
  *v22 = KeyPath;
  *(v22 + 8) = 0;
  sub_23D91F2DC(v15, v12, &qword_27E2F5900, &unk_23D9DC640);

  sub_23D9DA3A4();
  sub_23D91F344(v15, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v10, v7, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  return sub_23D91F344(v10, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t sub_23D923034(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D9D8954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_23D927B50(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]), v7 = sub_23D9DA874(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_23D927B50(&qword_27E2F4730, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v15 = sub_23D9DA894();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_23D92324C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4780, &qword_23D9DC860);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_23D92334C(a1, &v10 - v6);
  sub_23D91F2DC(v7, v4, &qword_27E2F4780, &qword_23D9DC860);
  sub_23D929DE4();
  v8 = sub_23D9DA4D4();
  sub_23D91F344(v7, &qword_27E2F4780, &qword_23D9DC860);
  return v8;
}

uint64_t sub_23D92334C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47C8, &qword_23D9DC880);
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - v4;
  v5 = sub_23D9D8954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = v7;
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  MEMORY[0x28223BE20](v42);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47A8, &qword_23D9DC870);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = *(a1 + *(type metadata accessor for AXSUILanguageDetailView(0) + 24));
  if (v14)
  {
    v41 = v3;
    v15 = *(v6 + 16);
    v45 = v13;
    v15(v13, a1, v5);
    v40 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
    sub_23D9DA3D4();
    v15(v8, a1, v5);
    v16 = *(v6 + 80);
    v17 = swift_allocObject();
    v38 = a1;
    *(v17 + 16) = v14;
    v39 = *(v6 + 32);
    v39(v17 + ((v16 + 24) & ~v16), v8, v5);
    v18 = type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0);

    v37 = v5;
    v19 = v45;
    sub_23D9DA524();

    sub_23D91F344(v10, &qword_27E2F4590, &qword_23D9DC410);
    v20 = &v19[*(v18 + 24)];
    v50 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D0, &unk_23D9DC5C0);
    sub_23D9DA3A4();
    v21 = v52;
    *v20 = v51;
    *(v20 + 1) = v21;
    v22 = v44;
    sub_23D9D8DB4();
    v23 = v37;
    v24 = v38;
    v40(v8, v38, v37);
    v25 = swift_allocObject();
    v39(v25 + ((v16 + 16) & ~v16), v8, v23);
    v26 = v48;
    v27 = v45;
    v28 = &v45[*(v48 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
    v29 = v41;
    sub_23D9D8E24();

    (*(v43 + 8))(v22, v29);
    KeyPath = swift_getKeyPath();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47C0, &qword_23D9DC878);
    sub_23D92581C(v24, &v28[v31[10]], type metadata accessor for AXSUILanguageDetailView);
    *&v28[v31[9]] = KeyPath;
    v28[v31[11]] = 1;
    v32 = v46;
    sub_23D92A2BC(v27, v46, &qword_27E2F47A8, &qword_23D9DC870);
    return (*(v47 + 56))(v32, 0, 1, v26);
  }

  else
  {
    v34 = v46;
    v35 = *(v47 + 56);
    v36 = v48;

    return v35(v34, 1, 1, v36);
  }
}

uint64_t sub_23D9238D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  sub_23D9DA9B4();
  v3[5] = sub_23D9DA9A4();
  v5 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D923970, v5, v4);
}

uint64_t sub_23D923970()
{
  v1 = v0[4];

  if (*(v1 + 16) && (v2 = sub_23D95E9D4(v0[3]), (v3 & 1) != 0))
  {
    v4 = v2;
    v5 = v0[2];
    v6 = *(v0[4] + 56);
    v7 = sub_23D9D8954();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v5, v6 + *(v8 + 72) * v4, v7);
    v9 = 0;
  }

  else
  {
    v7 = sub_23D9D8954();
    v8 = *(v7 - 8);
    v9 = 1;
  }

  (*(v8 + 56))(v0[2], v9, 1, v7);
  v10 = v0[1];

  return v10();
}

void *sub_23D923AD0()
{
  type metadata accessor for AXSUILanguageDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  return sub_23D9DA3B4();
}

uint64_t sub_23D923B28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_23D91F2DC(a1, &v9 - v6, &qword_27E2F4210, &qword_23D9DBE60);
  type metadata accessor for AXSUILanguageDetailView(0);
  sub_23D91F2DC(v7, v4, &qword_27E2F4210, &qword_23D9DBE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  sub_23D9DA3C4();
  return sub_23D91F344(v7, &qword_27E2F4210, &qword_23D9DBE60);
}

void *sub_23D923C40(uint64_t a1)
{
  type metadata accessor for AXSUILanguageDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4748, &qword_23D9DC7B8);
  result = sub_23D9DA3B4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
    sub_23D9DAA44();
  }

  return result;
}

uint64_t sub_23D923CE0()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AXSUILanguageAccessoryView(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_23D9DACD4();
    v8 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_23D923E34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4230, &qword_23D9DBE70);
  MEMORY[0x28223BE20](v69);
  v4 = &v64 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v64 - v6;
  v8 = type metadata accessor for AXSUILanguageAccessoryView(0);
  v9 = *(v8 + 32);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v68 = v9;
  sub_23D9DA3B4();
  v10 = sub_23D9D8C74();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v71 = v4;
  if (v12)
  {
    sub_23D91F344(v7, &qword_27E2F4460, &qword_23D9DC2A0);
    v13 = 0xE300000000000000;
    v14 = 2108704;
  }

  else
  {
    v15 = MEMORY[0x28223BE20](v12);
    v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v17, v7, v10, v15);
    sub_23D91F344(v7, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9BB28C();
    v14 = v18;
    v13 = v19;
    (*(v11 + 8))(v17, v10);
  }

  v73 = v14;
  v74 = v13;
  sub_23D91B650();
  v20 = sub_23D9D9F04();
  v22 = v21;
  v24 = v23;
  sub_23D9DA2F4();
  v25 = sub_23D9D9EB4();
  v27 = v26;
  LODWORD(v65) = v28;
  v66 = v29;

  sub_23D9274BC(v20, v22, v24 & 1);

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v64 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3B4();
  v33 = sub_23D9D8DA4();
  v34 = 0;
  v35 = 0;
  if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
  {
    v34 = sub_23D9D8D84();
    v35 = v36;
  }

  sub_23D91F344(v32, &qword_27E2F5900, &unk_23D9DC640);
  v37 = v71;
  v38 = &v71[*(v69 + 9)];
  v39 = type metadata accessor for AXSUIVoiceLoader(0);
  sub_23D9DA3D4();
  KeyPath = swift_getKeyPath();
  v69 = &v64;
  *v38 = v34;
  v38[1] = v35;
  v41 = v38 + *(v39 + 24);
  *v41 = KeyPath;
  v41[8] = 0;
  *v37 = v25;
  *(v37 + 8) = v27;
  *(v37 + 16) = v65 & 1;
  *(v37 + 24) = v66;
  v42 = *(v8 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](KeyPath);
  sub_23D92581C(v2, &v64 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUILanguageAccessoryView);
  sub_23D9DA9B4();
  v44 = sub_23D9DA9A4();
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D85700];
  *(v46 + 16) = v44;
  *(v46 + 24) = v47;
  sub_23D925888(&v64 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45, type metadata accessor for AXSUILanguageAccessoryView);
  v48 = sub_23D9DA9F4();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_23D9DA9C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v66 = sub_23D9D9614();
    v67 = &v64;
    v65 = *(v66 - 8);
    MEMORY[0x28223BE20](v66);
    v68 = &v64;
    v53 = &v64 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_23D9DAE64();

    v73 = 0xD000000000000043;
    v74 = 0x800000023D9E3BB0;
    v72 = 135;
    v54 = sub_23D9DAF94();
    MEMORY[0x23EEF3C30](v54);

    v56 = MEMORY[0x28223BE20](v55);
    (*(v49 + 16))(&v64 - v51, &v64 - v51, v48, v56);
    sub_23D9D9604();
    (*(v49 + 8))(&v64 - v51, v48);
    v57 = v70;
    sub_23D92A2BC(v71, v70, &qword_27E2F4230, &qword_23D9DBE70);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4238, &qword_23D9DBE78);
    return (*(v65 + 32))(v57 + *(v58 + 36), v53, v66);
  }

  else
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4240, &unk_23D9DBE80);
    v61 = v70;
    v62 = (v70 + *(v60 + 36));
    v63 = sub_23D9D9584();
    (*(v49 + 32))(&v62[*(v63 + 20)], &v64 - v51, v48);
    *v62 = &unk_23D9DC730;
    *(v62 + 1) = v46;
    return sub_23D92A2BC(v71, v61, &qword_27E2F4230, &qword_23D9DBE70);
  }
}

uint64_t sub_23D92462C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B8, &qword_23D9DC738);
  v3[3] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C0, &qword_23D9DC740);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C8, &qword_23D9DC748);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46D0, &qword_23D9DC750);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = sub_23D9DA9B4();
  v3[18] = sub_23D9DA9A4();
  v9 = sub_23D9DA994();
  v3[19] = v9;
  v3[20] = v8;

  return MEMORY[0x2822009F8](sub_23D9248AC, v9, v8);
}

uint64_t sub_23D9248AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[21] = type metadata accessor for AXSUILanguageAccessoryView(0);
  sub_23D9D8DB4();
  sub_23D923CE0();
  sub_23D9D8DD4();

  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_23D9249D0;
  v5 = v0[14];
  v6 = v0[10];

  return MEMORY[0x282138898](v6, v5);
}

uint64_t sub_23D9249D0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_23D924AF0, v3, v2);
}

uint64_t sub_23D924AF0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  *(v0 + 208) = *(*(v0 + 168) + 28);
  sub_23D91F2DC(v1, v2, &qword_27E2F5900, &unk_23D9DC640);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3C4();
  sub_23D91F344(v1, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9D8E14();
  v3 = sub_23D9DA9A4();
  *(v0 + 192) = v3;
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_23D924C54;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v5, v3, v7, v6);
}

uint64_t sub_23D924C54()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_23D924D98, v3, v2);
}

uint64_t sub_23D924D98()
{
  v1 = v0[3];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[14];
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];

    (*(v5 + 8))(v6, v7);
    (*(v3 + 8))(v2, v4);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[9];
    v10 = v0[10];
    sub_23D92A2BC(v1, v10, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D91F2DC(v10, v11, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D9DA3C4();
    sub_23D91F344(v10, &qword_27E2F5900, &unk_23D9DC640);
    v12 = sub_23D9DA9A4();
    v0[24] = v12;
    v13 = swift_task_alloc();
    v0[25] = v13;
    *v13 = v0;
    v13[1] = sub_23D924C54;
    v14 = v0[3];
    v15 = v0[4];
    v16 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v14, v12, v16, v15);
  }
}

uint64_t AXSUILanguageVoicePicker.init(voiceTable:macroLanguageDisambiguations:overrideLanguage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for AXSUILanguageVoicePicker(0);
  v9 = *(v8 + 28);
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  a4[1] = a2;
  return sub_23D92A2BC(a3, a4 + *(v8 + 24), &qword_27E2F4210, &qword_23D9DBE60);
}

uint64_t AXSUILanguageVoicePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for AXSUILanguageVoicePicker(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D92581C(v2, v12, type metadata accessor for AXSUILanguageVoicePicker);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = swift_allocObject();
  sub_23D925888(v12, v25 + v13, type metadata accessor for AXSUILanguageVoicePicker);
  sub_23D92581C(v2, v12, type metadata accessor for AXSUILanguageVoicePicker);
  v14 = swift_allocObject();
  sub_23D925888(v12, v14 + v13, type metadata accessor for AXSUILanguageVoicePicker);
  v15 = *(v9 + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A8, &unk_23D9DC460);
  sub_23D91F2DC(v2 + v15, a1 + v16[17], &qword_27E2F4210, &qword_23D9DBE60);
  v17 = v16[18];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v18 = a1 + v16[19];
  v28 = 1;
  sub_23D9DA3A4();
  v19 = v30;
  *v18 = v29;
  *(v18 + 8) = v19;
  v20 = a1 + v16[20];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a1 + v16[21];
  *v21 = swift_getKeyPath();
  *(v21 + 40) = 0;
  v22 = sub_23D9D8954();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_23D91F2DC(v7, v26, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D9DA3A4();
  result = sub_23D91F344(v7, &qword_27E2F4210, &qword_23D9DBE60);
  v24 = v25;
  *a1 = sub_23D9258F0;
  *(a1 + 8) = v24;
  *(a1 + 16) = sub_23D925D8C;
  *(a1 + 24) = v14;
  *(a1 + 48) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

double sub_23D92544C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v33 = &v30 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v34);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = sub_23D9D8954();
  v16 = *(v15 - 8);
  (*(v16 + 16))(a4, a1, v15);
  v17 = *a3;
  v18 = a3[1];
  v31 = v17;
  v19 = type metadata accessor for AXSUILanguageDetailView(0);
  v20 = v19[7];
  v21 = sub_23D9D89C4();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a4 + v20, KeyPath, v21);
  (*(v22 + 56))(a4 + v20, 0, 1, v21);
  v23 = sub_23D9D8DA4();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = v33;
  (*(v16 + 56))(v33, 1, 1, v15);
  KeyPath = swift_getKeyPath();
  *(a4 + v19[5]) = v31;
  *(a4 + v19[6]) = v18;
  sub_23D91F2DC(v14, v11, &qword_27E2F5900, &unk_23D9DC640);

  sub_23D9DA3A4();
  sub_23D91F344(v14, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v24, v35, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D9DA3A4();
  sub_23D91F344(v24, &qword_27E2F4210, &qword_23D9DBE60);
  v25 = a4 + v19[10];
  *v25 = KeyPath;
  *(v25 + 8) = 0;
  v26 = a4 + v19[11];
  LOBYTE(v37) = 0;
  sub_23D9DA3A4();
  v27 = *(&v38 + 1);
  *v26 = v38;
  *(v26 + 8) = v27;
  v28 = v19[12];
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  result = *&v38;
  *(a4 + v28) = v38;
  return result;
}

uint64_t sub_23D92581C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D925888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D92591C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v24);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = sub_23D9D8954();
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  v17 = *a2;
  v18 = sub_23D9D8DA4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = sub_23D9D8C74();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  KeyPath = swift_getKeyPath();
  v21 = type metadata accessor for AXSUILanguageAccessoryView(0);
  *(a3 + *(v21 + 20)) = v17;
  v22 = a3 + *(v21 + 24);
  *v22 = KeyPath;
  *(v22 + 8) = 0;
  sub_23D91F2DC(v15, v12, &qword_27E2F5900, &unk_23D9DC640);

  sub_23D9DA3A4();
  sub_23D91F344(v15, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v10, v7, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  return sub_23D91F344(v10, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for AXSUILanguageVoicePicker(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  v4 = sub_23D9D8954();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D9D9574();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_23D925DBC(uint64_t *a1)
{
  v2 = *(sub_23D9D8954() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23D951300(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_23D928420(v5);
  *a1 = v3;
}

uint64_t sub_23D925EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23D925FEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23D9D8954();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23D926100(uint64_t a1)
{
  sub_23D9D8954();
  if (v1 <= 0x3F)
  {
    sub_23D927420(319, &qword_27E2F45C0, &qword_27E2F4210, &qword_23D9DBE60, MEMORY[0x277CE1200]);
    if (v2 <= 0x3F)
    {
      sub_23D927420(319, &qword_27E2F45C8, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277CE10B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23D926208(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23D926358(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D926494(uint64_t a1)
{
  sub_23D927420(319, &qword_27E2F45F0, &qword_27E2F4470, &qword_23D9DC2B0, MEMORY[0x277CE6748]);
  if (v1 <= 0x3F)
  {
    sub_23D927420(319, &qword_27E2F45F8, &qword_27E2F4600, &qword_23D9DC5F8, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23D92736C(319, &qword_27E2F4608, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23D92736C(319, &qword_27E2F4610, MEMORY[0x277CDD840], MEMORY[0x277CDF470]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_23D926644()
{
  result = qword_27E2F4620;
  if (!qword_27E2F4620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4628, &unk_23D9DC600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4578, &qword_23D9DC400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4580, &qword_23D9DC408);
    sub_23D9D9994();
    sub_23D91F01C(&qword_27E2F4588, &qword_27E2F4580, &qword_23D9DC408, MEMORY[0x277CDF040]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4620);
  }

  return result;
}

uint64_t sub_23D9267F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23D926998(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_23D9D8954();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_23D926B44(uint64_t a1)
{
  sub_23D9D8954();
  if (v1 <= 0x3F)
  {
    sub_23D927420(319, &qword_27E2F45F0, &qword_27E2F4470, &qword_23D9DC2B0, MEMORY[0x277CE6748]);
    if (v2 <= 0x3F)
    {
      sub_23D92736C(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
      if (v3 <= 0x3F)
      {
        sub_23D927420(319, &qword_27E2F4660, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE10B0]);
        if (v4 <= 0x3F)
        {
          sub_23D927420(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0, MEMORY[0x277CE10B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23D926CD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_23D926ECC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_23D9D8954();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_23D9270CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D927104(uint64_t a1)
{
  sub_23D9D8954();
  if (v1 <= 0x3F)
  {
    sub_23D927420(319, &qword_27E2F45F0, &qword_27E2F4470, &qword_23D9DC2B0, MEMORY[0x277CE6748]);
    if (v2 <= 0x3F)
    {
      sub_23D927420(319, &qword_27E2F45F8, &qword_27E2F4600, &qword_23D9DC5F8, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23D92736C(319, &qword_27E2F4690, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23D927420(319, &qword_27E2F4660, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE10B0]);
          if (v5 <= 0x3F)
          {
            sub_23D927420(319, &qword_27E2F4698, &qword_27E2F4210, &qword_23D9DBE60, MEMORY[0x277CE10B0]);
            if (v6 <= 0x3F)
            {
              sub_23D92736C(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
              if (v7 <= 0x3F)
              {
                sub_23D9273D0();
                if (v8 <= 0x3F)
                {
                  sub_23D927420(319, &qword_27E2F46A8, &qword_27E2F46B0, &qword_23D9E0CB0, MEMORY[0x277CE10B0]);
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
  }
}

void sub_23D92736C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_23D9273D0()
{
  if (!qword_27E2F46A0)
  {
    v0 = sub_23D9DA3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F46A0);
    }
  }
}

void sub_23D927420(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23D9274BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23D9274CC()
{
  v1 = type metadata accessor for AXSUILanguageAccessoryView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = sub_23D9D8954();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = v0 + v2 + *(v1 + 28);
  v5 = sub_23D9D8DA4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);

  v7 = v0 + v2 + *(v1 + 32);
  v8 = sub_23D9D8C74();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);

  return swift_deallocObject();
}

uint64_t sub_23D92770C()
{
  v2 = *(type metadata accessor for AXSUILanguageAccessoryView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D92A70C;

  return sub_23D92462C(v4, v5, v0 + v3);
}

unint64_t sub_23D92784C()
{
  result = qword_27E2F46E0;
  if (!qword_27E2F46E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F46D8, &qword_23D9DC758);
    sub_23D9278D8();
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F46E0);
  }

  return result;
}

unint64_t sub_23D9278D8()
{
  result = qword_27E2F46E8;
  if (!qword_27E2F46E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F46F0, &qword_23D9DC788);
    sub_23D92795C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F46E8);
  }

  return result;
}

unint64_t sub_23D92795C()
{
  result = qword_27E2F46F8;
  if (!qword_27E2F46F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4700, &qword_23D9DC790);
    sub_23D91F01C(&qword_27E2F4630, &qword_27E2F45A8, &unk_23D9DC460, &protocol conformance descriptor for AXSUITTSLanguageList<A, B>);
    sub_23D927A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F46F8);
  }

  return result;
}

unint64_t sub_23D927A14()
{
  result = qword_27E2F4708;
  if (!qword_27E2F4708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4710, &qword_23D9DC798);
    sub_23D927B50(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings, &protocol conformance descriptor for AXSUIVoiceSettings);
    sub_23D91F01C(&qword_27E2F4720, &qword_27E2F4728, &qword_23D9DC7A0, MEMORY[0x277CE08A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4708);
  }

  return result;
}

unint64_t sub_23D927AFC()
{
  result = qword_27E2F6C20;
  if (!qword_27E2F6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6C20);
  }

  return result;
}

uint64_t sub_23D927B50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_58Tm()
{
  v1 = type metadata accessor for AXSUILanguageDetailView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_23D9D8954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v1[7];
  v7 = sub_23D9D89C4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v9 = v2 + v1[8];
  v10 = sub_23D9D8DA4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);

  v12 = v2 + v1[9];
  if (!(*(v4 + 48))(v12, 1, v3))
  {
    v5(v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);

  return swift_deallocObject();
}

uint64_t sub_23D927EAC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_23D927F28()
{
  v1 = type metadata accessor for AXSUILanguageDetailView(0);
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = sub_23D9D8954();
  v5 = *(v4 - 8);
  v14 = *(v5 + 8);
  v14(v3, v4);

  v6 = v1[7];
  v7 = sub_23D9D89C4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v3 + v1[8];
  v10 = sub_23D9D8DA4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);

  v12 = v3 + v1[9];
  if (!(*(v5 + 48))(v12, 1, v4))
  {
    v14(v12, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);

  return swift_deallocObject();
}

uint64_t sub_23D928220(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSUILanguageDetailView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D928310;

  return sub_23D920F20(a1, v6, v7, v1 + v5);
}

uint64_t sub_23D928310()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23D928420(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_23D9DAF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23D9D8954();
        v6 = sub_23D9DA984();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23D9D8954() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23D928830(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23D92854C(0, v2, 1, a1);
  }
}

void sub_23D92854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23D9D8954();
  MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = *(v19 + 56);
    v46 = (v19 - 8);
    v47 = v20;
    v52 = v19;
    v22 = (v18 + v21 * (a3 - 1));
    v42 = -v21;
    v43 = (v19 + 16);
    v23 = a1 - a3;
    v44 = v18;
    v36 = v21;
    v24 = v18 + v21 * a3;
LABEL_5:
    v40 = v22;
    v41 = a3;
    v38 = v24;
    v39 = v23;
    while (1)
    {
      v25 = v47;
      (v47)(v17, v24, v8, v15);
      v25(v12, v22, v8);
      v26 = sub_23D9D8934();
      if (!v27)
      {
        v26 = sub_23D9D88D4();
      }

      v50 = v26;
      v51 = v27;
      v28 = sub_23D9D8934();
      if (!v29)
      {
        v28 = sub_23D9D88D4();
      }

      v48 = v28;
      v49 = v29;
      sub_23D91B650();
      v30 = sub_23D9DAD94();

      v31 = *v46;
      (*v46)(v12, v8);
      v31(v17, v8);
      if (v30 != -1)
      {
LABEL_4:
        a3 = v41 + 1;
        v22 = &v40[v36];
        v23 = v39 - 1;
        v24 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v32(v22, v33, v8);
      v22 += v42;
      v24 += v42;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_23D928830(int64_t *a1, uint64_t a2, char *a3, int64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_23D9D8954();
  MEMORY[0x28223BE20](v9);
  v138 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v151 = &v130 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v130 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v130 - v17;
  MEMORY[0x28223BE20](v19);
  v143 = &v130 - v20;
  MEMORY[0x28223BE20](v21);
  v145 = &v130 - v22;
  MEMORY[0x28223BE20](v23);
  v27 = MEMORY[0x28223BE20](v24);
  v131 = &v130 - v28;
  v29 = *(a3 + 1);
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_108:
    a4 = *v134;
    if (!*v134)
    {
      goto LABEL_149;
    }

    v5 = v26;
    v18 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v124 = v18;
LABEL_111:
      v161 = v124;
      v18 = *(v124 + 2);
      if (v18 >= 2)
      {
        while (*a3)
        {
          v125 = *&v124[16 * v18];
          v126 = v124;
          v127 = *&v124[16 * v18 + 24];
          sub_23D929448(*a3 + *(v5 + 9) * v125, (*a3 + *(v5 + 9) * *&v124[16 * v18 + 16]), *a3 + *(v5 + 9) * v127, a4);
          if (v6)
          {
            goto LABEL_119;
          }

          if (v127 < v125)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_23D950D9C(v126);
          }

          if (v18 - 2 >= *(v126 + 2))
          {
            goto LABEL_137;
          }

          v128 = &v126[16 * v18];
          *v128 = v125;
          *(v128 + 1) = v127;
          v161 = v126;
          sub_23D950D10(v18 - 1);
          v124 = v161;
          v18 = *(v161 + 2);
          if (v18 <= 1)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_147;
      }

LABEL_119:

      return;
    }

LABEL_143:
    v124 = sub_23D950D9C(v18);
    goto LABEL_111;
  }

  v130 = v25;
  v30 = 0;
  v154 = v26 + 16;
  v155 = (v26 + 8);
  v153 = (v26 + 32);
  v31 = MEMORY[0x277D84F90];
  v136 = a3;
  v146 = v26;
  v133 = a4;
  v147 = v15;
  v152 = v9;
  v156 = v18;
  while (1)
  {
    v139 = v31;
    if (v30 + 1 >= v29)
    {
      v53 = v30 + 1;
    }

    else
    {
      v148 = v29;
      v32 = *a3;
      v33 = *(v26 + 72);
      v34 = v32 + v33 * (v30 + 1);
      v135 = v6;
      v35 = *(v26 + 16);
      v36 = v131;
      (v35)(v131, v34, v9, v27);
      v150 = v32;
      v37 = v32 + v33 * v30;
      v38 = v30;
      v39 = v130;
      v144 = v35;
      (v35)(v130, v37, v9);
      v40 = v135;
      LODWORD(v149) = sub_23D920764(v36);
      v135 = v40;
      if (v40)
      {
        v129 = *v155;
        (*v155)(v39, v9);
        (v129)(v36, v9);

        return;
      }

      v5 = *v155;
      (*v155)(v39, v9);
      v142 = v5;
      (v5)(v36, v9);
      v132 = v38;
      v41 = v38 + 2;
      v42 = v150 + v33 * v41;
      v43 = v145;
      v44 = v33;
      v150 = v33;
      do
      {
        if (v148 == v41)
        {
          v53 = v148;
          goto LABEL_16;
        }

        v5 = v144;
        (v144)(v43, v42, v9);
        v48 = v143;
        (v5)(v143, v34, v9);
        v49 = sub_23D9D8934();
        if (!v50)
        {
          v49 = sub_23D9D88D4();
        }

        v159 = v49;
        v160 = v50;
        v51 = sub_23D9D8934();
        if (!v52)
        {
          v51 = sub_23D9D88D4();
        }

        v157 = v51;
        v158 = v52;
        sub_23D91B650();
        v45 = sub_23D9DAD94();

        v46 = v48;
        v47 = v142;
        (v142)(v46, v9);
        v43 = v145;
        (v47)(v145, v9);
        ++v41;
        v44 = v150;
        v42 += v150;
        v34 += v150;
        v15 = v147;
      }

      while (((v149 ^ (v45 != -1)) & 1) != 0);
      v53 = v41 - 1;
LABEL_16:
      v6 = v135;
      a3 = v136;
      v26 = v146;
      v54 = v139;
      a4 = v133;
      v18 = v156;
      v30 = v132;
      if (v149)
      {
        if (v53 < v132)
        {
          goto LABEL_142;
        }

        if (v132 < v53)
        {
          v55 = v44 * (v53 - 1);
          v56 = v53 * v44;
          v148 = v53;
          v57 = v53;
          v58 = v132;
          v59 = v132 * v44;
          do
          {
            if (v58 != --v57)
            {
              v5 = *a3;
              if (!*a3)
              {
                goto LABEL_146;
              }

              v60 = *v153;
              (*v153)(v138, &v5[v59], v9, v54);
              if (v59 < v55 || &v5[v59] >= &v5[v56])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v59 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v60(&v5[v55], v138, v9);
              a3 = v136;
              v26 = v146;
              v54 = v139;
              v44 = v150;
            }

            ++v58;
            v55 -= v44;
            v56 -= v44;
            v59 += v44;
          }

          while (v58 < v57);
          v6 = v135;
          a4 = v133;
          v15 = v147;
          v53 = v148;
          v18 = v156;
          v30 = v132;
        }
      }
    }

    v61 = *(a3 + 1);
    if (v53 >= v61)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v53, v30))
    {
      goto LABEL_139;
    }

    if (v53 - v30 >= a4)
    {
LABEL_39:
      v63 = v53;
      if (v53 < v30)
      {
        goto LABEL_138;
      }

      goto LABEL_40;
    }

    if (__OFADD__(v30, a4))
    {
      goto LABEL_140;
    }

    if (v30 + a4 >= v61)
    {
      v62 = *(a3 + 1);
    }

    else
    {
      v62 = v30 + a4;
    }

    if (v62 < v30)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v53 == v62)
    {
      goto LABEL_39;
    }

    v135 = v6;
    v110 = *a3;
    v111 = *(v26 + 72);
    v112 = *(v26 + 16);
    v113 = *a3 + v111 * (v53 - 1);
    v149 = -v111;
    v132 = v30;
    v5 = (v30 - v53);
    v150 = v110;
    v137 = v111;
    a4 = v110 + v53 * v111;
    v140 = v62;
LABEL_93:
    v148 = v53;
    v141 = a4;
    v142 = v5;
    v144 = v113;
    v114 = v113;
LABEL_94:
    v112(v18, a4, v9, v27);
    (v112)(v15, v114, v9);
    v115 = sub_23D9D8934();
    if (!v116)
    {
      v115 = sub_23D9D88D4();
    }

    v159 = v115;
    v160 = v116;
    v117 = sub_23D9D8934();
    if (!v118)
    {
      v117 = sub_23D9D88D4();
    }

    v157 = v117;
    v158 = v118;
    sub_23D91B650();
    v119 = sub_23D9DAD94();

    v120 = *v155;
    v9 = v152;
    (*v155)(v15, v152);
    (v120)(v156, v9);
    if (v119 == -1)
    {
      break;
    }

    v18 = v156;
LABEL_92:
    v53 = v148 + 1;
    v113 = &v144[v137];
    v5 = v142 - 1;
    a4 = v141 + v137;
    v63 = v140;
    if (v148 + 1 != v140)
    {
      goto LABEL_93;
    }

    v6 = v135;
    a3 = v136;
    v30 = v132;
    if (v140 < v132)
    {
      goto LABEL_138;
    }

LABEL_40:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v139;
    }

    else
    {
      v31 = sub_23D93C534(0, *(v139 + 2) + 1, 1, v139);
    }

    v65 = *(v31 + 2);
    v64 = *(v31 + 3);
    v18 = v65 + 1;
    v26 = v146;
    if (v65 >= v64 >> 1)
    {
      v31 = sub_23D93C534((v64 > 1), v65 + 1, 1, v31);
      v26 = v146;
    }

    *(v31 + 2) = v18;
    v66 = &v31[16 * v65];
    *(v66 + 4) = v30;
    *(v66 + 5) = v63;
    v140 = v63;
    v67 = *v134;
    if (!*v134)
    {
      goto LABEL_148;
    }

    if (v65)
    {
      while (2)
      {
        a4 = v18 - 1;
        if (v18 >= 4)
        {
          v72 = &v31[16 * v18 + 32];
          v73 = *(v72 - 64);
          v74 = *(v72 - 56);
          v78 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          if (v78)
          {
            goto LABEL_125;
          }

          v77 = *(v72 - 48);
          v76 = *(v72 - 40);
          v78 = __OFSUB__(v76, v77);
          v70 = v76 - v77;
          v71 = v78;
          if (v78)
          {
            goto LABEL_126;
          }

          v79 = &v31[16 * v18];
          v81 = *v79;
          v80 = *(v79 + 1);
          v78 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v78)
          {
            goto LABEL_128;
          }

          v78 = __OFADD__(v70, v82);
          v83 = v70 + v82;
          if (v78)
          {
            goto LABEL_131;
          }

          if (v83 >= v75)
          {
            v101 = &v31[16 * a4 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v78 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v78)
            {
              goto LABEL_135;
            }

            if (v70 < v104)
            {
              a4 = v18 - 2;
            }
          }

          else
          {
LABEL_59:
            if (v71)
            {
              goto LABEL_127;
            }

            v84 = &v31[16 * v18];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_130;
            }

            v90 = &v31[16 * a4 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_133;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_134;
            }

            if (v88 + v93 < v70)
            {
              goto LABEL_73;
            }

            if (v70 < v93)
            {
              a4 = v18 - 2;
            }
          }
        }

        else
        {
          if (v18 == 3)
          {
            v68 = *(v31 + 4);
            v69 = *(v31 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
            goto LABEL_59;
          }

          v94 = &v31[16 * v18];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_73:
          if (v89)
          {
            goto LABEL_129;
          }

          v97 = &v31[16 * a4];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_132;
          }

          if (v100 < v88)
          {
            break;
          }
        }

        v105 = a4 - 1;
        if (a4 - 1 >= v18)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v106 = *a3;
        if (!*a3)
        {
          goto LABEL_145;
        }

        v5 = a3;
        a3 = v31;
        v18 = *&v31[16 * v105 + 32];
        v107 = *&v31[16 * a4 + 40];
        sub_23D929448(v106 + *(v26 + 72) * v18, (v106 + *(v26 + 72) * *&v31[16 * a4 + 32]), v106 + *(v26 + 72) * v107, v67);
        if (v6)
        {
          goto LABEL_119;
        }

        if (v107 < v18)
        {
          goto LABEL_123;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v108 = a3;
        }

        else
        {
          v108 = sub_23D950D9C(a3);
        }

        if (v105 >= *(v108 + 2))
        {
          goto LABEL_124;
        }

        a3 = v5;
        v109 = &v108[16 * v105];
        *(v109 + 4) = v18;
        *(v109 + 5) = v107;
        v161 = v108;
        sub_23D950D10(a4);
        v31 = v161;
        v18 = *(v161 + 2);
        v26 = v146;
        v15 = v147;
        if (v18 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v29 = *(a3 + 1);
    v30 = v140;
    a4 = v133;
    v18 = v156;
    if (v140 >= v29)
    {
      goto LABEL_108;
    }
  }

  if (v150)
  {
    v121 = *v153;
    v122 = v151;
    (*v153)(v151, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v121(v114, v122, v9);
    v114 += v149;
    a4 += v149;
    v123 = __CFADD__(v5++, 1);
    v18 = v156;
    if (v123)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void sub_23D929448(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v69 = a3;
  v7 = sub_23D9D8954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v56 - v11;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = v69 - a2;
  if (v69 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v76 = a1;
  v75 = a4;
  v67 = v18;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = &a4[v22];
    if (v22 >= 1)
    {
      v40 = -v67;
      v59 = (v8 + 8);
      v60 = (v8 + 16);
      v41 = v39;
      v61 = a4;
      v68 = -v67;
      do
      {
        v57 = v39;
        v42 = a2;
        v43 = &a2[v40];
        v45 = v64;
        v44 = v65;
        v62 = v42;
        v63 = v43;
        while (1)
        {
          v47 = v69;
          if (v42 <= a1)
          {
            v76 = v42;
            v74 = v57;
            goto LABEL_68;
          }

          v58 = v39;
          v67 = v41;
          v48 = *v60;
          v66 = (v41 + v40);
          v48(v45);
          (v48)(v44, v43, v7);
          v49 = sub_23D9D8934();
          if (!v50)
          {
            v49 = sub_23D9D88D4();
          }

          v72 = v49;
          v73 = v50;
          v44 = v65;
          v51 = sub_23D9D8934();
          v41 = v67;
          if (!v52)
          {
            v51 = sub_23D9D88D4();
          }

          v69 = &v47[v68];
          v70 = v51;
          v71 = v52;
          sub_23D91B650();
          v53 = sub_23D9DAD94();

          v54 = *v59;
          (*v59)(v44, v7);
          v45 = v64;
          v54(v64, v7);
          if (v53 == -1)
          {
            break;
          }

          v55 = v66;
          v39 = v66;
          v43 = v63;
          if (v47 < v41 || v69 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v47 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v41 = v39;
          v42 = v62;
          v46 = v55 > v61;
          v40 = v68;
          if (!v46)
          {
            a2 = v62;
            goto LABEL_67;
          }
        }

        a2 = v63;
        if (v47 < v62 || v69 >= v62)
        {
          swift_arrayInitWithTakeFrontToBack();
          v39 = v58;
          v40 = v68;
        }

        else
        {
          v39 = v58;
          v40 = v68;
          if (v47 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v41 > v61);
    }

LABEL_67:
    v76 = a2;
    v74 = v39;
  }

  else
  {
    v21 = v20 * v18;
    v68 = v14;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = &a4[v21];
    v74 = &a4[v21];
    if (v21 >= 1 && a2 < v69)
    {
      v63 = *(v8 + 16);
      v64 = v16;
      v65 = (v8 + 16);
      v24 = (v8 + 8);
      do
      {
        v25 = a2;
        v26 = v63;
        (v63)(v16, a2, v7);
        (v26)(v68, a4, v7);
        v27 = sub_23D9D8934();
        if (v28)
        {
          v29 = v28;
          v30 = a4;
        }

        else
        {
          v30 = a4;
          v27 = sub_23D9D88D4();
          v29 = v31;
        }

        v72 = v27;
        v73 = v29;
        v32 = v68;
        v33 = sub_23D9D8934();
        if (!v34)
        {
          v33 = sub_23D9D88D4();
        }

        v70 = v33;
        v71 = v34;
        sub_23D91B650();
        v35 = sub_23D9DAD94();

        v36 = *v24;
        (*v24)(v32, v7);
        v16 = v64;
        v36(v64, v7);
        if (v35 == -1)
        {
          a2 = &v25[v67];
          a4 = v30;
          if (a1 < v25 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v38 = v67;
          goto LABEL_39;
        }

        v37 = v30;
        v38 = v67;
        a4 = (v37 + v67);
        a2 = v25;
        if (a1 < v37 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v37)
        {
          swift_arrayInitWithTakeBackToFront();
          v75 = a4;
          goto LABEL_39;
        }

        v75 = a4;
LABEL_39:
        a1 += v38;
        v76 = a1;
      }

      while (a4 < v66 && a2 < v69);
    }
  }

LABEL_68:
  sub_23D99F580(&v76, &v75, &v74);
}

uint64_t sub_23D929AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D929BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_23D929C6C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_23D929D04(uint64_t a1)
{
  type metadata accessor for AXSUILanguageDetailView(0);
  v2 = sub_23D9D8904();
  LOBYTE(a1) = sub_23D923034(a1, v2);

  return a1 & 1;
}

uint64_t sub_23D929D84()
{
  v1 = *(type metadata accessor for AXSUILanguageDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D92324C(v2);
}

unint64_t sub_23D929DE4()
{
  result = qword_27E2F4788;
  if (!qword_27E2F4788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4780, &qword_23D9DC860);
    sub_23D929E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4788);
  }

  return result;
}

unint64_t sub_23D929E68()
{
  result = qword_27E2F4790;
  if (!qword_27E2F4790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4798, &qword_23D9DC868);
    sub_23D929EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4790);
  }

  return result;
}

unint64_t sub_23D929EEC()
{
  result = qword_27E2F47A0;
  if (!qword_27E2F47A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F47A8, &qword_23D9DC870);
    sub_23D927B50(&qword_27E2F47B0, type metadata accessor for AXSUIMacroLanguageDisambiguationSelection, &protocol conformance descriptor for AXSUIMacroLanguageDisambiguationSelection);
    sub_23D91F01C(&qword_27E2F47B8, &qword_27E2F47C0, &qword_23D9DC878, &unk_23D9E32F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F47A0);
  }

  return result;
}

uint64_t objectdestroy_73Tm()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23D92A0B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_23D9D8954() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_23D92A148()
{
  v1 = sub_23D9D8954();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_23D92A1D0(uint64_t a1, void *a2)
{
  v6 = *(sub_23D9D8954() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23D928310;

  return sub_23D9238D0(a1, a2, v2 + v7);
}

uint64_t sub_23D92A2BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23D92A334()
{
  result = qword_27E2F47E0;
  if (!qword_27E2F47E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4210, &qword_23D9DBE60);
    sub_23D927B50(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F47E0);
  }

  return result;
}

uint64_t sub_23D92A3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4230, &qword_23D9DBE70);
  sub_23D92A44C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D92A44C()
{
  result = qword_27E2F4810;
  if (!qword_27E2F4810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4230, &qword_23D9DBE70);
    sub_23D927B50(&qword_27E2F4818, type metadata accessor for AXSUIVoiceLoader, &unk_23D9E2550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4810);
  }

  return result;
}

uint64_t sub_23D92A54C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D92A5D0()
{
  result = qword_27E2F4828;
  if (!qword_27E2F4828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4738, &qword_23D9DC7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F46D8, &qword_23D9DC758);
    sub_23D9D8954();
    sub_23D92784C();
    sub_23D927B50(&qword_27E2F4730, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4828);
  }

  return result;
}

uint64_t sub_23D92A718@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LiveSpeechAddPhraseView(0);
  sub_23D91F2DC(v1 + *(v10 + 20), v9, &qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D89C4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D92A920@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LiveSpeechAddPhraseView(0);
  sub_23D91F2DC(v1 + *(v10 + 24), v9, &qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9464();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D92AB28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LiveSpeechAddPhraseView(0);
  sub_23D91F2DC(v1 + *(v10 + 28), v9, &qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9574();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id LiveSpeechAddPhraseView.isRecent.getter()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = [v3 isRecents];

    return v1;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t LiveSpeechAddPhraseView.selectableCategories.getter()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = v9;
    v10 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23D9DAF34())
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x23EEF4180](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v4 isRecents])
        {
        }

        else
        {
          sub_23D9DAEB4();
          sub_23D9DAED4();
          sub_23D9DAEE4();
          sub_23D9DAEC4();
        }

        ++v3;
        if (v6 == i)
        {
          v7 = v10;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v7 = MEMORY[0x277D84F90];
LABEL_19:

    return v7;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

BOOL LiveSpeechAddPhraseView.isPhraseEmpty.getter()
{
  v1 = sub_23D9D8814();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for LiveSpeechAddPhraseView(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 2);
  v14 = v6;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3B4();
  v14 = *&v13[8];
  sub_23D9D8804();
  sub_23D91B650();
  v8 = sub_23D9DAD84();
  v10 = v9;
  (*(v2 + 8))(v4, v1);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 == 0;
}

uint64_t LiveSpeechAddPhraseView.isSamePhrase.getter()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = [v9 text];

    v2 = sub_23D9DA8B4();
    v4 = v3;

    type metadata accessor for LiveSpeechAddPhraseView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
    sub_23D9DA3B4();
    if (v2 == v7 && v4 == v8)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_23D9DAFC4();
    }

    return v5 & 1;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t LiveSpeechAddPhraseView.isSameCategory.getter()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = [v12 categoryID];

    if (v1)
    {
      v2 = sub_23D9DA8B4();
      v4 = v3;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    type metadata accessor for LiveSpeechAddPhraseView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
    sub_23D9DA3B4();
    v5 = [v11 categoryID];

    v6 = sub_23D9DA8B4();
    v8 = v7;

    if (v4)
    {
      if (v2 == v6 && v4 == v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_23D9DAFC4();
      }
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t LiveSpeechAddPhraseView.isSameLanguageCode.getter()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v5 = v17;
    v6 = [v17 inputID];

    if (v6)
    {
      v7 = sub_23D9DA8B4();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    type metadata accessor for LiveSpeechAddPhraseView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
    sub_23D9DA3B4();
    v10 = sub_23D9D88D4();
    v12 = v11;
    (*(v2 + 8))(v4, v1);
    if (v9)
    {
      if (v7 == v10 && v9 == v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_23D9DAFC4();
      }
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t LiveSpeechAddPhraseView.isSaveDisabled.getter()
{
  if (LiveSpeechAddPhraseView.isPhraseEmpty.getter() || (LiveSpeechAddPhraseView.phraseExists.getter() & 1) != 0)
  {
    return 1;
  }

  if ((LiveSpeechAddPhraseView.isSamePhrase.getter() & 1) == 0 || (LiveSpeechAddPhraseView.isSameCategory.getter() & 1) == 0)
  {
    return 0;
  }

  return LiveSpeechAddPhraseView.isSameLanguageCode.getter();
}

uint64_t LiveSpeechAddPhraseView.phraseExists.getter()
{
  v1 = (v0 + *(type metadata accessor for LiveSpeechAddPhraseView(0) + 40));
  v3 = *v1;
  v2 = v1[1];
  v11 = v3;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
  sub_23D9DA3B4();
  v4 = [v10 phrases];

  sub_23D9DACF4();
  v5 = sub_23D9DA974();

  v9 = v0;
  v6 = sub_23D92BA88(sub_23D93378C, &v8, v5);

  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v11)
    {
      v6 &= LiveSpeechAddPhraseView.isSamePhrase.getter() ^ 1;
    }

    return v6 & 1;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D92B97C(id *a1, uint64_t a2)
{
  v2 = [*a1 text];
  v3 = sub_23D9DA8B4();
  v5 = v4;

  type metadata accessor for LiveSpeechAddPhraseView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3B4();
  if (v3 == v9 && v5 == v10)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23D9DAFC4();
  }

  return v7 & 1;
}

uint64_t sub_23D92BA88(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x23EEF4180](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_23D9DAF34();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_23D92BBB0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t LiveSpeechAddPhraseView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4850, &qword_23D9DCA58);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v53 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4858, &qword_23D9DCA60);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v53 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4860, &qword_23D9DCA68);
  v5 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4248, &qword_23D9DCA70);
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  v71 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4868, &qword_23D9DCA78);
  sub_23D91F01C(&qword_27E2F4870, &qword_27E2F4868, &qword_23D9DCA78, MEMORY[0x277CE14C8]);
  v58 = v9;
  sub_23D9D9E84();
  v10 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = v1;
  sub_23D9337BC(v1, &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23D9DA9B4();
  v13 = sub_23D9DA9A4();
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_23D933AD0(&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v17 = sub_23D9DA9F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_23D9DA9C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v55 = sub_23D9D9614();
    v56 = &v53;
    v54 = *(v55 - 8);
    MEMORY[0x28223BE20](v55);
    v57 = v5;
    v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    sub_23D9DAE64();

    v72._countAndFlagsBits = 0xD000000000000042;
    v72._object = 0x800000023D9E3C00;
    v75 = 81;
    v23 = sub_23D9DAF94();
    MEMORY[0x23EEF3C30](v23);

    v25 = MEMORY[0x28223BE20](v24);
    (*(v18 + 16))(&v53 - v20, &v53 - v20, v17, v25);
    sub_23D9D9604();
    (*(v18 + 8))(&v53 - v20, v17);
    v26 = v60;
    v27 = v61;
    (*(v59 + 32))(v61, v58, v60);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4250, &unk_23D9DBE90);
    v29 = v22;
    v5 = v57;
    (*(v54 + 32))(&v27[*(v28 + 36)], v29, v55);
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4258, &qword_23D9DCAC0);
    v27 = v61;
    v31 = &v61[*(v30 + 36)];
    v32 = sub_23D9D9584();
    (*(v18 + 32))(&v31[*(v32 + 20)], &v53 - v20, v17);
    *v31 = &unk_23D9DCAA0;
    *(v31 + 1) = v15;
    v26 = v60;
    (*(v59 + 32))(v27, v58, v60);
  }

  v33._object = 0x800000023D9E3C50;
  v33._countAndFlagsBits = 0xD00000000000001BLL;
  v72 = AXSUILocString(_:)(v33);
  v34 = sub_23D91F01C(&qword_27E2F4888, &qword_27E2F4248, &qword_23D9DCA70, MEMORY[0x277CDE5A8]);
  v75 = v26;
  v76 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_23D91B650();
  v37 = MEMORY[0x277D837D0];
  v38 = v62;
  v39 = v63;
  sub_23D9DA064();

  (*(v5 + 8))(v27, v38);
  v40 = sub_23D9D99A4();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v53 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 104))(v44, *MEMORY[0x277CDDDB8], v40, v42);
  v72._countAndFlagsBits = v38;
  v72._object = v37;
  v73 = OpaqueTypeConformance2;
  v74 = v36;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v67;
  v47 = v65;
  sub_23D9DA144();
  (*(v41 + 8))(v44, v40);
  v48 = (*(v64 + 8))(v39, v47);
  MEMORY[0x28223BE20](v48);
  *(&v53 - 2) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4890, &qword_23D9DCAB0);
  v72._countAndFlagsBits = v47;
  v72._object = v45;
  swift_getOpaqueTypeConformance2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4898, &qword_23D9DCAB8);
  v50 = sub_23D91F01C(&qword_27E2F48A0, &qword_27E2F4898, &qword_23D9DCAB8, MEMORY[0x277CDD7A0]);
  v72._countAndFlagsBits = v49;
  v72._object = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v70;
  sub_23D9DA1A4();
  return (*(v68 + 8))(v46, v51);
}

uint64_t sub_23D92C650@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4938, &unk_23D9DCC60);
  v54 = *(v55 - 1);
  MEMORY[0x28223BE20](v55);
  v52 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4940, &unk_23D9DDC10);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4948, &qword_23D9DCC70);
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v67 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4950, &qword_23D9DCC78);
  v56 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v69 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4958, &qword_23D9DCC80);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v72 = a1;
  sub_23D92EE8C(&v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4960, &qword_23D9DCC88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4968, &qword_23D9DCC90);
  sub_23D91F01C(&qword_27E2F4970, &qword_27E2F4960, &qword_23D9DCC88, MEMORY[0x277CE1140]);
  sub_23D934850();
  v59 = v20;
  sub_23D9DA694();
  v21._object = 0x800000023D9E3C90;
  v21._countAndFlagsBits = 0xD000000000000011;
  v73 = AXSUILocString(_:)(v21);
  sub_23D91B650();
  v73._countAndFlagsBits = sub_23D9D9F04();
  v73._object = v22;
  v74 = v23 & 1;
  v75 = v24;
  v71 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4980, &qword_23D9DCC98);
  sub_23D9348DC();
  v58 = v16;
  sub_23D9DA664();
  v25._object = 0x800000023D9E3CB0;
  v25._countAndFlagsBits = 0xD000000000000011;
  v73 = AXSUILocString(_:)(v25);
  v73._countAndFlagsBits = sub_23D9D9F04();
  v73._object = v26;
  v74 = v27 & 1;
  v75 = v28;
  v70 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49A0, &qword_23D9DCCA8);
  sub_23D934994();
  v63 = v12;
  sub_23D9DA664();
  if (*a1)
  {
    v29 = v53;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v68 = v8;
    if (v73._countAndFlagsBits)
    {
      MEMORY[0x28223BE20](v30);
      *(&v52 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49E8, &unk_23D9DCCD0);
      sub_23D934B8C();
      v31 = v52;
      sub_23D9DA684();
      v32 = v54;
      v33 = v66;
      v34 = v55;
      (*(v54 + 32))(v66, v31, v55);
      v35 = 0;
    }

    else
    {
      v35 = 1;
      v33 = v66;
      v34 = v55;
      v32 = v54;
    }

    (*(v32 + 56))(v33, v35, 1, v34);
    v36 = *(v61 + 16);
    v37 = v60;
    v38 = v62;
    v36(v60, v59, v62);
    v39 = v56;
    v55 = *(v56 + 16);
    (v55)(v69, v58, v65);
    v54 = *(v29 + 16);
    (v54)(v67, v63, v68);
    sub_23D91F2DC(v33, v64, &qword_27E2F4940, &unk_23D9DDC10);
    v40 = v57;
    v36(v57, v37, v38);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49E0, &qword_23D9DCCC8);
    v42 = v65;
    (v55)(&v40[v41[12]], v69, v65);
    v43 = v67;
    v44 = v68;
    (v54)(&v40[v41[16]], v67, v68);
    v45 = &v40[v41[20]];
    v46 = v64;
    sub_23D91F2DC(v64, v45, &qword_27E2F4940, &unk_23D9DDC10);
    sub_23D91F344(v66, &qword_27E2F4940, &unk_23D9DDC10);
    v47 = *(v29 + 8);
    v47(v63, v44);
    v48 = *(v39 + 8);
    v48(v58, v42);
    v49 = *(v61 + 8);
    v50 = v62;
    v49(v59, v62);
    sub_23D91F344(v46, &qword_27E2F4940, &unk_23D9DDC10);
    v47(v43, v68);
    v48(v69, v42);
    return (v49)(v60, v50);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D92CFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v4 = sub_23D9D89A4();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = sub_23D9D89C4();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = sub_23D9D8954();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for LiveSpeechAddPhraseView(0);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v7 = sub_23D9D91D4();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  sub_23D9DA9B4();
  v3[38] = sub_23D9DA9A4();
  v9 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D92D28C, v9, v8);
}

uint64_t sub_23D92D28C()
{
  v101 = v0;
  if (**(v0 + 112))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (*(v0 + 312))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23D9D9384();

      v1 = *(v0 + 104);
      v2 = [v1 text];

      v3 = sub_23D9DA8B4();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0xE000000000000000;
    }

    v6 = *(v0 + 264);
    v7 = *(v0 + 248);
    v8 = *(v0 + 112);
    v9 = v8 + *(v7 + 32);
    v10 = *v9;
    v11 = *(v9 + 16);
    *(v0 + 16) = v10;
    *(v0 + 32) = v11;
    *(v0 + 40) = v3;
    *(v0 + 48) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
    sub_23D9DA3C4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v12 = *(v0 + 72);
    v13 = (v8 + *(v7 + 40));
    v15 = *v13;
    v14 = v13[1];
    *(v0 + 56) = v15;
    *(v0 + 64) = v14;
    *(v0 + 80) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
    sub_23D9DA3C4();
    sub_23D9D8F14();
    sub_23D9337BC(v8, v6);
    v16 = sub_23D9D91C4();
    v17 = sub_23D9DACE4();
    if (!os_log_type_enabled(v16, v17))
    {
      v26 = *(v0 + 296);
      v27 = *(v0 + 272);
      v28 = *(v0 + 280);
      v29 = *(v0 + 264);

      v98 = *(v28 + 8);
      v98(v26, v27);
      sub_23D9347EC(v29);
      goto LABEL_15;
    }

    v18 = *(v0 + 264);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v100 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_23D9BDA5C(2036625250, 0xE400000000000000, &v100);
    *(v19 + 12) = 2080;
    if (*v18)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23D9D9384();

      v21 = *(v0 + 96);
      v22 = [v21 inputID];

      if (v22)
      {
        v23 = sub_23D9DA8B4();
        v25 = v24;
      }

      else
      {
        v25 = 0xE500000000000000;
        v23 = 0x3E6C696E3CLL;
      }

      v99 = *(v0 + 296);
      v32 = *(v0 + 272);
      v31 = *(v0 + 280);
      sub_23D9347EC(*(v0 + 264));
      v33 = sub_23D9BDA5C(v23, v25, &v100);

      *(v19 + 14) = v33;
      _os_log_impl(&dword_23D918000, v16, v17, "%s tapPhrase.inputID=%s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEF4BC0](v20, -1, -1);
      MEMORY[0x23EEF4BC0](v19, -1, -1);

      v34 = v99;
      v98 = *(v31 + 8);
      v98(v34, v32);
LABEL_15:
      v35 = *(v0 + 208);
      v36 = *(v0 + 144);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D9D9384();

      v37 = *(v0 + 88);
      v38 = [v37 inputID];

      v39 = (v36 + 8);
      v40 = (v35 + 48);
      v95 = *(v0 + 200);
      if (!v38)
      {
        v45 = *(v0 + 192);
        v46 = *(v0 + 168);
        v47 = *(v0 + 176);
        v48 = *(v0 + 160);
        v50 = *(v0 + 128);
        v49 = *(v0 + 136);
        sub_23D92A718(v45);
        sub_23D9D89B4();
        (*(v47 + 8))(v45, v46);
        sub_23D9D8994();
        (*v39)(v48, v49);
        if ((*v40)(v50, 1, v95) == 1)
        {
          sub_23D91F344(*(v0 + 128), &qword_27E2F4210, &qword_23D9DBE60);
        }

        else
        {
          v52 = *(v0 + 240);
          v54 = *(v0 + 216);
          v53 = *(v0 + 224);
          v55 = *(v0 + 200);
          v56 = *(v0 + 208);
          (*(v56 + 32))(v52, *(v0 + 128), v55);
          v57 = *(v56 + 16);
          v57(v53, v52, v55);
          v57(v54, v53, v55);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
          sub_23D9DA3C4();
          v58 = *(v56 + 8);
          v58(v53, v55);
          v58(v52, v55);
        }

LABEL_27:
        v63 = *(v0 + 256);
        v64 = *(v0 + 112);
        sub_23D9D8F14();
        sub_23D9337BC(v64, v63);
        v65 = sub_23D9D91C4();
        v66 = sub_23D9DACE4();
        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 288);
        v69 = *(v0 + 272);
        v70 = *(v0 + 256);
        if (v67)
        {
          v96 = *(v0 + 288);
          v71 = *(v0 + 224);
          v72 = *(v0 + 208);
          v92 = *(v0 + 200);
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v100 = v74;
          *v73 = 136315394;
          *(v73 + 4) = sub_23D9BDA5C(2036625250, 0xE400000000000000, &v100);
          *(v73 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
          sub_23D9DA3B4();
          v75 = sub_23D9D88D4();
          v93 = v69;
          v77 = v76;
          (*(v72 + 8))(v71, v92);
          sub_23D9347EC(v70);
          v78 = sub_23D9BDA5C(v75, v77, &v100);

          *(v73 + 14) = v78;
          _os_log_impl(&dword_23D918000, v65, v66, "%s After .task() selectedLanguageCode=%s", v73, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23EEF4BC0](v74, -1, -1);
          MEMORY[0x23EEF4BC0](v73, -1, -1);

          v79 = v96;
          v80 = v93;
        }

        else
        {

          sub_23D9347EC(v70);
          v79 = v68;
          v80 = v69;
        }

        v98(v79, v80);

        v81 = *(v0 + 8);

        return v81();
      }

      v41 = *(v0 + 152);
      v42 = *(v0 + 136);
      v43 = *(v0 + 120);
      sub_23D9DA8B4();

      sub_23D9D88B4();
      sub_23D9D89B4();
      sub_23D9D8994();
      (*v39)(v41, v42);
      if ((*v40)(v43, 1, v95) == 1)
      {
        v44 = *(v0 + 120);
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        sub_23D91F344(v44, &qword_27E2F4210, &qword_23D9DBE60);
        goto LABEL_27;
      }

      (*(*(v0 + 208) + 32))(*(v0 + 232), *(v0 + 120), *(v0 + 200));
      if (sub_23D9D8914())
      {
        if (sub_23D9D88D4() != 7107949 || v51 != 0xE300000000000000)
        {
          v59 = sub_23D9DAFC4();

          if (v59)
          {
            goto LABEL_26;
          }

          if (sub_23D9D88D4() != 0x696A6F6D65 || v82 != 0xE500000000000000)
          {
            v83 = sub_23D9DAFC4();

            if ((v83 & 1) == 0)
            {
              v85 = *(v0 + 224);
              v84 = *(v0 + 232);
              v87 = *(v0 + 208);
              v86 = *(v0 + 216);
              v88 = *(v0 + 200);
              v89 = *(v0 + 176);
              v94 = *(v0 + 168);
              v97 = *(v0 + 184);
              v90 = *(v87 + 16);
              v90(v85, v84, v88);
              v90(v86, v85, v88);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
              sub_23D9DA3C4();
              v91 = *(v87 + 8);
              v91(v85, v88);
              v91(v84, v88);
              (*(v89 + 8))(v97, v94);
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }
      }

LABEL_26:
      v61 = *(v0 + 176);
      v60 = *(v0 + 184);
      v62 = *(v0 + 168);
      (*(*(v0 + 208) + 8))(*(v0 + 232), *(v0 + 200));
      (*(v61 + 8))(v60, v62);
      goto LABEL_27;
    }
  }

  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);

  return sub_23D9D9784();
}

uint64_t sub_23D92DE60(uint64_t a1)
{
  v2 = sub_23D9D9BC4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4898, &qword_23D9DCAB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_23D9D9BB4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48F8, &qword_23D9DCC08);
  sub_23D9345D4();
  sub_23D9D94B4();
  v7 = sub_23D91F01C(&qword_27E2F48A0, &qword_27E2F4898, &qword_23D9DCAB8, MEMORY[0x277CDD7A0]);
  MEMORY[0x23EEF2F00](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D92E018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4910, &qword_23D9DCC10);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48F8, &qword_23D9DCC08);
  MEMORY[0x28223BE20](v24);
  v13 = &v22 - v12;
  sub_23D9337BC(a1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_23D933AD0(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_23D9DA404();
  if (LiveSpeechAddPhraseView.isPhraseEmpty.getter() || (LiveSpeechAddPhraseView.phraseExists.getter() & 1) != 0)
  {
    v16 = 1;
  }

  else if (LiveSpeechAddPhraseView.isSamePhrase.getter() & 1) != 0 && (LiveSpeechAddPhraseView.isSameCategory.getter())
  {
    v16 = LiveSpeechAddPhraseView.isSameLanguageCode.getter();
  }

  else
  {
    v16 = 0;
  }

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16 & 1;
  (*(v6 + 32))(v11, v8, v23);
  v19 = &v11[*(v9 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_23D929B6C;
  v19[2] = v18;
  v20._countAndFlagsBits = 0x455641535F534CLL;
  v20._object = 0xE700000000000000;
  v26 = AXSUILocString(_:)(v20);
  sub_23D934690();
  sub_23D91B650();
  sub_23D9DA0A4();

  sub_23D91F344(v11, &qword_27E2F4910, &qword_23D9DCC10);
  sub_23D9D96A4();
  return sub_23D91F344(v13, &qword_27E2F48F8, &qword_23D9DCC08);
}

uint64_t sub_23D92E3D0()
{
  v1 = sub_23D9D9574();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LiveSpeechAddPhraseView(0) + 44);
  v6 = *v5;
  v7 = *(v5 + 1);
  v10 = v6;
  v11 = v7;
  v9[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3C4();
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v10)
    {
      if ((LiveSpeechAddPhraseView.isSamePhrase.getter() & 1) != 0 && (LiveSpeechAddPhraseView.isSameCategory.getter() & 1) == 0)
      {
        sub_23D931A1C();
      }

      else if ((LiveSpeechAddPhraseView.isSamePhrase.getter() & 1) != 0 || (LiveSpeechAddPhraseView.isSameCategory.getter() & 1) == 0)
      {
        sub_23D93259C();
      }

      else
      {
        sub_23D931FE8();
      }
    }

    else
    {
      sub_23D932A94();
    }

    sub_23D92AB28(v4);
    sub_23D9D9564();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D92E618@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v2 = qword_27E2F7320;
    v3 = sub_23D9DA8A4();
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_23D92E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23D9D99B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A80, &qword_23D9DCD98);
  return sub_23D92E7BC(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_23D92E7BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = a1;
  v56 = sub_23D9D9AE4();
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v4 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A88, &qword_23D9DCDA0);
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45[-v6];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A90, &qword_23D9DCDA8);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = &v45[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A98, &qword_23D9DCDB0);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v58 = &v45[-v13];
  v14._countAndFlagsBits = 0xD000000000000021;
  v14._object = 0x800000023D9E3D50;
  v65 = AXSUILocString(_:)(v14);
  sub_23D91B650();
  v49 = sub_23D9D9F04();
  v48 = v15;
  v17 = v16;
  v51 = v18;
  v50 = sub_23D9D9D94();
  sub_23D9D93F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v46 = v17 & 1;
  LOBYTE(v65._countAndFlagsBits) = v17 & 1;
  LOBYTE(v61) = 0;
  sub_23D9D9A04();
  v27 = v47 + *(type metadata accessor for LiveSpeechAddPhraseView(0) + 32);
  v28 = *v27;
  v29 = *(v27 + 16);
  v61 = v28;
  *&v62 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3D4();
  sub_23D9DA7B4();
  sub_23D9D9AD4();
  v30 = sub_23D91F01C(&qword_27E2F4AA0, &qword_27E2F4A88, &qword_23D9DCDA0, MEMORY[0x277CDF1A0]);
  v31 = sub_23D935830(&qword_27E2F4AA8, MEMORY[0x277CDDF28], MEMORY[0x277CDDF10]);
  v32 = v56;
  sub_23D9DA034();
  (*(v57 + 8))(v4, v32);
  (*(v53 + 8))(v7, v5);
  v65._countAndFlagsBits = v5;
  v65._object = v32;
  v66 = v30;
  v67 = v31;
  swift_getOpaqueTypeConformance2();
  v33 = v58;
  v34 = v54;
  sub_23D9DA114();
  (*(v55 + 8))(v9, v34);
  v35 = v33;
  v36 = v52;
  sub_23D91F2DC(v35, v52, &qword_27E2F4A98, &qword_23D9DCDB0);
  v37 = v49;
  *&v61 = v49;
  v38 = v48;
  *(&v61 + 1) = v48;
  LOBYTE(v32) = v46;
  LOBYTE(v62) = v46;
  *(&v62 + 1) = *v60;
  DWORD1(v62) = *&v60[3];
  v39 = v51;
  *(&v62 + 1) = v51;
  LOBYTE(v5) = v50;
  LOBYTE(v63) = v50;
  *(&v63 + 1) = *v59;
  DWORD1(v63) = *&v59[3];
  *(&v63 + 1) = v20;
  *v64 = v22;
  *&v64[8] = v24;
  *&v64[16] = v26;
  v64[24] = 0;
  v40 = v61;
  v41 = v62;
  *(a2 + 57) = *&v64[9];
  v42 = *v64;
  a2[2] = v63;
  a2[3] = v42;
  *a2 = v40;
  a2[1] = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AB0, &qword_23D9DCDB8);
  sub_23D91F2DC(v36, a2 + *(v43 + 48), &qword_27E2F4A98, &qword_23D9DCDB0);
  sub_23D91F2DC(&v61, &v65, &qword_27E2F4AB8, &qword_23D9DCDC0);
  sub_23D91F344(v58, &qword_27E2F4A98, &qword_23D9DCDB0);
  sub_23D91F344(v36, &qword_27E2F4A98, &qword_23D9DCDB0);
  v65._countAndFlagsBits = v37;
  v65._object = v38;
  LOBYTE(v66) = v32;
  *(&v66 + 1) = *v60;
  HIDWORD(v66) = *&v60[3];
  v67 = v39;
  v68 = v5;
  *v69 = *v59;
  *&v69[3] = *&v59[3];
  v70 = v20;
  v71 = v22;
  v72 = v24;
  v73 = v26;
  v74 = 0;
  return sub_23D91F344(&v65, &qword_27E2F4AB8, &qword_23D9DCDC0);
}

uint64_t sub_23D92EE8C@<X0>(uint64_t a2@<X8>)
{
  v3._object = 0x800000023D9E3D30;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  AXSUILocString(_:)(v3);
  sub_23D91B650();
  v4 = sub_23D9D9F04();
  v6 = v5;
  v8 = v7;
  sub_23D9DA274();
  v9 = sub_23D9D9EC4();
  v11 = v10;
  v13 = v12;
  v17 = v14;
  sub_23D9274BC(v4, v6, v8 & 1);

  type metadata accessor for LiveSpeechAddPhraseView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  result = sub_23D9DA3B4();
  if ((v18 & 1) != 0 || (result = LiveSpeechAddPhraseView.phraseExists.getter(), v16 = 1.0, (result & 1) == 0))
  {
    v16 = 0.0;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_23D92EFF8(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23D9D8A74();
  swift_getKeyPath();
  sub_23D9337BC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D933AD0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4998, &qword_23D9DCCA0);
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277D83980]);
  sub_23D935830(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  sub_23D91F01C(&qword_27E2F4990, &qword_27E2F4998, &qword_23D9DCCA0, MEMORY[0x277CDF030]);
  return sub_23D9DA614();
}

uint64_t sub_23D92F214(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D9D8954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D9337BC(a2, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_23D933AD0(v11, v14 + v12);
  (*(v5 + 32))(v14 + v13, v7, v4);
  v17 = a2;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A60, &unk_23D9DCD80);
  sub_23D91F01C(&qword_27E2F4A68, &qword_27E2F4A60, &unk_23D9DCD80, MEMORY[0x277CE1140]);
  return sub_23D9DA404();
}

uint64_t sub_23D92F464(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D9D8954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a2, v3, v8);
  type metadata accessor for LiveSpeechAddPhraseView(0);
  (v11)(v6, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
  sub_23D9DA3C4();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23D92F5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23D9D99B4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A70, &unk_23D9DD780);
  return sub_23D92F624(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_23D92F624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v87 = a3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A28, &unk_23D9DCCF0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v74 = (&v69 - v5);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A30, &unk_23D9DD790);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v69 - v8;
  v82 = sub_23D9D8954();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A38, &qword_23D9DCD00);
  MEMORY[0x28223BE20](v10 - 8);
  v84 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v69 - v13;
  v14 = sub_23D9D9464();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  v21 = sub_23D9D89C4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a1;
  sub_23D92A718(v24);
  v83 = a2;
  sub_23D9D88D4();
  v25 = sub_23D9D8984();
  v27 = v26;

  v28 = *(v22 + 8);
  v28(v24, v21);
  if (!v27)
  {
    sub_23D92A718(v24);
    v25 = sub_23D9D88C4();
    v27 = v29;
    v28(v24, v21);
  }

  v95 = v25;
  v96 = v27;
  sub_23D91B650();
  v30 = sub_23D9D9F04();
  v32 = v31;
  v34 = v33;
  sub_23D92A920(v20);
  (*(v15 + 104))(v17, *MEMORY[0x277CDF3C8], v14);
  v35 = sub_23D9D9454();
  v36 = *(v15 + 8);
  v36(v17, v14);
  v36(v20, v14);
  if (v35)
  {
    v37 = sub_23D9DA2C4();
  }

  else
  {
    v37 = sub_23D9DA2A4();
  }

  v95 = v37;
  v79 = sub_23D9D9EC4();
  v78 = v38;
  v40 = v39;
  v42 = v41;
  sub_23D9274BC(v30, v32, v34 & 1);

  v89 = sub_23D9D9D84();
  v76 = v40 & 1;
  v110 = v40 & 1;
  v107 = 1;
  *(&v77 + 1) = sub_23D9D9DD4();
  *&v77 = swift_getKeyPath();
  type metadata accessor for LiveSpeechAddPhraseView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
  v43 = v80;
  sub_23D9DA3B4();
  v44 = MEMORY[0x23EEF1C40](v83, v43);
  (*(v81 + 8))(v43, v82);
  v45 = 1;
  if (v44)
  {
    v95 = sub_23D9DA364();
    sub_23D9D9E14();
    v46 = v42;
    v47 = v70;
    sub_23D9D9F84();

    v48 = v72;
    v49 = *(v72 + 16);
    v50 = v71;
    v51 = v73;
    v49(v71, v47, v73);
    v52 = v74;
    *v74 = 0;
    *(v52 + 8) = 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A58, &unk_23D9DCD50);
    v49((v52 + *(v53 + 48)), v50, v51);
    v54 = *(v48 + 8);
    v55 = v47;
    v42 = v46;
    v54(v55, v51);
    v54(v50, v51);
    sub_23D9350AC(v52, v88);
    v45 = 0;
  }

  v56 = v88;
  (*(v85 + 56))(v88, v45, 1, v86);
  v57 = v84;
  sub_23D91F2DC(v56, v84, &qword_27E2F4A38, &qword_23D9DCD00);
  v58 = v79;
  *&v91 = v79;
  v59 = v78;
  *(&v91 + 1) = v78;
  v60 = v76;
  LOBYTE(v92) = v76;
  *(&v92 + 1) = *v109;
  DWORD1(v92) = *&v109[3];
  v75 = v42;
  *(&v92 + 1) = v42;
  v93[0] = v89;
  *&v93[1] = *v108;
  *&v93[4] = *&v108[3];
  memset(&v93[8], 0, 32);
  v93[40] = 1;
  *&v93[44] = *&v111[3];
  *&v93[41] = *v111;
  v61 = v77;
  v94 = v77;
  v62 = v92;
  v63 = v87;
  *v87 = v91;
  v63[1] = v62;
  v64 = *v93;
  v65 = *&v93[16];
  v66 = v94;
  v63[4] = *&v93[32];
  v63[5] = v66;
  v63[2] = v64;
  v63[3] = v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A78, &qword_23D9DCD90);
  sub_23D91F2DC(v57, v63 + *(v67 + 48), &qword_27E2F4A38, &qword_23D9DCD00);
  sub_23D91F2DC(&v91, &v95, &qword_27E2F4A50, &unk_23D9DD820);
  sub_23D91F344(v56, &qword_27E2F4A38, &qword_23D9DCD00);
  sub_23D91F344(v57, &qword_27E2F4A38, &qword_23D9DCD00);
  v95 = v58;
  v96 = v59;
  v97 = v60;
  *v98 = *v109;
  *&v98[3] = *&v109[3];
  v99 = v75;
  v100 = v89;
  *v101 = *v108;
  *&v101[3] = *&v108[3];
  v102 = 0u;
  v103 = 0u;
  v104 = 1;
  *v105 = *v111;
  *&v105[3] = *&v111[3];
  v106 = v61;
  return sub_23D91F344(&v95, &qword_27E2F4A50, &unk_23D9DD820);
}

uint64_t sub_23D92FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49B8, &qword_23D9DCCB0);
  v16[0] = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = LiveSpeechAddPhraseView.selectableCategories.getter();
  if (v10 >> 62)
  {
    v11 = sub_23D9DAF34();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < 1)
  {
    v15 = *(v16[0] + 56);

    return v15(a2, 1, 1, v7);
  }

  else
  {
    v16[1] = LiveSpeechAddPhraseView.selectableCategories.getter();
    sub_23D9337BC(a1, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    sub_23D933AD0(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49F8, &unk_23D9DE140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49C8, &qword_23D9DCCB8);
    sub_23D91F01C(&qword_27E2F4A00, &qword_27E2F49F8, &unk_23D9DE140, MEMORY[0x277D83980]);
    sub_23D934A9C();
    sub_23D935830(&qword_27E2F4A08, MEMORY[0x277D70718], MEMORY[0x277D70720]);
    sub_23D9DA624();
    (*(v16[0] + 32))(a2, v9, v7);
    return (*(v16[0] + 56))(a2, 0, 1, v7);
  }
}

uint64_t sub_23D9302DC(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49D8, &qword_23D9DCCC0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-v9];
  v11 = *a1;
  sub_23D9337BC(a2, &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_23D933AD0(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v21 = v11;
  v22 = a2;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A10, &qword_23D9DCCE0);
  sub_23D91F01C(&qword_27E2F4A18, &qword_27E2F4A10, &qword_23D9DCCE0, MEMORY[0x277CE1140]);
  sub_23D9DA404();
  v15 = [v14 name];
  v16 = sub_23D9DA8B4();
  v18 = v17;

  v23 = 0xD00000000000001ALL;
  v24 = 0x800000023D9E3D10;
  MEMORY[0x23EEF3C30](v16, v18);

  sub_23D91F01C(&qword_27E2F49D0, &qword_27E2F49D8, &qword_23D9DCCC0, MEMORY[0x277CDF030]);
  sub_23D9DA114();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_23D9305D0(uint64_t a1, void *a2)
{
  type metadata accessor for LiveSpeechAddPhraseView(0);
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
  return sub_23D9DA3C4();
}

uint64_t sub_23D930640@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23D9D99B4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A20, &qword_23D9DCCE8);
  return sub_23D9306A8(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_23D9306A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v100 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A28, &unk_23D9DCCF0);
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v91 = (&v87 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A30, &unk_23D9DD790);
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x28223BE20](v7);
  v88 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A38, &qword_23D9DCD00);
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v106 = &v87 - v14;
  *(&v102 + 1) = sub_23D9D9464();
  v15 = *(*(&v102 + 1) - 8);
  MEMORY[0x28223BE20](*(&v102 + 1));
  *&v102 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  v20 = sub_23D9DA374();
  v21 = *(v20 - 8);
  *&v22 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1;
  v25 = [a1 symbol];
  sub_23D9DA8B4();

  sub_23D9DA384();
  (*(v21 + 104))(v24, *MEMORY[0x277CE0FE8], v20);
  v105 = sub_23D9DA394();

  (*(v21 + 8))(v24, v20);
  sub_23D9DA734();
  sub_23D9D9544();
  v138 = 1;
  *&v137[6] = v139;
  *&v137[22] = v140;
  *&v137[38] = v141;
  v101 = a2;
  sub_23D92A920(v19);
  v26 = *MEMORY[0x277CDF3C8];
  v27 = v102;
  v95 = *(v15 + 104);
  v95(v102, v26, *(&v102 + 1));
  LOBYTE(v20) = sub_23D9D9454();
  v28 = *(v15 + 8);
  v28(v27, *(&v27 + 1));
  v96 = v15 + 8;
  v28(v19, *(&v27 + 1));
  if (v20)
  {
    v29 = sub_23D9DA2C4();
  }

  else
  {
    v29 = sub_23D9DA2A4();
  }

  v104 = v29;
  v30 = [v103 localizedName];
  v31 = sub_23D9DA8B4();
  v33 = v32;

  *&v113 = v31;
  *(&v113 + 1) = v33;
  sub_23D91B650();
  v34 = sub_23D9D9F04();
  KeyPath = v35;
  v94 = v36;
  v38 = v37;
  sub_23D92A920(v19);
  v39 = v102;
  v95(v102, v26, *(&v102 + 1));
  v40 = sub_23D9D9454();
  v28(v39, *(&v39 + 1));
  v28(v19, *(&v39 + 1));
  if (v40)
  {
    v41 = sub_23D9DA2C4();
  }

  else
  {
    v41 = sub_23D9DA2A4();
  }

  *&v113 = v41;
  v42 = KeyPath;
  *&v102 = sub_23D9D9EC4();
  *(&v102 + 1) = v43;
  v45 = v44;
  v96 = v46;
  sub_23D9274BC(v34, v42, v38 & 1);

  LODWORD(v94) = sub_23D9D9D84();
  v47 = v45 & 1;
  v135 = v45 & 1;
  v132 = 1;
  v95 = sub_23D9D9DD4();
  KeyPath = swift_getKeyPath();
  v48 = (v101 + *(type metadata accessor for LiveSpeechAddPhraseView(0) + 40));
  v50 = *v48;
  v49 = v48[1];
  *&v113 = v50;
  *(&v113 + 1) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
  sub_23D9DA3B4();
  v51 = v109;
  v52 = [v109 categoryID];

  v53 = sub_23D9DA8B4();
  v55 = v54;

  v56 = [v103 categoryID];
  v57 = sub_23D9DA8B4();
  v59 = v58;

  if (v53 == v57 && v55 == v59)
  {
  }

  else
  {
    v60 = sub_23D9DAFC4();

    if ((v60 & 1) == 0)
    {
      v70 = 1;
      v69 = v106;
      goto LABEL_13;
    }
  }

  *&v113 = sub_23D9DA364();
  sub_23D9D9E14();
  v61 = v87;
  sub_23D9D9F84();

  v63 = v88;
  v62 = v89;
  v64 = *(v89 + 16);
  v65 = v90;
  v64(v88, v61, v90);
  v66 = v91;
  *v91 = 0;
  *(v66 + 8) = 1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A58, &unk_23D9DCD50);
  v64((v66 + *(v67 + 48)), v63, v65);
  v68 = *(v62 + 8);
  v68(v61, v65);
  v68(v63, v65);
  v69 = v106;
  sub_23D9350AC(v66, v106);
  v70 = 0;
LABEL_13:
  (*(v97 + 56))(v69, v70, 1, v98);
  v71 = v99;
  sub_23D91F2DC(v69, v99, &qword_27E2F4A38, &qword_23D9DCD00);
  v107[0] = v105;
  v107[1] = 0;
  LOWORD(v108[0]) = 1;
  *(v108 + 2) = *v137;
  *(&v108[1] + 2) = *&v137[16];
  *(&v108[2] + 2) = *&v137[32];
  *&v108[3] = *&v137[46];
  *(&v108[3] + 1) = v104;
  v72 = v105;
  v73 = v108[0];
  v74 = v108[2];
  v75 = v108[3];
  v76 = v100;
  v100[2] = v108[1];
  v76[3] = v74;
  *v76 = v72;
  v76[1] = v73;
  v109 = v102;
  v92 = v47;
  LOBYTE(v110) = v47;
  DWORD1(v110) = *&v134[3];
  *(&v110 + 1) = *v134;
  v77 = v96;
  *(&v110 + 1) = v96;
  v78 = v94;
  LOBYTE(v111[0]) = v94;
  DWORD1(v111[0]) = *&v133[3];
  *(v111 + 1) = *v133;
  *(&v111[1] + 8) = 0u;
  *(v111 + 8) = 0u;
  BYTE8(v111[2]) = 1;
  HIDWORD(v111[2]) = *&v136[3];
  *(&v111[2] + 9) = *v136;
  v79 = KeyPath;
  v80 = v95;
  *&v112 = KeyPath;
  *(&v112 + 1) = v95;
  v81 = v102;
  v82 = v110;
  v76[4] = v75;
  v76[5] = v81;
  v83 = v112;
  v76[9] = v111[2];
  v76[10] = v83;
  v84 = v111[1];
  v76[7] = v111[0];
  v76[8] = v84;
  v76[6] = v82;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A40, &qword_23D9DCD38);
  sub_23D91F2DC(v71, v76 + *(v85 + 64), &qword_27E2F4A38, &qword_23D9DCD00);
  sub_23D91F2DC(v107, &v113, &qword_27E2F4A48, &unk_23D9DCD40);
  sub_23D91F2DC(&v109, &v113, &qword_27E2F4A50, &unk_23D9DD820);
  sub_23D91F344(v106, &qword_27E2F4A38, &qword_23D9DCD00);
  sub_23D91F344(v71, &qword_27E2F4A38, &qword_23D9DCD00);
  v113 = v102;
  v114 = v92;
  *v115 = *v134;
  *&v115[3] = *&v134[3];
  v116 = v77;
  v117 = v78;
  *v118 = *v133;
  *&v118[3] = *&v133[3];
  v119 = 0u;
  v120 = 0u;
  v121 = 1;
  *v122 = *v136;
  *&v122[3] = *&v136[3];
  v123 = v79;
  v124 = v80;
  sub_23D91F344(&v113, &qword_27E2F4A50, &unk_23D9DD820);
  v125[0] = v105;
  v125[1] = 0;
  v126 = 1;
  v127 = 0;
  v128 = *v137;
  v129 = *&v137[16];
  *v130 = *&v137[32];
  *&v130[14] = *&v137[46];
  v131 = v104;
  return sub_23D91F344(v125, &qword_27E2F4A48, &unk_23D9DCD40);
}

uint64_t sub_23D931148(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_23D9337BC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23D933AD0(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_23D9DA404();
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  sub_23D9DA114();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23D931378(uint64_t *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v37 = sub_23D9D91F4();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D91D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D9D9574();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D92AB28(v12);
  sub_23D9D9564();
  (*(v10 + 8))(v12, v9);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v13 = v38[0];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v14 = v38[0];
    v38[0] = 0;
    v15 = [v13 deletePhrase:v14 error:v38];

    if (v15)
    {
      v16 = v38[0];
    }

    else
    {
      v17 = v38[0];
      v18 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D9214();
      v19 = v18;
      v20 = sub_23D9D91C4();
      v21 = sub_23D9DACC4();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v36 = v5;
        v23 = v22;
        v34 = swift_slowAlloc();
        v35 = v6;
        *v23 = 138412290;
        v24 = v4;
        v25 = v4;
        v26 = v37;
        (*(v2 + 104))(v25, *MEMORY[0x277D704D8], v37);
        sub_23D9D9204();
        sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518], MEMORY[0x277D70520]);
        swift_allocError();
        sub_23D9D91E4();
        (*(v2 + 8))(v24, v26);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v27;
        v28 = v34;
        *v34 = v27;
        _os_log_impl(&dword_23D918000, v20, v21, "%@", v23, 0xCu);
        sub_23D91F344(v28, &qword_27E2F4930, &unk_23D9DCC50);
        v6 = v35;
        MEMORY[0x23EEF4BC0](v28, -1, -1);
        v29 = v23;
        v5 = v36;
        MEMORY[0x23EEF4BC0](v29, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v8, v5);
    }

    v30 = objc_opt_self();

    v31 = [v30 makeEmptyPhrase];
    swift_getKeyPath();
    swift_getKeyPath();
    v38[0] = v31;
    return sub_23D9D9394();
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D931918@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E3CF0;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  v3 = sub_23D9D9F04();
  v5 = v4;
  v7 = v6;
  sub_23D9DA274();
  v8 = sub_23D9D9EC4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_23D9274BC(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

id sub_23D931A1C()
{
  v33[2] = *MEMORY[0x277D85DE8];
  v1 = sub_23D9D91F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23D9D91D4();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v8 = v33[0];
    v9 = [v33[0] text];

    if (!v9)
    {
      sub_23D9DA8B4();
      v9 = sub_23D9DA8A4();
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v10 = v33[0];
    v11 = [v33[0] categoryID];

    if (!v11)
    {
      sub_23D9DA8B4();
      v11 = sub_23D9DA8A4();
    }

    v12 = v0 + *(type metadata accessor for LiveSpeechAddPhraseView(0) + 40);
    v14 = *v12;
    v13 = *(v12 + 1);
    v33[0] = v14;
    v33[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
    sub_23D9DA3B4();
    v15 = v32;
    v16 = [v32 categoryID];

    if (!v16)
    {
      sub_23D9DA8B4();
      v16 = sub_23D9DA8A4();
    }

    v17 = objc_opt_self();
    v33[0] = 0;
    v18 = [v17 updatePhrase:v9 fromCategory:v11 toCategory:v16 error:v33];

    v19 = v33[0];
    if (v18)
    {

      return v19;
    }

    else
    {
      v30 = v33[0];
      v21 = v33[0];
      v22 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D8F14();
      v23 = v22;
      v24 = sub_23D9D91C4();
      v25 = sub_23D9DACC4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        (*(v2 + 104))(v4, *MEMORY[0x277D704D8], v1);
        sub_23D9D9204();
        v30 = v5;
        sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518], MEMORY[0x277D70520]);
        swift_allocError();
        sub_23D9D91E4();
        (*(v2 + 8))(v4, v1);
        v5 = v30;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&dword_23D918000, v24, v25, "%@", v26, 0xCu);
        sub_23D91F344(v27, &qword_27E2F4930, &unk_23D9DCC50);
        MEMORY[0x23EEF4BC0](v27, -1, -1);
        MEMORY[0x23EEF4BC0](v26, -1, -1);
      }

      else
      {
      }

      return v5[1](v7, v31);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

id sub_23D931FE8()
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = sub_23D9D91F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23D9D91D4();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v8 = v31;
    v9 = [v31 text];

    if (!v9)
    {
      sub_23D9DA8B4();
      v9 = sub_23D9DA8A4();
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v10 = v31;
    v11 = [v31 categoryID];

    if (!v11)
    {
      sub_23D9DA8B4();
      v11 = sub_23D9DA8A4();
    }

    v12 = objc_opt_self();
    v13 = v0 + *(type metadata accessor for LiveSpeechAddPhraseView(0) + 32);
    v14 = *v13;
    v15 = *(v13 + 2);
    v31 = v14;
    v32 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
    sub_23D9DA3B4();
    v16 = sub_23D9DA8A4();

    *&v31 = 0;
    v17 = [v12 updatePhrase:v9 categoryID:v11 withUpdatedText:v16 error:&v31];

    v18 = v31;
    if (v17)
    {

      return v18;
    }

    else
    {
      v29 = v31;
      v20 = v31;
      v21 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D8F14();
      v22 = v21;
      v23 = sub_23D9D91C4();
      v24 = sub_23D9DACC4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        (*(v2 + 104))(v4, *MEMORY[0x277D704D8], v1);
        sub_23D9D9204();
        v29 = v5;
        sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518], MEMORY[0x277D70520]);
        swift_allocError();
        sub_23D9D91E4();
        (*(v2 + 8))(v4, v1);
        v5 = v29;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&dword_23D918000, v23, v24, "%@", v25, 0xCu);
        sub_23D91F344(v26, &qword_27E2F4930, &unk_23D9DCC50);
        MEMORY[0x23EEF4BC0](v26, -1, -1);
        MEMORY[0x23EEF4BC0](v25, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v7, v30);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

id sub_23D93259C()
{
  v28[1] = *MEMORY[0x277D85DE8];
  v27 = sub_23D9D91F4();
  v1 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D9D91D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v8 = v28[0];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v9 = v28[0];
    v28[0] = 0;
    v10 = [v8 deletePhrase:v9 error:v28];

    v11 = v28[0];
    if (v10)
    {
      v12 = objc_opt_self();

      v13 = v11;
      v14 = [v12 makeEmptyPhrase];
      swift_getKeyPath();
      swift_getKeyPath();
      v28[0] = v14;
      sub_23D9D9394();
      return sub_23D932A94();
    }

    else
    {
      v16 = v28[0];
      v17 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D8F14();
      v18 = v17;
      v19 = sub_23D9D91C4();
      v20 = sub_23D9DACC4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v21 = 138412290;
        v22 = v27;
        (*(v1 + 104))(v3, *MEMORY[0x277D704D8], v27);
        sub_23D9D9204();
        v26 = v5;
        sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518], MEMORY[0x277D70520]);
        swift_allocError();
        sub_23D9D91E4();
        (*(v1 + 8))(v3, v22);
        v5 = v26;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v23;
        v24 = v25;
        *v25 = v23;
        _os_log_impl(&dword_23D918000, v19, v20, "%@", v21, 0xCu);
        sub_23D91F344(v24, &qword_27E2F4930, &unk_23D9DCC50);
        MEMORY[0x23EEF4BC0](v24, -1, -1);
        MEMORY[0x23EEF4BC0](v21, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

id sub_23D932A94()
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = sub_23D9D91F4();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D9D91D4();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D9D8954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v12 = (v0 + *(v11 + 40));
  v14 = *v12;
  v13 = v12[1];
  *&v40 = v14;
  *(&v40 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
  sub_23D9DA3B4();
  v15 = v39;
  v16 = (v0 + *(v11 + 32));
  v17 = *v16;
  v18 = *(v16 + 2);
  v40 = v17;
  v41 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3B4();
  v19 = sub_23D9DA8A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
  sub_23D9DA3B4();
  sub_23D9D88D4();
  (*(v8 + 8))(v10, v7);
  v20 = sub_23D9DA8A4();

  *&v40 = 0;
  v21 = [v15 addPhrase:v19 inputID:v20 error:&v40];

  v22 = v40;
  if (v21)
  {

    return v22;
  }

  else
  {
    v36 = v40;
    v24 = v40;
    v25 = sub_23D9D8824();

    swift_willThrow();
    sub_23D9D8F14();
    v26 = v25;
    v27 = sub_23D9D91C4();
    v28 = sub_23D9DACC4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v32 = v34;
      v31 = v35;
      (*(v34 + 104))(v3, *MEMORY[0x277D704D8], v35);
      sub_23D9D9204();
      sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518], MEMORY[0x277D70520]);
      swift_allocError();
      sub_23D9D91E4();
      (*(v32 + 8))(v3, v31);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v33;
      *v30 = v33;
      _os_log_impl(&dword_23D918000, v27, v28, "%@", v29, 0xCu);
      sub_23D91F344(v30, &qword_27E2F4930, &unk_23D9DCC50);
      MEMORY[0x23EEF4BC0](v30, -1, -1);
      MEMORY[0x23EEF4BC0](v29, -1, -1);
    }

    else
    {
    }

    return (*(v37 + 8))(v6, v38);
  }
}

void *sub_23D932FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D9D8954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  *a1 = sub_23D9D9794();
  a1[1] = v9;
  v10 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v11 = v10[5];
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  swift_storeEnumTagMultiPayload();
  v12 = v10[6];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  v13 = v10[7];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  v14 = a1 + v10[8];
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_23D9DA3A4();
  v15 = v25;
  *v14 = v24;
  *(v14 + 2) = v15;
  sub_23D9D8924();
  (*(v3 + 16))(v5, v8, v2);
  sub_23D9DA3A4();
  (*(v3 + 8))(v8, v2);
  v16 = (a1 + v10[10]);
  v22 = [objc_opt_self() makeEmptyCategory];
  sub_23D9DAD44();
  sub_23D9DA3A4();
  v17 = *(&v24 + 1);
  *v16 = v24;
  v16[1] = v17;
  v18 = a1 + v10[11];
  LOBYTE(v22) = 0;
  result = sub_23D9DA3A4();
  v20 = *(&v24 + 1);
  *v18 = v24;
  *(v18 + 1) = v20;
  return result;
}

uint64_t sub_23D933328@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a4 = v6;
  return result;
}

uint64_t sub_23D9333B8(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_23D9D9394();
}

uint64_t sub_23D93342C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v4;
  return result;
}

uint64_t sub_23D9334AC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D9D9394();
}

uint64_t sub_23D933528@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v4;
  return result;
}

uint64_t sub_23D9335A8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D9D9394();
}

uint64_t sub_23D93361C(uint64_t a1)
{
  v2 = sub_23D9D89C4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23D9D98E4();
}

uint64_t type metadata accessor for LiveSpeechAddPhraseView(uint64_t a1)
{
  result = qword_27E2F48B8;
  if (!qword_27E2F48B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D9337BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechAddPhraseView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D933820()
{
  v1 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D9D89C4();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D9D9464();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D9D9574();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  v10 = v3 + v1[9];
  v11 = sub_23D9D8954();
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);

  return swift_deallocObject();
}

uint64_t sub_23D933AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechAddPhraseView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D933B34()
{
  v2 = *(type metadata accessor for LiveSpeechAddPhraseView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D928310;

  return sub_23D92CFBC(v4, v5, v0 + v3);
}

uint64_t sub_23D933C48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48A8, &unk_23D9DCB20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23D933E48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48A8, &unk_23D9DCB20);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_23D934034(uint64_t a1)
{
  sub_23D934258(319);
  if (v1 <= 0x3F)
  {
    sub_23D9342EC(319, &qword_27E2F48D0, MEMORY[0x277CC9788], MEMORY[0x277CDF470]);
    if (v2 <= 0x3F)
    {
      sub_23D9342EC(319, &qword_27E2F48D8, MEMORY[0x277CDF3E8], MEMORY[0x277CDF470]);
      if (v3 <= 0x3F)
      {
        sub_23D9342EC(319, &qword_27E2F4610, MEMORY[0x277CDD840], MEMORY[0x277CDF470]);
        if (v4 <= 0x3F)
        {
          sub_23D934350(319, &qword_27E2F48E0, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_23D9342EC(319, &qword_27E2F48E8, MEMORY[0x277CC9640], MEMORY[0x277CE10B0]);
            if (v6 <= 0x3F)
            {
              sub_23D9342EC(319, &qword_27E2F48F0, MEMORY[0x277D70718], MEMORY[0x277CE10B0]);
              if (v7 <= 0x3F)
              {
                sub_23D934350(319, &qword_27E2F46A0, MEMORY[0x277D839B0]);
                if (v8 <= 0x3F)
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
}

void sub_23D934258(uint64_t a1)
{
  if (!qword_27E2F48C8)
  {
    type metadata accessor for LiveSpeechDataViewModel(255);
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    v1 = sub_23D9D97A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F48C8);
    }
  }
}

void sub_23D9342EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_23D934350(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23D9DA3E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23D93439C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4850, &qword_23D9DCA58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4890, &qword_23D9DCAB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4858, &qword_23D9DCA60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4860, &qword_23D9DCA68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4248, &qword_23D9DCA70);
  sub_23D91F01C(&qword_27E2F4888, &qword_27E2F4248, &qword_23D9DCA70, MEMORY[0x277CDE5A8]);
  swift_getOpaqueTypeConformance2();
  sub_23D91B650();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4898, &qword_23D9DCAB8);
  sub_23D91F01C(&qword_27E2F48A0, &qword_27E2F4898, &qword_23D9DCAB8, MEMORY[0x277CDD7A0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D9345D4()
{
  result = qword_27E2F4900;
  if (!qword_27E2F4900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F48F8, &qword_23D9DCC08);
    sub_23D934690();
    sub_23D935830(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4900);
  }

  return result;
}

unint64_t sub_23D934690()
{
  result = qword_27E2F4908;
  if (!qword_27E2F4908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4910, &qword_23D9DCC10);
    sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
    sub_23D91F01C(&qword_27E2F4720, &qword_27E2F4728, &qword_23D9DC7A0, MEMORY[0x277CE08A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4908);
  }

  return result;
}

uint64_t sub_23D9347EC(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechAddPhraseView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D934850()
{
  result = qword_27E2F4978;
  if (!qword_27E2F4978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4968, &qword_23D9DCC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4978);
  }

  return result;
}

unint64_t sub_23D9348DC()
{
  result = qword_27E2F4988;
  if (!qword_27E2F4988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4980, &qword_23D9DCC98);
    sub_23D91F01C(&qword_27E2F4990, &qword_27E2F4998, &qword_23D9DCCA0, MEMORY[0x277CDF030]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4988);
  }

  return result;
}

unint64_t sub_23D934994()
{
  result = qword_27E2F49A8;
  if (!qword_27E2F49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F49A0, &qword_23D9DCCA8);
    sub_23D934A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F49A8);
  }

  return result;
}

unint64_t sub_23D934A18()
{
  result = qword_27E2F49B0;
  if (!qword_27E2F49B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F49B8, &qword_23D9DCCB0);
    sub_23D934A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F49B0);
  }

  return result;
}

unint64_t sub_23D934A9C()
{
  result = qword_27E2F49C0;
  if (!qword_27E2F49C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F49C8, &qword_23D9DCCB8);
    sub_23D91F01C(&qword_27E2F49D0, &qword_27E2F49D8, &qword_23D9DCCC0, MEMORY[0x277CDF030]);
    sub_23D935830(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F49C0);
  }

  return result;
}

unint64_t sub_23D934B8C()
{
  result = qword_27E2F49F0;
  if (!qword_27E2F49F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F49E8, &unk_23D9DCCD0);
    sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
    sub_23D935830(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F49F0);
  }

  return result;
}

uint64_t sub_23D934C74()
{
  v1 = *(type metadata accessor for LiveSpeechAddPhraseView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_23D931378(v2);
}

uint64_t sub_23D934CD4(void **a1)
{
  v3 = *(type metadata accessor for LiveSpeechAddPhraseView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D9302DC(a1, v4);
}

uint64_t sub_23D934D54()
{
  v1 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D9D89C4();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D9D9464();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D9D9574();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  v11 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v12 = v4 + v1[9];
  v13 = sub_23D9D8954();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);

  return swift_deallocObject();
}

uint64_t sub_23D935010()
{
  v1 = *(type metadata accessor for LiveSpeechAddPhraseView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D9305D0(v0 + v2, v3);
}

uint64_t sub_23D9350AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A28, &unk_23D9DCCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_41Tm()
{
  v1 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D89C4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D9D9464();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D9D9574();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v2 + v1[9];
  v10 = sub_23D9D8954();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);

  return swift_deallocObject();
}

uint64_t sub_23D9353C4(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveSpeechAddPhraseView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D92F214(a1, v4);
}

uint64_t sub_23D935444()
{
  v1 = type metadata accessor for LiveSpeechAddPhraseView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_23D9D8954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;

  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D9D89C4();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D9D9464();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23D9D9574();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = (v3 + v4 + v7) & ~v7;

  v16 = *(v6 + 8);
  v16(v8 + v1[9], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);

  v16(v0 + v15, v5);

  return swift_deallocObject();
}

uint64_t sub_23D93575C()
{
  v1 = *(type metadata accessor for LiveSpeechAddPhraseView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_23D9D8954() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_23D92F464(v0 + v2, v5);
}

uint64_t sub_23D935830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D935884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x28223BE20](a1);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v15(v14);
  a5(v16);
  return sub_23D9DA674();
}

uint64_t sub_23D9359B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1);
  v9(v8);
  return sub_23D9DA694();
}

uint64_t Section<>.init(axsuiHeaderLocKey:footerLocKey:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v14 = a2;
  v10 = a3;
  v11 = a4;
  sub_23D935884(a5, a6, sub_23D935D90, v12, sub_23D935B24, v9, MEMORY[0x277CE0BD0], a7, MEMORY[0x277CE0BD0], MEMORY[0x277CE0BC0], a8, MEMORY[0x277CE0BC0]);
}

uint64_t sub_23D935B58@<X0>(uint64_t a3@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v4 = qword_27E2F7320;
    v5 = sub_23D9DA8A4();
    v6 = sub_23D9DA8A4();
    v7 = sub_23D9DA8A4();
    v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

    sub_23D9DA8B4();
  }

  else
  {
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a3 = result;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v12;
  return result;
}

uint64_t sub_23D935CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a1;
  v8[3] = a2;
  sub_23D9359B0(a3, a4, a7, v8, a5, MEMORY[0x277CE0BD0], a6, MEMORY[0x277CE0BC0]);
}

uint64_t sub_23D935D1C@<X0>(uint64_t a3@<X8>)
{
  sub_23D91B650();

  result = sub_23D9D9F04();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t AXSUIGuestPassOnboardingView.init(isLearnMore:isPresented:presentDevicePicker:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t AXSUIGuestPassOnboardingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_23D9D9184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AC0, &qword_23D9DCDD0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AC8, &qword_23D9DCDD8);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AD0, &qword_23D9DCDE0);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = v1[1];
  v49 = *v1;
  v50 = v14;
  v51 = v1[2];
  v52 = *(v1 + 48);
  v15._object = 0x800000023D9E3DC0;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16 = AXSUILocString(_:)(v15);
  object = v16._object;
  countAndFlagsBits = v16._countAndFlagsBits;
  v17 = sub_23D9DA8A4();
  v47 = sub_23D9364D4;
  v48 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_23D936614;
  v46 = &block_descriptor;
  v18 = _Block_copy(&aBlock);
  v19 = AXLocStringForDeviceVariant();
  _Block_release(v18);

  if (v19)
  {
    v35 = sub_23D9DA8B4();
    v34 = v20;
  }

  else
  {
    v35 = 0;
    v34 = 0;
  }

  v33 = "@NSString16@?0@NSString8";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AD8, &qword_23D9DCDE8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23D9DC3E0;
  sub_23D9D9174();
  aBlock = v21;
  sub_23D937EA0(&qword_27E2F4AE0, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AE8, &qword_23D9DCDF0);
  sub_23D91F01C(&qword_27E2F4AF0, &qword_27E2F4AE8, &qword_23D9DCDF0, MEMORY[0x277D83970]);
  sub_23D9DADD4();
  sub_23D9DA5A4();
  v22 = (*(v3 + 8))(v5, v2);
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AF8, &qword_23D9DCDF8);
  sub_23D91F01C(&qword_27E2F4B00, &qword_27E2F4AF8, &qword_23D9DCDF8, MEMORY[0x277CE11A0]);
  sub_23D9D9164();
  sub_23D9DA724();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B08, &qword_23D9DCE00);
  v24 = sub_23D91F01C(&qword_27E2F4B10, &qword_27E2F4AC8, &qword_23D9DCDD8, MEMORY[0x277CE7668]);
  v25 = sub_23D9372FC();
  v26 = MEMORY[0x277CE1358];
  v27 = MEMORY[0x277CE1348];
  sub_23D9DA214();
  v28 = (*(v39 + 8))(v10, v8);
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B38, &qword_23D9DCE10);
  aBlock = v8;
  v44 = v26;
  v45 = v23;
  v46 = v24;
  v47 = v27;
  v48 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B40, &qword_23D9DCE18);
  v30 = sub_23D937938();
  aBlock = v29;
  v44 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_23D9DA1A4();
  return (*(v40 + 8))(v13, v31);
}

uint64_t sub_23D9364D4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (qword_27E2F41A8 != -1)
    {
      v9 = result;
      swift_once();
      result = v9;
    }

    v2 = result;
    if (qword_27E2F7320)
    {
      v3 = qword_27E2F7320;
      v4 = sub_23D9DA8A4();
      v5 = sub_23D9DA8A4();
      v6 = sub_23D9DA8A4();
      v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

      v8 = sub_23D9DA8B4();
      return v8;
    }

    else
    {

      return v2;
    }
  }

  return result;
}

id sub_23D936614(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_23D9DA8B4();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
  v7 = v6;

  if (v7)
  {
    v8 = sub_23D9DA8A4();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D9366DC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AF8, &qword_23D9DCDF8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if (*a1)
  {
    v9 = *(v5 + 56);

    return v9(a2, 1, 1, v4, v6);
  }

  else
  {
    v13 = v5;
    *v8 = sub_23D9D9AB4();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B70, &qword_23D9DCF18);
    sub_23D936858(a1, &v8[*(v11 + 44)]);
    sub_23D92A2BC(v8, a2, &qword_27E2F4AF8, &qword_23D9DCDF8);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_23D936858@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v48 = sub_23D9D91A4();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B78, &qword_23D9DCF20);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v41 - v6;
  v7 = sub_23D9D9194();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B80, &qword_23D9DCF28);
  v51 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = *(a1 + 48);
  sub_23D937DB4(a1, v53);
  sub_23D9DA404();
  sub_23D9D9434();
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  sub_23D937EA0(&qword_27E2F4B88, MEMORY[0x277CE76F0], MEMORY[0x277CE76E0]);
  v21 = v18;
  v41 = v18;
  sub_23D9D9FB4();
  (*(v8 + 8))(v10, v7);
  v22 = *(v12 + 8);
  v22(v14, v11);
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = *(a1 + 48);
  sub_23D937DB4(a1, v53);
  sub_23D9DA404();
  v25 = v44;
  sub_23D9D9444();
  sub_23D937EA0(&qword_27E2F4B90, MEMORY[0x277CE7708], MEMORY[0x277CE76F8]);
  v26 = v52;
  v27 = v48;
  sub_23D9D9FB4();
  (*(v46 + 8))(v25, v27);
  v22(v14, v11);
  v28 = *(v51 + 16);
  v29 = v42;
  v30 = v21;
  v31 = v43;
  v28(v42, v30, v43);
  v32 = v47;
  v33 = *(v47 + 16);
  v34 = v45;
  v35 = v49;
  v33(v45, v26, v49);
  v36 = v50;
  v28(v50, v29, v31);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B98, &qword_23D9DCF30);
  v33(&v36[*(v37 + 48)], v34, v35);
  v38 = *(v32 + 8);
  v38(v52, v35);
  v39 = *(v51 + 8);
  v39(v41, v31);
  v38(v34, v35);
  return (v39)(v29, v31);
}

uint64_t sub_23D936ED0(uint64_t a1)
{
  sub_23D9DAC94();
  v1 = MEMORY[0x23EEF3E90]();
  v2 = *MEMORY[0x277CE7990];
  swift_beginAccess();
  v3 = *&v1[v2];

  sub_23D9DABA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  sub_23D9DA564();
  return sub_23D9DA564();
}

uint64_t sub_23D936FB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v2 = qword_27E2F7320;
    v3 = sub_23D9DA8A4();
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_23D937104@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E3E40;
  v2._countAndFlagsBits = 0xD000000000000014;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23D93717C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B28, &qword_23D9DCE08);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - v5;
  sub_23D9D9D64();
  sub_23D9D93F4();
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = 0;
  sub_23D9D9C84();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AC8, &qword_23D9DCDD8);
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  sub_23D9D9D74();
  AXDeviceIsPad();
  sub_23D9D93F4();
  v17[0] = v12;
  v17[1] = v13;
  v17[2] = v14;
  v17[3] = v15;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B08, &qword_23D9DCE00);
  sub_23D9D9C84();
  return sub_23D92A2BC(v6, a2, &qword_27E2F4B28, &qword_23D9DCE08);
}

unint64_t sub_23D9372FC()
{
  result = qword_27E2F4B18;
  if (!qword_27E2F4B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B08, &qword_23D9DCE00);
    sub_23D9373B8();
    sub_23D937EA0(&qword_27E2F4B30, MEMORY[0x277CE0658], MEMORY[0x277CE0648]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4B18);
  }

  return result;
}

unint64_t sub_23D9373B8()
{
  result = qword_27E2F4B20;
  if (!qword_27E2F4B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B28, &qword_23D9DCE08);
    sub_23D91F01C(&qword_27E2F4B10, &qword_27E2F4AC8, &qword_23D9DCDD8, MEMORY[0x277CE7668]);
    sub_23D937EA0(&qword_27E2F4B30, MEMORY[0x277CE0658], MEMORY[0x277CE0648]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4B20);
  }

  return result;
}

uint64_t sub_23D9374A0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B60, &unk_23D9DCF00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - v6;
  v8 = sub_23D9D9BC4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B40, &qword_23D9DCE18);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v28 - v16;
  if (*a1)
  {
    v18 = sub_23D9D9B94();
    v28[1] = v28;
    MEMORY[0x28223BE20](v18);
    v29 = v7;
    v30 = a2;
    v28[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
    v28[0] = v9;
    sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
    v19 = v31;
    sub_23D9D94B4();
    v20 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
    v21 = v29;
    v22 = v28[0];
    MEMORY[0x23EEF2F00](v19, v28[0], v20);
    (*(v5 + 16))(v13, v21, v4);
    (*(v5 + 56))(v13, 0, 1, v4);
    v33 = v22;
    v34 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EEF2F10](v13, v4, OpaqueTypeConformance2);
    sub_23D937D3C(v13);
    (*(v5 + 8))(v21, v4);
    (*(v32 + 8))(v19, v22);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4, v15);
    v24 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
    v33 = v9;
    v34 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EEF2F10](v13, v4, v25);
    sub_23D937D3C(v13);
  }

  v26 = sub_23D937938();
  MEMORY[0x23EEF2F00](v17, v11, v26);
  return sub_23D937D3C(v17);
}

unint64_t sub_23D937938()
{
  result = qword_27E2F4B48;
  if (!qword_27E2F4B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B40, &qword_23D9DCE18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B50, &qword_23D9DCE20);
    sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4B48);
  }

  return result;
}

uint64_t sub_23D937A48(uint64_t a1)
{
  v2._countAndFlagsBits = 1162760004;
  v2._object = 0xE400000000000000;
  v7 = AXSUILocString(_:)(v2);
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  sub_23D937DB4(a1, v6);
  sub_23D91B650();
  return sub_23D9DA434();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23D937B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23D937B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D937BC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4AD0, &qword_23D9DCDE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B38, &qword_23D9DCE10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4AC8, &qword_23D9DCDD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B08, &qword_23D9DCE00);
  sub_23D91F01C(&qword_27E2F4B10, &qword_27E2F4AC8, &qword_23D9DCDD8, MEMORY[0x277CE7668]);
  sub_23D9372FC();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B40, &qword_23D9DCE18);
  sub_23D937938();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D937D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B40, &qword_23D9DCE18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t sub_23D937EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *AXSUIGuestPassSettingsView.init(settings:)@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4BA0, &qword_23D9DCF50);
  sub_23D9DA3A4();
  *a2 = v4;
  sub_23D9DA3A4();
  *(a2 + 16) = v4;
  *(a2 + 24) = *(&v4 + 1);
  sub_23D9DABD4();
  result = sub_23D9DA3A4();
  *(a2 + 32) = v4;
  return result;
}

id sub_23D937F9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C88, &unk_23D9DD190);
  sub_23D9DA3B4();
  result = v7;
  if (!v7)
  {
    sub_23D9DAE64();

    v1 = [objc_opt_self() processInfo];
    [v1 processIdentifier];

    v2 = sub_23D9DAF94();
    MEMORY[0x23EEF3C30](v2);

    sub_23D9DA8B4();
    v3 = objc_allocWithZone(MEMORY[0x277CE7740]);
    v4 = sub_23D9DA8A4();

    v5 = sub_23D9DA8A4();

    v6 = [v3 initWithIdentifier:v4 serviceBundleName:v5];

    sub_23D9DA3C4();
    sub_23D9DA3B4();
    result = v6;
    if (!v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23D938164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v22 = MEMORY[0x277D84A98];
  v24 = MEMORY[0x277D84AA8];
  v25 = a4;
  v8 = sub_23D9D9E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v17[-v13];
  v18 = a3;
  v19 = a4;
  v20 = a1;
  v21 = a2;
  sub_23D9D9E84();
  swift_getWitnessTable();
  sub_23D91F510();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_23D91F510();
  return (v15)(v14, v8);
}

uint64_t sub_23D938318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11(v8);
  sub_23D91F510();
  v12 = *(v4 + 8);
  v12(v6, a3);
  sub_23D91F510();
  return (v12)(v10, a3);
}

uint64_t AXSUIGuestPassSettingsView.body.getter@<X0>(uint64_t (**a1)@<X0>(char *a1@<X8>)@<X8>)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v8[2] = v1[2];
  v4 = swift_allocObject();
  v5 = v1[1];
  *(v4 + 1) = *v1;
  *(v4 + 2) = v5;
  *(v4 + 3) = v1[2];
  *a1 = sub_23D9388F4;
  a1[1] = v4;
  return sub_23D9388FC(v8, &v7);
}

uint64_t sub_23D9384D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a1;
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C38, &qword_23D9DD0B8);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C40, &unk_23D9DD0C0);
  v37 = *(v6 - 8);
  v7 = v37;
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13._object = 0x800000023D9E3E60;
  v13._countAndFlagsBits = 0xD000000000000011;
  v44 = AXSUILocString(_:)(v13);
  sub_23D91B650();
  v44._countAndFlagsBits = sub_23D9D9F04();
  v44._object = v14;
  v45 = v15 & 1;
  v46 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  v36 = v12;
  sub_23D9DA694();
  v43 = v39;
  v17._countAndFlagsBits = 0xD000000000000020;
  v17._object = 0x800000023D9E3E80;
  v44 = AXSUILocString(_:)(v17);
  v44._countAndFlagsBits = sub_23D9D9F04();
  v44._object = v18;
  v45 = v19 & 1;
  v46 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C48, &qword_23D9DD0D0);
  sub_23D939B34();
  v34 = v5;
  sub_23D9DA694();
  v21 = *(v7 + 16);
  v35 = v9;
  v22 = v6;
  v21(v9, v12, v6);
  v23 = v38;
  v24 = *(v38 + 16);
  v25 = v40;
  v26 = v5;
  v27 = v41;
  v24(v40, v26, v41);
  v28 = v42;
  v21(v42, v9, v22);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C68, &qword_23D9DD0E0);
  v24(&v28[*(v29 + 48)], v25, v27);
  v30 = *(v23 + 8);
  v30(v34, v27);
  v31 = *(v37 + 8);
  v31(v36, v22);
  v30(v25, v27);
  return (v31)(v35, v22);
}

uint64_t sub_23D938950()
{
  v0._object = 0x800000023D9E3F20;
  v0._countAndFlagsBits = 0xD000000000000011;
  AXSUILocString(_:)(v0);
  sub_23D91B650();
  return sub_23D9DA434();
}

uint64_t sub_23D9389CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_23D9DA9F4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_23D9DA9B4();
  v4 = sub_23D9DA9A4();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_23D9BB718(0, 0, v2, &unk_23D9DD1A8, v5);
}

uint64_t sub_23D938AD8()
{
  v1 = sub_23D9D91D4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_23D9DA9B4();
  v0[5] = sub_23D9DA9A4();
  v3 = sub_23D9DA994();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_23D938BC8, v3, v2);
}

uint64_t sub_23D938BC8()
{
  sub_23D9D8F44();
  *(v0 + 64) = sub_23D9D8F34();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23D938C70;

  return MEMORY[0x282138F60]();
}

uint64_t sub_23D938C70()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_23D938DF4;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_23D938D8C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23D938D8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D938DF4()
{
  v1 = v0[10];
  v2 = v0[8];

  sub_23D9D8F54();
  v3 = v1;
  v4 = sub_23D9D91C4();
  v5 = sub_23D9DACC4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23D918000, v4, v5, "Unable to begin transfer from settings. %@", v8, 0xCu);
    sub_23D91F344(v9, &qword_27E2F4930, &unk_23D9DCC50);
    MEMORY[0x23EEF4BC0](v9, -1, -1);
    MEMORY[0x23EEF4BC0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_23D938F88@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C70, qword_23D9DD0E8);
  sub_23D9DA3D4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C78, &unk_23D9DD140);
  sub_23D9DA574();

  sub_23D9DA4B4();
  v11 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3B4();
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = (v13 & 1) == 0;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C60, &qword_23D9DD0D8) + 36));
  *v6 = KeyPath;
  v6[1] = sub_23D929B6C;
  v6[2] = v5;
  v7 = swift_allocObject();
  v8 = a1[1];
  *(v7 + 1) = *a1;
  *(v7 + 2) = v8;
  *(v7 + 3) = a1[2];
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C48, &qword_23D9DD0D0) + 36));
  *v9 = sub_23D939D14;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return sub_23D9388FC(a1, &v11);
}

uint64_t sub_23D939198@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E3F00;
  v2._countAndFlagsBits = 0xD000000000000019;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_23D939208(__int128 *a1)
{
  v2 = sub_23D9D91D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D9D8F54();
  v6 = sub_23D9D91C4();
  v7 = sub_23D9DACE4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23D918000, v6, v7, "Checking if sync is available", v8, 2u);
    MEMORY[0x23EEF4BC0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = a1[1];
  v16 = *a1;
  v17 = v9;
  v18 = a1[2];
  v10 = sub_23D937F9C();
  v11 = swift_allocObject();
  v12 = a1[1];
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = a1[2];
  aBlock[4] = sub_23D939D74;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D9397D4;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  sub_23D9388FC(a1, v14);

  [v10 sendAsynchronousMessage:0 withIdentifier:14 targetAccessQueue:0 completion:v13];
  _Block_release(v13);
}

uint64_t sub_23D939434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23D9D91D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  if (!a1)
  {
    goto LABEL_10;
  }

  strcpy(v26, "syncAvailable");
  v26[7] = -4864;
  sub_23D9DAE24();
  if (!*(a1 + 16) || (v12 = sub_23D95EAA8(v27), (v13 & 1) == 0))
  {
    sub_23D939DE0(v27);
LABEL_10:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_11;
  }

  sub_23D939E34(*(a1 + 56) + 32 * v12, &v28);
  sub_23D939DE0(v27);
  if (!*(&v29 + 1))
  {
LABEL_11:
    sub_23D91F344(&v28, &qword_27E2F6440, &qword_23D9DD180);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v14 = v27[0];
    sub_23D9D8F54();
    v15 = sub_23D9D91C4();
    v16 = sub_23D9DACE4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v14;
      _os_log_impl(&dword_23D918000, v15, v16, "Sync available: %{BOOL}d", v17, 8u);
      MEMORY[0x23EEF4BC0](v17, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    *v27 = *(a3 + 16);
    LOBYTE(v28) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
    return sub_23D9DA3C4();
  }

LABEL_12:
  sub_23D9D8F54();

  v19 = sub_23D9D91C4();
  v20 = sub_23D9DACC4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v27 = v22;
    *v21 = 136315138;
    *&v28 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C80, &qword_23D9DD188);
    v23 = sub_23D9DA8D4();
    v25 = sub_23D9BDA5C(v23, v24, v27);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_23D918000, v19, v20, "Invalid reply when checking if sync is available: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23EEF4BC0](v22, -1, -1);
    MEMORY[0x23EEF4BC0](v21, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23D9397D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23D9DA854();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}
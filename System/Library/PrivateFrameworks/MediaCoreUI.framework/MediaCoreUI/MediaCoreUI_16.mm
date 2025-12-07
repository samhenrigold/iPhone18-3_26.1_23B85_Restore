double sub_1C5ACF210()
{
  v1 = *(v0 + 18);
  v15 = *v0;
  v16 = *(v0 + 8);
  if (v1 == 2)
  {
    v17 = 2;
    v18 = *(v0 + 19);
    v19 = *(v0 + 35);
    *v20 = *(v0 + 51);
    *&v20[14] = *(v0 + 65);
    DeviceMetrics.padding.getter(v13);
    v2 = v14;
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = 2;
    v10 = *(v0 + 19);
    v11 = *(v0 + 35);
    v12[0] = *(v0 + 51);
    *(v12 + 14) = *(v0 + 65);
    sub_1C5B05750();
    v4 = v2 + v3;
    v5 = 16.0;
  }

  else
  {
    v17 = v1;
    v18 = *(v0 + 19);
    v19 = *(v0 + 35);
    *v20 = *(v0 + 51);
    *&v20[14] = *(v0 + 65);
    DeviceMetrics.padding.getter(&v7);
    v4 = *(&v7 + 1);
    v5 = -16.0;
  }

  return v4 + v5;
}

uint64_t sub_1C5ACF334@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC9014();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  v10 = v1[5];
  v20[4] = v1[4];
  v20[5] = v10;
  v20[6] = v1[6];
  v11 = v1[1];
  v20[0] = *v1;
  v20[1] = v11;
  v12 = v1[3];
  v20[2] = v1[2];
  v20[3] = v12;
  v13 = swift_allocObject();
  v14 = v1[5];
  v13[5] = v1[4];
  v13[6] = v14;
  v13[7] = v1[6];
  v15 = v1[1];
  v13[1] = *v1;
  v13[2] = v15;
  v16 = v1[3];
  v13[3] = v1[2];
  v13[4] = v16;
  sub_1C5AD065C(v20, v19);
  sub_1C5BC9004();
  (*(v4 + 16))(v6, v9, v3);
  sub_1C5AD0694(&qword_1EC196DD8, MEMORY[0x1E697F400], MEMORY[0x1E697F3F8]);
  v17 = sub_1C5BC8674();
  result = (*(v4 + 8))(v9, v3);
  *a1 = sub_1C5AD0654;
  *(a1 + 8) = v13;
  *(a1 + 16) = v17;
  *(a1 + 24) = 0x408F400000000000;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1C5ACF51C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_1C5BC8F34();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197118, &qword_1C5BE6468);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v60 - v6);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197120, &qword_1C5BE6470);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v60 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197128, &qword_1C5BE6478);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v60 - v9;
  v11 = v1[2];
  v12 = v1[3];
  v13 = *v1;
  v80 = v1[1];
  v81 = v11;
  *v82 = v12;
  *&v82[10] = *(v1 + 58);
  v79 = v13;
  v14 = *(v1 + 10);
  *v7 = swift_getKeyPath(byte_1C5BE6480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v15 = sub_1C5BCAA54();
  if (v14)
  {
    v17 = v15;
    v18 = v16;
    swift_beginAccess();
    v19 = 0;
    if (*(v14 + 17))
    {
      v19 = sub_1C5BCA464();
    }

    v20 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197130, &qword_1C5BE64B8) + 36));
    *v20 = v19;
    v20[1] = v17;
    v20[2] = v18;
    v21 = sub_1C5BCAA34();
    v23 = v22;
    sub_1C5BCABC4();
    v25 = v24;
    v27 = v26;
    sub_1C5BCABB4();
    v29 = v28;
    v31 = v30;
    v32 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197138, &unk_1C5BE64C0) + 36);
    *v32 = v21;
    *(v32 + 1) = v23;
    *(v32 + 1) = xmmword_1C5BE6300;
    *(v32 + 4) = v25;
    *(v32 + 5) = v27;
    *(v32 + 6) = v29;
    *(v32 + 7) = v31;
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v33 = (v7 + *(v5 + 36));
    v34 = v78[5];
    *v33 = v78[4];
    v33[1] = v34;
    v33[2] = v78[6];
    v35 = sub_1C5BC98C4();
    v36 = v65;
    if (v82[25])
    {
      v77 = v81;
      v78[0] = *v82;
      *(v78 + 9) = *&v82[9];
      v75 = v79;
      v76 = v80;
    }

    else
    {

      sub_1C5BCB4E4();
      v37 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v79, &unk_1EC194DE0, &qword_1C5BDCD20);
      (*(v62 + 8))(v4, v63);
    }

    v74[1] = v77;
    v74[2] = v78[0];
    *(&v74[2] + 9) = *(v78 + 9);
    v73 = v75;
    v74[0] = v76;
    sub_1C5ACFB6C();
    sub_1C5BC8174();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_1C59E7D34(v7, v36, &qword_1EC197118, &qword_1C5BE6468);
    v46 = v36 + *(v61 + 36);
    *v46 = v35;
    *(v46 + 8) = v39;
    *(v46 + 16) = v41;
    *(v46 + 24) = v43;
    *(v46 + 32) = v45;
    *(v46 + 40) = 0;
    v47 = sub_1C5BC98E4();
    if (v82[25])
    {
      v74[1] = v81;
      v74[2] = *v82;
      *(&v74[2] + 9) = *&v82[9];
      v73 = v79;
      v74[0] = v80;
    }

    else
    {

      sub_1C5BCB4E4();
      v48 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v79, &unk_1EC194DE0, &qword_1C5BDCD20);
      (*(v62 + 8))(v4, v63);
    }

    if (BYTE2(v74[0]) != 2)
    {
      *&v67[24] = v73;
      v68 = v74[0];
      v69 = BYTE2(v74[0]);
      v70 = *(v74 + 3);
      v71 = *(&v74[1] + 3);
      *v72 = *(&v74[2] + 3);
      *&v72[14] = *(&v74[3] + 1);
      DeviceMetrics.padding.getter(v67);
    }

    sub_1C5BC8174();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_1C59E7D34(v36, v10, &qword_1EC197120, &qword_1C5BE6470);
    v57 = &v10[*(v64 + 36)];
    *v57 = v47;
    *(v57 + 1) = v50;
    *(v57 + 2) = v52;
    *(v57 + 3) = v54;
    *(v57 + 4) = v56;
    v57[40] = 0;
    v58 = v66;
    sub_1C59E7D34(v10, v66, &qword_1EC197128, &qword_1C5BE6478);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197140, &qword_1C5BE64D0);
    *(v58 + *(result + 36)) = 0;
  }

  else
  {
    _s5DebugCMa(0);
    sub_1C5AD0694(&qword_1EDA4A208, _s5DebugCMa, &unk_1C5BE6138);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

double sub_1C5ACFB6C()
{
  v1 = *(v0 + 18);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 16.0;
    }

    else
    {
      v2 = 0.0;
    }
  }

  else
  {
    v13 = *v0;
    v14 = *(v0 + 8);
    if (v1)
    {
      v15 = 1;
      v16 = *(v0 + 19);
      v17 = *(v0 + 35);
      *v18 = *(v0 + 51);
      *&v18[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(v11);
      v2 = v12;
      v5 = *v0;
      v6 = *(v0 + 8);
      v7 = 1;
      v8 = *(v0 + 19);
      v9 = *(v0 + 35);
      v10[0] = *(v0 + 51);
      *(v10 + 14) = *(v0 + 65);
      DeviceMetrics.padding.getter(v4);
    }

    else
    {
      v15 = 0;
      v16 = *(v0 + 19);
      v17 = *(v0 + 35);
      *v18 = *(v0 + 51);
      *&v18[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(&v5);
      v2 = *(&v5 + 1);
    }
  }

  return v2 + -16.0;
}

uint64_t sub_1C5ACFCA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5BC90F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  sub_1C594C704(&v23 - v7);
  v9 = *MEMORY[0x1E697F600];
  v26 = *(v3 + 104);
  v26(v5, v9, v2);
  v10 = sub_1C5BC8274();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  v12 = objc_opt_self();
  v13 = &selRef_clearColor;
  if ((v10 & 1) == 0)
  {
    v13 = &selRef_systemBackgroundColor;
  }

  v14 = [v12 *v13];
  v15 = sub_1C5BCA424();
  v16 = sub_1C5BCAA54();
  v24 = v17;
  v25 = v16;
  sub_1C594C704(v8);
  v26(v5, v9, v2);
  v18 = sub_1C5BC8274();
  v11(v5, v2);
  result = (v11)(v8, v2);
  v20 = 0xD00000000000001ELL;
  if ((v18 & 1) == 0)
  {
    v20 = 0;
  }

  *a1 = v15;
  *(a1 + 8) = v20;
  v21 = 0x80000001C5BFAD70;
  if ((v18 & 1) == 0)
  {
    v21 = 0;
  }

  *(a1 + 16) = v21;
  *(a1 + 24) = 0;
  v22 = v24;
  *(a1 + 32) = v25;
  *(a1 + 40) = v22;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1C5ACFF18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_1C5ACFF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5ACFFE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5AD0004(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

unint64_t sub_1C5AD004C()
{
  result = qword_1EC197148;
  if (!qword_1EC197148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197140, &qword_1C5BE64D0);
    sub_1C5AD00D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197148);
  }

  return result;
}

unint64_t sub_1C5AD00D8()
{
  result = qword_1EC197150;
  if (!qword_1EC197150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197128, &qword_1C5BE6478);
    sub_1C5AD0164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197150);
  }

  return result;
}

unint64_t sub_1C5AD0164()
{
  result = qword_1EC197158;
  if (!qword_1EC197158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197120, &qword_1C5BE6470);
    sub_1C5AD01F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197158);
  }

  return result;
}

unint64_t sub_1C5AD01F0()
{
  result = qword_1EC197160;
  if (!qword_1EC197160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197118, &qword_1C5BE6468);
    sub_1C5AD027C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197160);
  }

  return result;
}

unint64_t sub_1C5AD027C()
{
  result = qword_1EC197168;
  if (!qword_1EC197168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197138, &unk_1C5BE64C0);
    sub_1C5AD0334();
    sub_1C5924F54(&qword_1EC197178, &qword_1EC197180, &qword_1C5BE6590, MEMORY[0x1E697FB38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197168);
  }

  return result;
}

unint64_t sub_1C5AD0334()
{
  result = qword_1EC197170;
  if (!qword_1EC197170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197130, &qword_1C5BE64B8);
    sub_1C5AD0694(&qword_1EC194AA8, type metadata accessor for NowPlayingContrastSensitiveBackdrop, &unk_1C5BE63C4);
    sub_1C5924F54(&qword_1EC194AB0, &qword_1EC194AB8, &qword_1C5BDCDE0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197170);
  }

  return result;
}

unint64_t sub_1C5AD041C()
{
  result = qword_1EC197188;
  if (!qword_1EC197188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197190, &qword_1C5BE6598);
    sub_1C5924F54(&qword_1EC197198, &qword_1EC1971A0, qword_1C5BE65A0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197188);
  }

  return result;
}

double sub_1C5AD04F0@<D0>(uint64_t a3@<X8>)
{
  sub_1C5BC86C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921D8, &qword_1C5BD48E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5BD4D40;
  sub_1C5BCA474();
  *(v4 + 32) = sub_1C5BCA984();
  *(v4 + 40) = v5;
  sub_1C5BCA484();
  *(v4 + 48) = sub_1C5BCA984();
  *(v4 + 56) = v6;
  sub_1C5BCA994();
  sub_1C5BC88B4();
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  return result;
}

__n128 sub_1C5AD05E0@<Q0>(double (**a1)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  result = *(v1 + 32);
  *(v3 + 48) = result;
  *a1 = sub_1C5AD06DC;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5AD0694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C5AD06E4()
{
  result = qword_1EC1971E0;
  if (!qword_1EC1971E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1971E8, &qword_1C5BE6690);
    sub_1C5AD0770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1971E0);
  }

  return result;
}

unint64_t sub_1C5AD0770()
{
  result = qword_1EC1971F0;
  if (!qword_1EC1971F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1971F8, &qword_1C5BE6698);
    sub_1C5AD0828();
    sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220, &unk_1C5BEA6E0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1971F0);
  }

  return result;
}

unint64_t sub_1C5AD0828()
{
  result = qword_1EC197200;
  if (!qword_1EC197200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197208, &qword_1C5BE66A0);
    sub_1C5924F54(&qword_1EC197210, &qword_1EC197218, &qword_1C5BE66A8, MEMORY[0x1E697E378]);
    sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197200);
  }

  return result;
}

uint64_t static NowPlayingButtonID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_1C5951550(v11, v2);
  sub_1C5951550(v4, v5);
  LOBYTE(v4) = sub_1C5AD0CDC(&v11, &v8);
  sub_1C5950CE4(v8, v9);
  sub_1C5950CE4(v11, v12);
  return v4 & 1;
}

void NowPlayingButtonID.geometryID.getter(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1C5BCBA94();

  if (v5)
  {
    MEMORY[0x1C694F170](0x3A70756B6F6F6CLL, 0xE700000000000000);
    sub_1C5BCBBA4();
    sub_1C5950CE4(v4, v3);
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1C694F170](v4, v3);

  *a1 = 0xD000000000000011;
  a1[1] = 0x80000001C5BFADB0;
}

double static NowPlayingButtonID.lookup(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return result;
}

double static NowPlayingButtonID.spacer.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x726563617073;
  *a1 = xmmword_1C5BD4520;
  *(a1 + 16) = 0;
  return result;
}

uint64_t NowPlayingButtonID.hash(into:)(uint64_t a1)
{
  MEMORY[0x1C69501A0](*(v1 + 16));

  return sub_1C5BCAF04();
}

uint64_t NowPlayingButtonID.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AD0B90()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AD0BF4(uint64_t a1)
{
  MEMORY[0x1C69501A0](*(v1 + 16));

  return sub_1C5BCAF04();
}

uint64_t sub_1C5AD0C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_1C5951550(v11, v2);
  sub_1C5951550(v4, v5);
  LOBYTE(v4) = sub_1C5AD0CDC(&v11, &v8);
  sub_1C5950CE4(v8, v9);
  sub_1C5950CE4(v11, v12);
  return v4 & 1;
}

BOOL sub_1C5AD0CDC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        v9 = sub_1C5BCBDE4();
        sub_1C5951550(v5, v4);
        sub_1C5951550(v3, v2);
        sub_1C5950CE4(v3, v2);
        sub_1C5950CE4(v5, v4);
        return (v9 & 1) != 0;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_1C5951550(*a2, *(a2 + 8));
    sub_1C5951550(v3, v2);
    sub_1C5950CE4(v3, v2);
    sub_1C5950CE4(v5, v4);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
    v12 = sub_1C5BCBDE4();
    sub_1C5951550(v5, v4);
    sub_1C5951550(v3, v2);
    sub_1C5950CE4(v3, v2);
    sub_1C5950CE4(v5, v4);
    return v12 & 1;
  }

LABEL_15:
  sub_1C5951550(v6, v7);
  sub_1C5951550(v3, v2);
  sub_1C5950CE4(v3, v2);
  sub_1C5950CE4(v3, v2);
  return 1;
}

unint64_t sub_1C5AD0ECC()
{
  result = qword_1EC197238;
  if (!qword_1EC197238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197238);
  }

  return result;
}

unint64_t sub_1C5AD0F5C()
{
  result = qword_1EC197240;
  if (!qword_1EC197240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197240);
  }

  return result;
}

uint64_t sub_1C5AD0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C5929BC8(a3, v25 - v10);
  v12 = sub_1C5BCB214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1930A0, &qword_1C5BD7440);
  }

  else
  {
    sub_1C5BCB204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C5BCB194();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C5BCAED4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C5924EF4(a3, &qword_1EC1930A0, &qword_1C5BD7440);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C5924EF4(a3, &qword_1EC1930A0, &qword_1C5BD7440);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C5AD12A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C5929BC8(a3, v25 - v10);
  v12 = sub_1C5BCB214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1930A0, &qword_1C5BD7440);
  }

  else
  {
    sub_1C5BCB204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C5BCB194();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C5BCAED4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961E0, &qword_1C5BE2E10);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1C5924EF4(a3, &qword_1EC1930A0, &qword_1C5BD7440);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C5924EF4(a3, &qword_1EC1930A0, &qword_1C5BD7440);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961E0, &qword_1C5BE2E10);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C5AD15AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C5929BC8(a3, v25 - v10);
  v12 = sub_1C5BCB214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1930A0, &qword_1C5BD7440);
  }

  else
  {
    sub_1C5BCB204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C5BCB194();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C5BCAED4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C5924EF4(a3, &qword_1EC1930A0, &qword_1C5BD7440);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C5924EF4(a3, &qword_1EC1930A0, &qword_1C5BD7440);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C5AD1894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for NowPlayingViewModel();
  sub_1C5937ED0(qword_1EDA49710, type metadata accessor for NowPlayingViewModel, &protocol conformance descriptor for NowPlayingViewModel);
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v6;
  result = swift_getKeyPath(byte_1C5BE6E40);
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = a1;
  *(a3 + 64) = a2;
  return result;
}

uint64_t sub_1C5AD1930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath(a8_10);
  *(a4 + 73) = 0;
  *(a4 + 80) = swift_getKeyPath(byte_1C5BE6E00);
  *(a4 + 88) = 0;
  v9 = type metadata accessor for NowPlayingHostedViewControllerStack(0, a2, a3, v8);
  v10 = *(*(a2 - 8) + 32);
  v11 = a4 + *(v9 + 40);

  return v10(v11, a1, a2);
}

double sub_1C5AD19EC(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = a1[3];
    *(v5 + 80) = a1[2];
    *(v5 + 96) = v6;
    *(v5 + 105) = *(a1 + 57);
    v7 = a1[1];
    *(v5 + 48) = *a1;
    *(v5 + 64) = v7;
    v8 = *(v5 + 64);
    if ((v8 & 0xFF0000) != 0x40000)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = *(v5 + 40);
        v11 = v9;
        ObjectType = swift_getObjectType();
        v13 = *a1;
        v14 = v8;
        v15 = *(a1 + 24);
        v16 = *(a1 + 40);
        v17 = *(a1 + 56);
        v18 = *(a1 + 72);
        (*(v10 + 40))(&v13, ObjectType, v10);
      }
    }
  }

  return result;
}

__n128 sub_1C5AD1AFC@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(a1 + 32) = *(v1 + 80);
  *(a1 + 48) = v3;
  *(a1 + 57) = *(v1 + 105);
  result = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = result;
  return result;
}

void sub_1C5AD1B50(__int128 *a1)
{
  swift_beginAccess();
  v3 = a1[3];
  *(v1 + 80) = a1[2];
  *(v1 + 96) = v3;
  *(v1 + 105) = *(a1 + 57);
  v4 = a1[1];
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  v5 = *(v1 + 64);
  if ((v5 & 0xFF0000) != 0x40000)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(v1 + 40);
      v8 = Strong;
      ObjectType = swift_getObjectType();
      v10 = *a1;
      v11 = v5;
      v12 = *(a1 + 24);
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      v15 = *(a1 + 72);
      (*(v7 + 40))(&v10, ObjectType, v7);
    }
  }
}

void sub_1C5AD1C24(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  swift_unownedRetainStrong();
  v4 = *(v3 + 104);

  swift_beginAccess();
  LOBYTE(v3) = *(v4 + 58);

  *a2 = v3;
}

uint64_t sub_1C5AD1C9C()
{
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();
  v2 = *(v1 + 104);

  swift_beginAccess();
  v3 = *(v2 + 58);

  return v3;
}

double sub_1C5AD1D04(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = *(v1 + 16);
  swift_unownedRetainStrong();
  v6 = *(v5 + 104);

  swift_beginAccess();
  LODWORD(v5) = *(v6 + 58);

  if (v5 != v4)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C5BC7D64();
    __swift_project_value_buffer(v8, qword_1EDA5DA78);

    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      v12 = *(v2 + 16);
      swift_unownedRetainStrong();
      v13 = *(v12 + 104);

      swift_beginAccess();
      LODWORD(v12) = *(v13 + 58);

      *(v11 + 4) = v12;

      _os_log_impl(&dword_1C5922000, v9, v10, "HostedContentSession client set controls hidden to %{BOOL}d", v11, 8u);
      MEMORY[0x1C69510F0](v11, -1, -1);
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v14);
    v16[2] = v2;
    v17 = a1 & 1;
    v15 = sub_1C5BCAB14();
    sub_1C596D96C(v15, 1, sub_1C5AD3554, v16);
  }

  return result;
}

void sub_1C5AD1F1C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  swift_unownedRetainStrong();
  v4 = *(v3 + 104);

  KeyPath = swift_getKeyPath(aP_28);
  v6 = swift_getKeyPath(aP_29);
  sub_1C5971FE0(a2, v4, KeyPath, v6);
}

void (*sub_1C5AD1F9C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 16);
  swift_unownedRetainStrong();
  v6 = *(v5 + 104);

  swift_beginAccess();
  LOBYTE(v5) = *(v6 + 58);

  *(v4 + 32) = v5;
  return sub_1C5AD2050;
}

void sub_1C5AD2050(uint64_t a1)
{
  v1 = *a1;
  sub_1C5AD1D04(*(*a1 + 32));

  free(v1);
}

void *NowPlayingHostedContentSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1C5BCB214();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v6 + 24) = *(v1 + 40);
  swift_unknownObjectWeakInit();

  sub_1C5BCB1E4();

  v8 = sub_1C5BCB1D4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;

  sub_1C5AD0FB8(0, 0, v4, &unk_1C5BE68D0, v9);

  swift_unownedRelease();

  sub_1C5AC8D5C(v1 + 32);
  return v1;
}

uint64_t NowPlayingHostedContentSession.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1C5BCB214();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v6 + 24) = *(v1 + 40);
  swift_unknownObjectWeakInit();

  sub_1C5BCB1E4();

  v8 = sub_1C5BCB1D4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;

  sub_1C5AD0FB8(0, 0, v4, &unk_1C5BE68D8, v9);

  swift_unownedRelease();

  sub_1C5AC8D5C(v1 + 32);
  return swift_deallocClassInstance();
}

void sub_1C5AD23D0(uint64_t *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  if (*(v1 + 48) == 1)
  {
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v10;
    a1[3] = v9;

    sub_1C593E7D8(v7, v8, v10, v9);
  }

  else
  {
    v11 = *(v1 + 16);

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v13 = sub_1C596AC4C(v11, v8, v10, v9, 0);
    (*(v4 + 8))(v6, v3, v13);
  }
}

double static NowPlayingHostedViewControllerRepresentable.dismantleUIViewController(_:coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(a2, a3);
  qword_1EC1A6D00 = 0;

  return result;
}

void sub_1C5AD25DC(_OWORD *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13[10] = *(v1 + 58);
  v7 = v1[3];
  v12[2] = v1[2];
  *v13 = v7;
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  if (v13[25])
  {
    v9 = v1[3];
    a1[2] = v1[2];
    a1[3] = v9;
    *(a1 + 57) = *(v1 + 57);
    v10 = v1[1];
    *a1 = *v1;
    a1[1] = v10;
  }

  else
  {

    sub_1C5BCB4E4();
    v11 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v12, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C5AD2764()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 80);
  if ((*(v0 + 88) & 1) == 0)
  {
    v6 = *(v0 + 80);

    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v8 = sub_1C5950E44(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v9[1];
  }

  return result;
}

uint64_t sub_1C5AD28BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C5AD2938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1C5AD29B4(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1C5BC9784();
  __break(1u);
}

uint64_t NowPlayingHostedViewControllerStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197248, &qword_1C5BE68E0);
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197250, &qword_1C5BE68E8);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v5 = sub_1C5BCA7D4();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_1C5BC8AB4();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(a1 + 24);
  v25 = v4;
  v26 = v14;
  v27 = v2;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  sub_1C5BC98A4();
  v31 = &type metadata for Features;
  v32 = sub_1C5A2E158();
  v15 = swift_allocObject();
  *&v30 = v15;
  *(v15 + 16) = "MediaCoreUI";
  *(v15 + 24) = 11;
  *(v15 + 32) = 2;
  *(v15 + 40) = "HoveringChapterPicker";
  *(v15 + 48) = 21;
  *(v15 + 56) = 2;
  v16 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  if ((v16 & 1) == 0)
  {
    sub_1C5AD25DC(&v30);
    sub_1C5B4B500(&v30);
  }

  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  (*(v22 + 8))(v7, v5);
  v28 = WitnessTable;
  v29 = MEMORY[0x1E697E5D8];
  v18 = swift_getWitnessTable();
  sub_1C593EDC0(v10, v8, v18);
  v19 = *(v23 + 8);
  v19(v10, v8);
  sub_1C593EDC0(v13, v8, v18);
  return (v19)(v13, v8);
}

uint64_t sub_1C5AD2DB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v40 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197250, &qword_1C5BE68E8);
  v5 = sub_1C5BC8AB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35[-v10];
  type metadata accessor for NowPlayingHostedViewControllerStack(0, a1, a2, v12);
  sub_1C5AD25DC(&v65);
  if (BYTE2(v66) == 2 || (*(&v66 + 1) = &type metadata for Features, *&v67 = sub_1C5A2E158(), v13 = swift_allocObject(), *&v65 = v13, *(v13 + 16) = "MediaCoreUI", *(v13 + 24) = 11, *(v13 + 32) = 2, *(v13 + 40) = "HoveringChapterPicker", *(v13 + 48) = 21, *(v13 + 56) = 2, v14 = sub_1C5BC7C14(), __swift_destroy_boxed_opaque_existential_0(&v65), (v14 & 1) != 0))
  {
    sub_1C5AD4B60(&v65);
  }

  else
  {
    v39 = sub_1C5AD2764();
    v38 = sub_1C5BC9664();
    sub_1C5BCABD4();
    v16 = v15;
    v18 = v17;
    v37 = sub_1C5BC98C4();
    sub_1C5AD25DC(&v65);
    DeviceMetrics.padding.getter(&v55);
    sub_1C5BC8174();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    LOBYTE(v44) = 0;
    v36 = sub_1C5BC98E4();
    sub_1C5AD25DC(&v65);
    DeviceMetrics.padding.getter(&v55);
    sub_1C5BC8174();
    *&v55 = 0x49676E6979616C70;
    *(&v55 + 1) = 0xEB000000006D6574;
    *&v56 = v39;
    DWORD2(v56) = v38;
    *&v57 = v16;
    *(&v57 + 1) = v18;
    LOBYTE(v58) = 1;
    BYTE8(v58) = v37;
    *&v59 = v20;
    *(&v59 + 1) = v22;
    *&v60 = v24;
    *(&v60 + 1) = v26;
    LOBYTE(v61) = 0;
    BYTE8(v61) = v36;
    *&v62 = v27;
    *(&v62 + 1) = v28;
    *&v63 = v29;
    *(&v63 + 1) = v30;
    v64 = 0;
    CGSizeMake();
    v71 = v61;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    v67 = v57;
    v68 = v58;
    v69 = v59;
    v70 = v60;
    v65 = v55;
    v66 = v56;
  }

  sub_1C5AD472C();
  sub_1C5BCA3A4();
  v31 = sub_1C5924F54(&qword_1EC197280, &qword_1EC197250, &qword_1C5BE68E8, MEMORY[0x1E697DDB0]);
  v54[2] = a2;
  v54[3] = v31;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v8, v5, WitnessTable);
  v33 = *(v6 + 8);
  v33(v8, v5);
  v50 = v71;
  v51 = v72;
  v52 = v73;
  v53 = v74;
  v46 = v67;
  v47 = v68;
  v48 = v69;
  v49 = v70;
  v44 = v65;
  v45 = v66;
  v54[0] = &v44;
  (*(v6 + 16))(v8, v11, v5);
  v54[1] = v8;
  v43[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197248, &qword_1C5BE68E0);
  v43[1] = v5;
  v41 = sub_1C5AD48F0();
  v42 = WitnessTable;
  sub_1C594226C(v54, 2uLL, v43);
  v33(v11, v5);
  v33(v8, v5);
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v55 = v44;
  v56 = v45;
  return sub_1C5924EF4(&v55, &qword_1EC197248, &qword_1C5BE68E0);
}

double sub_1C5AD3268@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = sub_1C5BC9044();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectInset(v20, -100.0, 0.0);
  (*(v11 + 104))(v13, *MEMORY[0x1E697F468], v10);
  sub_1C5BC9AB4();
  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = v19;
  return result;
}

void (*sub_1C5AD33B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5AD3440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AD472C();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5AD34A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AD472C();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5AD3508(uint64_t a1)
{
  v2 = sub_1C5AD472C();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C5AD3574()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592A748;

  return sub_1C5A2C00C();
}

uint64_t sub_1C5AD3628()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592ABD4;

  return sub_1C5A2C00C();
}

uint64_t sub_1C5AD36DC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C5AD37D0;

  return v5(v2 + 16);
}

uint64_t sub_1C5AD37D0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C5AD3900(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1972C8, &qword_1C5BE6D40);
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  *(v2 + 24) = MEMORY[0x1E69E7CD0];
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0x40000;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 16) = a1;
  v11 = *(a1 + 152);
  swift_getKeyPath(byte_1C5BE6D48);
  *&v26 = v11;
  swift_unownedRetain();
  sub_1C5937ED0(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  v12 = *(v11 + 104);
  v13 = *(v11 + 136);
  v28 = *(v11 + 120);
  v29[0] = v13;
  *(v29 + 9) = *(v11 + 145);
  v26 = *(v11 + 88);
  v27 = v12;
  swift_beginAccess();
  v14 = v28;
  v15 = v29[0];
  v16 = v26;
  *(v2 + 64) = v27;
  *(v2 + 80) = v14;
  *(v2 + 96) = v15;
  *(v2 + 105) = *(v29 + 9);
  *(v2 + 48) = v16;
  v24 = *(v11 + 168);
  sub_1C5929CA0();

  v17 = sub_1C5BCB5A4();
  v25 = v17;
  v18 = sub_1C5BCB594();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943B0, &qword_1C5BDB080);
  sub_1C5924F54(&qword_1EDA46870, &qword_1EC1943B0, &qword_1C5BDB080, MEMORY[0x1E695BFB0]);
  sub_1C5937ED0(&qword_1EDA4E630, sub_1C5929CA0, MEMORY[0x1E69E8028]);
  sub_1C5BC80D4();
  sub_1C5924EF4(v6, &unk_1EC199F20, &qword_1C5BD88C0);

  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&qword_1EDA468E0, &qword_1EC1972C8, &qword_1C5BE6D40, MEMORY[0x1E695BE98]);
  v19 = v22;
  sub_1C5BC8114();

  (*(v23 + 8))(v10, v19);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  return v2;
}

uint64_t sub_1C5AD3D30()
{
  result = *v0;
  if (!*v0)
  {
    type metadata accessor for NowPlayingViewModel();
    sub_1C5937ED0(qword_1EDA49710, type metadata accessor for NowPlayingViewModel, &protocol conformance descriptor for NowPlayingViewModel);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5AD3DAC(uint64_t a1)
{
  v3 = v1[1];
  v4 = *(v1 + 7);
  v5 = *(v1 + 8);
  v15 = *v1;
  v16 = v3;
  v17 = v1[2];
  v18 = *(v1 + 6);
  v19 = v4;
  v20 = v5;
  sub_1C5AD3D30();
  type metadata accessor for NowPlayingHostedContentSession();
  swift_allocObject();

  v7 = sub_1C5AD3900(v6);

  qword_1EC1A6D00 = v7;

  v8 = v4(v7);
  v9 = *(a1 + 24);
  *(v7 + 40) = v9;
  swift_unknownObjectWeakAssign();
  v10 = *(a1 + 16);
  (*(v9 + 8))(v10, v9);
  sub_1C5AD23D0(&v15);
  v11 = *(&v15 + 1);
  if (*(&v15 + 1) == 1)
  {
    (*(v9 + 16))(v10, v9);
  }

  else
  {
    v12 = v16;
    v13 = v15;

    sub_1C593E820(v13, v11, v12, *(&v12 + 1));
  }

  return v8;
}

void sub_1C5AD3F38(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C5AD418C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5AD41D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5AD4224(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 89) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((((a1 + 81) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 73);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C5AD43B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 89) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 81) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 36) = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[73] = -a2;
  }
}

unint64_t sub_1C5AD4680()
{
  result = qword_1EC197268;
  if (!qword_1EC197268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197268);
  }

  return result;
}

unint64_t sub_1C5AD46D8()
{
  result = qword_1EC197270;
  if (!qword_1EC197270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197270);
  }

  return result;
}

unint64_t sub_1C5AD472C()
{
  result = qword_1EC197278;
  if (!qword_1EC197278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197278);
  }

  return result;
}

uint64_t sub_1C5AD4780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592A748;

  return sub_1C5AD36DC(a1, v4);
}

uint64_t sub_1C5AD4838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592ABD4;

  return sub_1C5AD36DC(a1, v4);
}

unint64_t sub_1C5AD48F0()
{
  result = qword_1EC197288;
  if (!qword_1EC197288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197248, &qword_1C5BE68E0);
    sub_1C5AD49D0(&qword_1EC197290, &qword_1EC197298, &qword_1C5BE6D18, sub_1C5AD49A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197288);
  }

  return result;
}

uint64_t sub_1C5AD49D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1C5AD4A54()
{
  result = qword_1EC1972B0;
  if (!qword_1EC1972B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1972B8, &qword_1C5BEA9F0);
    sub_1C5AD4B0C();
    sub_1C5924F54(&qword_1EC191B60, &qword_1EC191B40, &unk_1C5BE6D30, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1972B0);
  }

  return result;
}

unint64_t sub_1C5AD4B0C()
{
  result = qword_1EC1972C0;
  if (!qword_1EC1972C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1972C0);
  }

  return result;
}

double sub_1C5AD4B60(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1C5AD4C0C()
{
  result = qword_1EDA46C38[0];
  if (!qword_1EDA46C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA46C38);
  }

  return result;
}

uint64_t MCUINamespace<A>.fittedToMaxLines(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1();
  sub_1C5AD4C0C();
  return sub_1C5BC9E14();
}

uint64_t View.fittedToMaxLines(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MCUINamespace(0, a3, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  View.mcui.getter(a3, &v13 - v10);
  MCUINamespace<A>.fittedToMaxLines(_:)(a1, a2 & 1, v8, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t View.fittedToMaxLines(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MCUINamespace(0, a3, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  View.mcui.getter(a3, &v13 - v10);
  MCUINamespace<A>.fittedToMaxLines(_:)(a1, a2, v8, a4);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1C5AD4F10()
{
  result = qword_1EC1972D8;
  if (!qword_1EC1972D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1972D0, &qword_1C5BE6E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1972D8);
  }

  return result;
}

uint64_t sub_1C5AD4F84()
{
  v0 = 0;
  result = MGGetProductType();
  if (result > 2270970152)
  {
    if (result > 3242623366)
    {
      if (result != 3645319985 && result != 3242623367)
      {
        goto LABEL_15;
      }
    }

    else if (result != 2270970153 && result != 2311900306)
    {
      goto LABEL_15;
    }
  }

  else if (result > 1429914405)
  {
    if (result != 1429914406 && result != 1721691077)
    {
      goto LABEL_15;
    }
  }

  else if (result != 228444038 && result != 502329937)
  {
LABEL_15:
    v0 = 1;
  }

  byte_1EC1972E0 = v0;
  return result;
}

uint64_t static Backdrop.supportsHighFrameRate.getter()
{
  if (qword_1EC190838 != -1)
  {
    swift_once();
  }

  return byte_1EC1972E0;
}

uint64_t Backdrop.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AD519C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C5AD5208(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5AD52A8;
}

void sub_1C5AD52A8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1C5AD5330(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1C5AD5384(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v4 != v2)
  {
    v5 = v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C5AD5444()
{
  v1 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C5AD5488(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 16);
    v5[2] = a1;
    v5[21] = sub_1C5ADAC30(v5[5] != 0);
    swift_unknownObjectRelease();
  }
}

void (*sub_1C5AD5518(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1C5AD55AC;
}

void sub_1C5AD55AC(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (a2)
  {
    sub_1C5AD5488(v4);
  }

  else
  {
    v6 = v3[4];
    v5 = v3[5];
    v7 = *(v6 + v5);
    *(v6 + v5) = v4;
    if (v7 != v4)
    {
      v8 = *(v3[4] + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 16);
      v8[2] = v4;
      v8[21] = sub_1C5ADAC30(v8[5] != 0);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t sub_1C5AD5644()
{
  v1 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_colorPixelFormat;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C5AD5688(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_colorPixelFormat;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = (v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
    v6 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8);
    *(v6 + 16) = a1;
    v7 = v1;
    *(v6 + 136) = sub_1C5ADCC14();
    swift_unknownObjectRelease();
    v8 = *v5;
    *(*v5 + 16) = *(v7 + v3);
    v9 = sub_1C5ADB484();
    v10 = *(v8 + 152);
    *(v8 + 152) = v9;

    *(v8 + 160) = sub_1C5ADB894(v11);
    swift_unknownObjectRelease();
    sub_1C5ADBC3C(*(v8 + 48));
  }
}

void (*sub_1C5AD5754(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_colorPixelFormat;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1C5AD57E8;
}

void sub_1C5AD57E8(uint64_t a1)
{
  v1 = *a1;
  sub_1C5AD5688(*(*a1 + 24));

  free(v1);
}

BOOL sub_1C5AD5824()
{
  v1 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  return *(*(v0 + v1) + 64) == 1.0;
}

double sub_1C5AD5878(char a1)
{
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v4 = 0.2;
  if (a1)
  {
    v4 = 1.0;
  }

  *(*(v1 + v3) + 64) = v4;
  *&result = sub_1C5AD6E34().n128_u64[0];
  return result;
}

void (*sub_1C5AD58E8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(*(v1 + v5) + 64) == 1.0;
  return sub_1C5AD598C;
}

void sub_1C5AD598C(uint64_t a1)
{
  v1 = *a1;
  v2 = 0.2;
  if (*(*a1 + 40))
  {
    v2 = 1.0;
  }

  *(*(*(*a1 + 24) + *(*a1 + 32)) + 64) = v2;
  sub_1C5AD6E34();

  free(v1);
}

uint64_t (*sub_1C5AD5A0C(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer__isPaused;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1C5AD5A40;
}

uint64_t sub_1C5AD5A50(void *a1)
{
  if ([a1 supportsFamily_])
  {
    v2 = [objc_opt_self() mainScreen];
    v3 = [v2 maximumFramesPerSecond];

    return v3;
  }

  else
  {
    v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
    swift_beginAccess();
    if (*(v1 + v5))
    {
      return 30;
    }

    else
    {
      return 15;
    }
  }
}

float sub_1C5AD5AF8()
{
  v1 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration;
  swift_beginAccess();
  return *v1;
}

void sub_1C5AD5B40(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration);
  swift_beginAccess();
  *v3 = a1;
}

void sub_1C5AD5BF4(void *a1)
{
  sub_1C5AD6138(a1, 0, *(*(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers) + 96) != 0, 0, 0);
}

void *sub_1C5AD5C50()
{
  v1 = *(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage);
  v2 = v1;
  return v1;
}

void (*sub_1C5AD5C80(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1C5AD5CD4;
}

void sub_1C5AD5CD4(uint64_t a1, char a2)
{
  v2 = *(*(*(a1 + 8) + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers) + 96);
  v6 = *a1;
  if (a2)
  {
    v3 = v2 != 0;
    v4 = v6;
    sub_1C5AD6138(v6, 0, v3, 0, 0);

    v5 = v4;
  }

  else
  {
    sub_1C5AD6138(v6, 0, v2 != 0, 0, 0);
    v5 = v6;
  }
}

uint64_t sub_1C5AD5D94(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1C5AD5DB8, 0, 0);
}

uint64_t sub_1C5AD5DB8()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1C5AD5EBC;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0xD00000000000001ALL, 0x80000001C5BFAE30, sub_1C5ADD36C, v4, v6);
}

uint64_t sub_1C5AD5EBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5AC59B0, 0, 0);
}

double sub_1C5AD5FD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730, &qword_1C5BE7280);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_1C5AD6138(a3, 1u, v4, sub_1C5ADEDB4, v13);

  return result;
}

void sub_1C5AD6138(void *a1, unsigned __int8 a2, unsigned __int8 a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v11 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage;
  v12 = *&v5[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage];
  if (!a1)
  {
    *&v5[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage] = 0;
    v17 = 0;

LABEL_18:
    v31 = *&v6[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor];
    v27 = sub_1C5AD7A10(v31);
    v28 = 1.0;
    if (a3)
    {
      v28 = 0.0;
    }

    *&v6[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix] = v28;
    v29 = *&v6[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers];
    *(v29 + 96) = v27;
    swift_unknownObjectRelease();
    *(v29 + 104) = 1;
    if (a4)
    {
      v30 = swift_unknownObjectRetain();
      a4(v30);
      swift_unknownObjectRelease();
    }

    goto LABEL_22;
  }

  if (v12)
  {
    sub_1C592535C(0, &qword_1EDA4E5E0, 0x1E69DCAB8);
    v14 = v12;
    v15 = a1;
    v16 = sub_1C5BCB744();

    if (v16)
    {
      if (a4)
      {
        (a4)();
      }

      return;
    }

    v11 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage;
  }

  v18 = *&v6[v11];
  *&v6[v11] = a1;
  v19 = a1;

  v20 = [v19 CGImage];
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = *&v6[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers];
  v22 = *(v21 + 24);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = *(v21 + 32);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v24 = v20;
  v25 = sub_1C5AD641C(v22, 0, v23, 0);

  if (!v25)
  {
    goto LABEL_18;
  }

  sub_1C5974664(a4, a5);
  v31 = v25;
  v26 = v6;
  sub_1C5ADD45C(v31, (a2 | a3) & 1, v26, a4, a5, v25, 0, v26, a3 & 1);

  sub_1C59A5824(a4, a5);
LABEL_22:
}

CGImageRef sub_1C5AD641C(int64_t Width, char a2, int64_t Height, char a4)
{
  if (a2)
  {
    Width = CGImageGetWidth(v4);
  }

  v8 = CGImageGetWidth(v4);
  if (v8 < Width)
  {
    Width = v8;
  }

  if (a4)
  {
    Height = CGImageGetHeight(v4);
  }

  v9 = CGImageGetHeight(v4);
  if (v9 < Height)
  {
    Height = v9;
  }

  v10 = CGImageGetColorSpace(v4);
  if (!v10 || (v11 = v10, Model = CGColorSpaceGetModel(v10), v11, Model))
  {
    if (CGImageGetAlphaInfo(v4) != kCGImageAlphaNoneSkipFirst && CGImageGetAlphaInfo(v4) != kCGImageAlphaPremultipliedFirst)
    {
      return v4;
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v14 = __CGBitmapContextCreate(0, Width, Height, 0, DeviceRGB, 5u);

  if (!v14)
  {
    return v4;
  }

  if (qword_1EDA4E6D0 != -1)
  {
    swift_once();
  }

  v15 = sub_1C5BC7D64();
  __swift_project_value_buffer(v15, qword_1EDA4E6E0);
  v16 = v4;
  v17 = sub_1C5BC7D44();
  v18 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    type metadata accessor for CGImage(0);
    v21 = v16;
    v22 = sub_1C5BCAEA4();
    v24 = sub_1C592ADA8(v22, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1C5922000, v17, v18, "Redrawing incompatible image: %s", v19, 0xCu);
    v25 = __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1C69510F0](v20, -1, -1, v25);
    MEMORY[0x1C69510F0](v19, -1, -1);
  }

  sub_1C5BCB494();
  Image = CGBitmapContextCreateImage(v14);

  return Image;
}

void sub_1C5AD6690(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor;
  v5 = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor);
  *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor) = a1;
  v6 = a1;

  if (!*(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage))
  {
    v10 = *(v2 + v4);
    v7 = sub_1C5AD7A10(v10);
    v8 = 1.0;
    if (a2)
    {
      v8 = 0.0;
    }

    *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix) = v8;
    v9 = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
    *(v9 + 96) = v7;
    swift_unknownObjectRelease();
    *(v9 + 104) = 1;
  }
}

double sub_1C5AD6760(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = v2;

  sub_1C5BA9978(v2);

  return result;
}

void *sub_1C5AD67D0()
{
  v1 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  v3 = v2;
  return v2;
}

double sub_1C5AD6820(void *a1)
{
  swift_beginAccess();

  sub_1C5BA9978(a1);

  return result;
}

void (*sub_1C5AD6888(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(*(v1 + v5) + 16);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1C5AD6928;
}

void sub_1C5AD6928(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;

    sub_1C5BA9978(v3);
  }

  else
  {

    sub_1C5BA9978(v3);
  }

  free(v2);
}

id Backdrop.CompositeRenderer.context.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context;
  v3 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context);
  v4 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 8);
  v5 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 16);
  v8 = *(v2 + 24);
  v6 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return v8;
}

uint64_t *Backdrop.CompositeRenderer.init(context:configuration:)(uint64_t *a1, char *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v42 = *a2;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state] = 0;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat] = 80;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_colorPixelFormat] = 115;
  v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer__isPaused] = 0;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration] = 1061997773;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage] = 0;
  v10 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor;
  *&v3[v10] = [objc_opt_self() systemRedColor];
  v11 = &v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_environment];
  *v11 = 0;
  *(v11 + 4) = 0x432000004019999ALL;
  v12 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeTimingFunction;
  v13 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v14) = 1050253722;
  LODWORD(v15) = 1.0;
  *&v3[v12] = [v13 initWithControlPoints__:0.0 :{0.0, v14, v15}];
  v16 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_modeTimingFunction;
  v17 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v18) = 1.0;
  LODWORD(v19) = 1054280253;
  LODWORD(v20) = 1058306785;
  *&v3[v16] = [v17 initWithControlPoints__:v19 :{0.0, v20, v18}];
  v21 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_warpTimingFunction;
  v22 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v23) = 1.0;
  LODWORD(v24) = 1054280253;
  LODWORD(v25) = 1058306785;
  *&v3[v21] = [v22 initWithControlPoints__:v24 :{0.0, v25, v23}];
  *&v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_warpTimingSpeed] = 0x400C000000000000;
  *&v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix] = 0;
  *&v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix] = 0;
  v26 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
  if (qword_1EDA4E5C0 != -1)
  {
    swift_once();
  }

  memmove(&v3[v26], &dword_1EDA5DB90, 0x170uLL);
  v27 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  type metadata accessor for SpectrumAnalysis();
  swift_allocObject();
  *&v3[v27] = sub_1C5BA98F0();
  __asm { FMOV            V0.2S, #1.0 }

  *&v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_aspectRatio] = _D0;
  v33 = &v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context];
  *v33 = v4;
  *(v33 + 1) = v5;
  *(v33 + 2) = v6;
  *(v33 + 3) = v7;
  *(v33 + 4) = v8;
  v33[40] = v9;
  *&v44 = v4;
  *(&v44 + 1) = v5;
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v48 = v9;
  type metadata accessor for Backdrop.TextureBlender();
  v34 = swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  v35 = v7;
  sub_1C5ADB2C8(&v44);
  *&v44 = v4;
  *(&v44 + 1) = v5;
  v45 = v6;
  v46 = v35;
  v47 = v8;
  v48 = v9;
  type metadata accessor for Backdrop.RotatingArtworkRenderer();
  v36 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v37 = v35;
  sub_1C5ADC320(&v44);
  *&v44 = v4;
  *(&v44 + 1) = v5;
  v45 = v6;
  v46 = v37;
  v47 = v8;
  v48 = v9;
  type metadata accessor for Backdrop.PinchRenderer();
  v38 = swift_allocObject();
  sub_1C5AD9D58(&v44, v42 & 1);
  v39 = &v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers];
  *v39 = v34;
  v39[1] = v36;
  v39[2] = v38;
  v43.receiver = v3;
  v43.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  v40 = objc_msgSendSuper2(&v43, sel_init);
  sub_1C5AD70F8();

  return v40;
}

__n128 sub_1C5AD6E34()
{
  v1 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers;
  v2 = *(*(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8) + 40) < *(*(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8) + 32);
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 64) == 1.0;
  v5 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_environment;
  *v5 = v2;
  v6 = vcltz_s32(vshl_n_s32(vdup_n_s32(v4), 0x1FuLL));
  v7.n128_u64[0] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v2), 0x1FuLL)), vbsl_s8(v6, 0x42F000004019999ALL, 0x434800004039999ALL), vbsl_s8(v6, 0x42AA000040000000, 0x432000004019999ALL));
  v10 = v7;
  *(v5 + 4) = v7.n128_u64[0];
  *(*(v1 + 16) + 112) = v2;
  v8 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
  swift_beginAccess();
  result = v10;
  *(v8 + 340) = v10.n128_u32[0];
  return result;
}

void sub_1C5AD6F38(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix);
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
    if (v2 >= 1.0 || v2 <= 0.0)
    {
      swift_beginAccess();
      v5 = *(v1 + v3);
      *(v1 + v3) = 0;
      if (v5 != 1)
      {
        return;
      }
    }

    else
    {
      swift_beginAccess();
      v4 = *(v1 + v3);
      *(v1 + v3) = 1;
      if (v4)
      {
        return;
      }
    }

    v6 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v1 + v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v1, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

double sub_1C5AD7048(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1C5AD70B0()
{
  swift_beginAccess();

  return result;
}

void sub_1C5AD70F8()
{
  sub_1C5ADDF3C();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v14 = *(v1 + 48);
    v15 = *(v1 + 32);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, COERCE_FLOAT(*(v1 + 96))), xmmword_1C5BDA770, *(v1 + 96), 1), xmmword_1C5BDA780, *(v1 + 96), 2), xmmword_1C5BE6EA0, *(v1 + 96), 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, COERCE_FLOAT(*(v1 + 112))), xmmword_1C5BDA770, *(v1 + 112), 1), xmmword_1C5BDA780, *(v1 + 112), 2), xmmword_1C5BE6EA0, *(v1 + 112), 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, COERCE_FLOAT(*(v1 + 128))), xmmword_1C5BDA770, *(v1 + 128), 1), xmmword_1C5BDA780, *(v1 + 128), 2), xmmword_1C5BE6EA0, *(v1 + 128), 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, COERCE_FLOAT(*(v1 + 144))), xmmword_1C5BDA770, *(v1 + 144), 1), xmmword_1C5BDA780, *(v1 + 144), 2), xmmword_1C5BE6EA0, *(v1 + 144), 3);
    v6 = *(v1 + 176);
    v7 = *(v1 + 160);
    v4 = *(v1 + 208);
    v5 = *(v1 + 192);

    v3 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
    swift_beginAccess();
    *(v3 + 80) = v15;
    *(v3 + 96) = v14;
    *(v3 + 112) = v13;
    *(v3 + 128) = v12;
    *(v3 + 144) = -1;
    *(v3 + 148) = 1123024896;
    *(v3 + 160) = v11;
    *(v3 + 176) = v10;
    *(v3 + 192) = v9;
    *(v3 + 208) = v8;
    *(v3 + 224) = -1;
    *(v3 + 228) = 1116471296;
    *(v3 + 240) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, v7.f32[0]), xmmword_1C5BDA770, *v7.f32, 1), xmmword_1C5BDA780, v7, 2), xmmword_1C5BE6EB0, v7, 3);
    *(v3 + 256) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, v6.f32[0]), xmmword_1C5BDA770, *v6.f32, 1), xmmword_1C5BDA780, v6, 2), xmmword_1C5BE6EB0, v6, 3);
    *(v3 + 272) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, v5.f32[0]), xmmword_1C5BDA770, *v5.f32, 1), xmmword_1C5BDA780, v5, 2), xmmword_1C5BE6EB0, v5, 3);
    *(v3 + 288) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, v4.f32[0]), xmmword_1C5BDA770, *v4.f32, 1), xmmword_1C5BDA780, v4, 2), xmmword_1C5BE6EB0, v4, 3);
    *(v3 + 304) = 0;
    *(v3 + 308) = 1119092736;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C5AD72D4(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a5 & 1) != 0 || (v8 = *(a6 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage)) == 0 || (v9 = result, v10 = a6, v11 = a7, sub_1C592535C(0, &qword_1EDA4E5E0, 0x1E69DCAB8), v12 = v8, v13 = sub_1C5BCB744(), v12, a7 = v11, a6 = v10, result = v9, (v13))
  {
    v14 = 1.0;
    if (a7)
    {
      v14 = 0.0;
    }

    *(a6 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix) = v14;
    v15 = *(a6 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
    *(v15 + 96) = result;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *(v15 + 104) = 1;
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_1C5AD73C8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v42 = a3;
  v40 = a1;
  v8 = sub_1C5BCAC14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1C5BCAC44();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = a2;
    if (qword_1EDA4E6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C5BC7D64();
    __swift_project_value_buffer(v15, qword_1EDA4E6E0);
    v16 = a2;
    v17 = sub_1C5BC7D44();
    v18 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = a5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v37 = v9;
      v35 = v21;
      aBlock[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_1C5BCBEE4();
      v24 = sub_1C592ADA8(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1C5922000, v17, v18, "Error loading texture: %s", v20, 0xCu);
      v25 = v35;
      v26 = __swift_destroy_boxed_opaque_existential_0(v35);
      v9 = v37;
      MEMORY[0x1C69510F0](v25, -1, -1, v26);
      v27 = v20;
      a5 = v36;
      MEMORY[0x1C69510F0](v27, -1, -1);
    }

    else
    {
    }

    v13 = v38;
  }

  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v28 = sub_1C5BCB5A4();
  v29 = swift_allocObject();
  v30 = v42;
  v29[2] = v42;
  v29[3] = a4;
  v31 = v40;
  v29[4] = a5;
  v29[5] = v31;
  aBlock[4] = sub_1C5ADEE44;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_218;
  v32 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v33 = v30;

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5ADEE50(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  sub_1C5A3437C();
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v13, v11, v32);
  _Block_release(v32);

  (*(v9 + 8))(v11, v8);
  return (*(v39 + 8))(v13, v41);
}

uint64_t sub_1C5AD782C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (qword_1EDA4E6D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EDA4E6E0);
  v8 = a1;
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    type metadata accessor for CGImage(0);
    sub_1C5ADEE50(&qword_1EDA4E678, type metadata accessor for CGImage, &unk_1C5BD1BE0);
    sub_1C5BC7C44();
    v13 = sub_1C5BCBD64();
    v15 = sub_1C592ADA8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1C5922000, v9, v10, "finished loading texture CGImage %s using MTKTextureLoader", v11, 0xCu);
    v16 = __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69510F0](v12, -1, -1, v16);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  return a2(a4);
}

id sub_1C5AD7A10(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
  v4 = [*(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context) newTextureWithDescriptor_];
  if (v4)
  {
    v13 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    [a1 getRed:&v14 green:&v13 blue:&v12 alpha:0];
    v5 = v12 * 255.0;
    if (COERCE__INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -1.0)
    {
      if (v5 < 256.0)
      {
        v15[0] = v5;
        v6 = v13 * 255.0;
        if (COERCE__INT64(fabs(v13 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v6 > -1.0)
          {
            if (v6 < 256.0)
            {
              v15[1] = v6;
              v7 = v14 * 255.0;
              if (COERCE__INT64(fabs(v14 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v7 > -1.0)
                {
                  if (v7 < 256.0)
                  {
                    v15[2] = v7;
                    v15[3] = -1;
                    memset(v9, 0, sizeof(v9));
                    v10 = vdupq_n_s64(1uLL);
                    v11 = 1;
                    [v4 replaceRegion:v9 mipmapLevel:0 withBytes:v15 bytesPerRow:4];
                    goto LABEL_12;
                  }

LABEL_21:
                  __break(1u);
                }

LABEL_20:
                __break(1u);
                goto LABEL_21;
              }

LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_12:

  return v4;
}

id Backdrop.CompositeRenderer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Backdrop.CompositeRenderer.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1C5AD7DFC(void *a1, float a2)
{
  v5 = v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
  swift_beginAccess();
  *v5 = *v5 + a2;
  swift_beginAccess();
  sub_1C5BAA068();
  *&v6 = sub_1C5BA9A40();
  *(v5 + 352) = v6;
  sub_1C5AD8018(a2 + a2);
  v7 = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_warpTimingSpeed);
  v8 = 0.5;
  *(v5 + 324) = (sinf(*v5 / v7) + 1.0) * 0.5;
  if (a1)
  {
    if ([a1 userInterfaceStyle] == 1)
    {
      v8 = 0.35;
    }
  }

  *(v5 + 348) = v8;
  *(v5 + 344) = 1036831949;
  LODWORD(v9) = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix);
  [*(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_modeTimingFunction) _solveForInput_];
  *(v5 + 328) = v10;
  LODWORD(v11) = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix);
  result = [*(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeTimingFunction) _solveForInput_];
  *(v5 + 320) = v13;
  *(v5 + 332) = 1082130432;
  v14 = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8);
  v15 = *(v14 + 32);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v15 <= -32769.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 >= 32768.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v5 + 336) = v15;
  v16 = *(v14 + 40);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= -32769.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 < 32768.0)
  {
    *(v5 + 338) = v16;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1C5AD8018(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration);
  swift_beginAccess();
  v4 = a1 / *v3;
  v5 = v4 + *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix);
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix) = v5;
  v6 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v7 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix);
  v8 = v7 - v4;
  if ((v7 - v4) <= 0.0)
  {
    v8 = 0.0;
  }

  v9 = v4 + v7;
  if ((v4 + v7) > 1.0)
  {
    v9 = 1.0;
  }

  if (*(*(v1 + v6) + 64) == 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix) = v10;
  sub_1C5AD6F38(v7);
  v11 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8);
  v12 = *(v11 + 24);
  v13 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_environment + 8);
  v14 = -1.0;
  if (v13 < v12 || (v14 = 1.0, v12 < v13))
  {
    *(v11 + 24) = v12 + v14;
    sub_1C5ADD180();
  }
}

void sub_1C5AD8138(double a1, double a2, double a3)
{
  v4 = v3;
  v6 = a2;
  v7 = a1;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (qword_1EDA4E6D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C5BC7D64();
    __swift_project_value_buffer(v8, qword_1EDA4E6E0);
    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C5922000, v9, v10, "Tried to resize with non-finite size, falling back to 1x1 size", v11, 2u);
      MEMORY[0x1C69510F0](v11, -1, -1);
    }

    v7 = 1.0;
    v6 = 1.0;
  }

  v12 = v7 / v6;
  v13 = 1.0 / v12;
  if (v12 < 1.0)
  {
    v12 = 1.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = (v4 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_aspectRatio);
  *v14 = v13;
  v14[1] = v12;
  v22 = LODWORD(v13);
  LODWORD(v15) = 0;
  *(&v15 + 1) = v12;
  v21 = v15;
  v16 = (v4 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms);
  swift_beginAccess();
  v16[1] = v22;
  v16[2] = v21;
  v16[3] = xmmword_1C5BDA780;
  v16[4] = xmmword_1C5BDA790;
  v17 = *(v4 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8);
  v18 = *(v17 + 32);
  v19 = *(v17 + 40);
  *(v17 + 32) = v7;
  *(v17 + 40) = v6;
  *(v17 + 48) = a3;
  if (v7 != v18 || v6 != v19)
  {
    sub_1C5ADCFA8(*(v17 + 56));
    sub_1C5ADD180();
  }

  sub_1C5AD6E34();
}

uint64_t static Backdrop.CompositeRenderer.snapshot(configuration:)(uint64_t *a1)
{
  v3 = sub_1C5BC7CA4();
  *(v1 + 160) = v3;
  *(v1 + 168) = *(v3 - 8);
  *(v1 + 176) = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 200) = *(a1 + 1);
  *(v1 + 216) = *(a1 + 3);
  *(v1 + 232) = a1[5];

  return MEMORY[0x1EEE6DFA0](sub_1C5AD840C, 0, 0);
}

uint64_t sub_1C5AD840C()
{
  v34 = v0;
  if (qword_1EDA4E2D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C5BC7CE4();
  __swift_project_value_buffer(v1, qword_1EDA5DB78);
  sub_1C5BC7C94();
  v2 = sub_1C5BC7CC4();
  v3 = sub_1C5BCB5E4();
  if (sub_1C5BCB7E4())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1C5BC7C84();
    _os_signpost_emit_with_name_impl(&dword_1C5922000, v2, v3, v5, "Backdrop Snapshot Generation", "", v4, 2u);
    MEMORY[0x1C69510F0](v4, -1, -1);
  }

  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);

  (*(v9 + 16))(v6, v7, v8);
  sub_1C5BC7D24();
  swift_allocObject();
  v10 = sub_1C5BC7D14();
  *(v0 + 240) = v10;
  (*(v9 + 8))(v7, v8);
  if (qword_1EDA4F008 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDA4F010;
  v11 = qword_1EDA4F018;
  *(v0 + 248) = qword_1EDA4F010;
  *(v0 + 256) = v11;
  v13 = qword_1EDA4F020;
  v14 = qword_1EDA4F028;
  *(v0 + 264) = qword_1EDA4F020;
  *(v0 + 272) = v14;
  v15 = qword_1EDA4F030;
  *(v0 + 280) = qword_1EDA4F030;
  v16 = byte_1EDA4F038;
  *(v0 + 360) = byte_1EDA4F038;
  if (v12)
  {
    v17 = *(v0 + 192);
    v31[0] = v12;
    v31[1] = v11;
    v31[2] = v13;
    v31[3] = v14;
    v31[4] = v15;
    v32 = v16 & 1;
    v33[0] = 2;
    v18 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    v19 = v14;
    v20 = Backdrop.CompositeRenderer.init(context:configuration:)(v31, v33);
    *(v0 + 288) = v20;
    v21 = *(v20 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix);
    *(v20 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix) = 1065353216;
    sub_1C5AD6F38(v21);
    v22 = v20 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_environment;
    *v22 = 0;
    *(v22 + 4) = 0x42AA000040000000;
    *(*(v20 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 16) + 112) = 0;
    v23 = v20 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
    swift_beginAccess();
    *(v23 + 85) = 0x40000000;
    v24 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
    swift_beginAccess();
    *(*(v20 + v24) + 64) = 1065353216;
    sub_1C5AD6E34();
    v25 = swift_task_alloc();
    *(v0 + 296) = v25;
    *(v25 + 16) = v20;
    *(v25 + 24) = v17;
    *(v25 + 32) = 0;
    v26 = swift_task_alloc();
    *(v0 + 304) = v26;
    *v26 = v0;
    v26[1] = sub_1C5AD8844;
    v27 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v26, 0, 0, 0xD00000000000001ALL, 0x80000001C5BFAE30, sub_1C5ADEEA0, v25, v27);
  }

  else
  {
    sub_1C5ADD408();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
    sub_1C5ADDFC4(v10);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1C5AD8844()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5AD895C, 0, 0);
}

void sub_1C5AD895C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1C5AD8138(v3, *(v0 + 208), v2);
  v4 = objc_opt_self();
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
  swift_beginAccess();
  v6 = v2 * v3;
  if (v2 * v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = *(v0 + 216) * *(v0 + 208);
  v8 = COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(v2 * v3)) > 0x7FEFFFFFFFFFFFFFLL || v8)
  {
    goto LABEL_18;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v9 = *(v1 + v5);
  v10 = *(v0 + 288);
  v11 = [v4 texture2DDescriptorWithPixelFormat:v9 width:v6 height:v7 mipmapped:0];
  *(v0 + 312) = v11;
  [v11 setStorageMode_];
  [v11 setUsage_];
  v12 = [*(v10 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context) newTextureWithDescriptor_];
  *(v0 + 320) = v12;
  if (v12)
  {
    v13 = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E6974128]);
    swift_unknownObjectRetain();
    v15 = [v14 init];
    *(v0 + 328) = v15;
    v16 = [v15 colorAttachments];
    v17 = [v16 objectAtIndexedSubscript_];
    *(v0 + 336) = v17;

    if (v17)
    {
      v18 = *(v0 + 232);
      v19 = *(v0 + 224);
      v20 = v17;
      [v20 setTexture_];
      [v20 setLoadAction_];

      [v20 setClearColor_];
      v21 = v19;
      sub_1C5AD7DFC(v18, v21);
      v22 = swift_task_alloc();
      *(v0 + 344) = v22;
      *v22 = v0;
      v22[1] = sub_1C5AD8D7C;

      sub_1C5AD92CC(v15);
    }

    else
    {
      sub_1C5BCBBC4();
    }
  }

  else
  {
    v23 = *(v0 + 288);
    v24 = *(v0 + 264);
    v30 = *(v0 + 272);
    v26 = *(v0 + 248);
    v25 = *(v0 + 256);
    v27 = *(v0 + 240);
    sub_1C5ADD408();
    swift_allocError();
    *v28 = 5;
    swift_willThrow();

    sub_1C5ADE250(v26, v25, v24, v30);
    sub_1C5ADDFC4(v27);

    v29 = *(v0 + 8);

    v29();
  }
}

uint64_t sub_1C5AD8D7C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1C5AD91DC;
  }

  else
  {
    v2 = sub_1C5AD8E90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C5AD8E90()
{
  v1 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197390, &qword_1C5BE6F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BCFF00;
  v3 = *MEMORY[0x1E695F9A8];
  *(inited + 32) = *MEMORY[0x1E695F9A8];
  v4 = v3;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColorSpace(0);
  *(inited + 64) = v6;
  *(inited + 40) = DeviceRGB;
  sub_1C59AE750(inited);
  swift_setDeallocating();
  sub_1C5924EF4(inited + 32, &qword_1EC191848, &qword_1C5BE6F20);
  v7 = objc_allocWithZone(MEMORY[0x1E695F658]);
  type metadata accessor for CIImageOption(0);
  sub_1C5ADEE50(&qword_1EDA4E140, type metadata accessor for CIImageOption, &unk_1C5BD0AA8);
  swift_unknownObjectRetain();
  v8 = sub_1C5BCACA4();

  v9 = [v7 initWithMTLTexture:v1 options:v8];

  swift_unknownObjectRelease();
  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v12 = *(v0 + 312);
  v23 = *(v0 + 272);
  v13 = *(v0 + 256);
  v21 = *(v0 + 288);
  v22 = *(v0 + 264);
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  if (v9)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCIImage:v9 scale:4 orientation:*(v0 + 216)];

    swift_unknownObjectRelease_n();
    sub_1C5ADE250(v15, v13, v22, v23);
    sub_1C5ADDFC4(v14);

    v17 = *(v0 + 8);

    return v17(v16);
  }

  else
  {
    sub_1C5ADD408();
    swift_allocError();
    *v19 = 6;
    swift_willThrow();

    swift_unknownObjectRelease_n();
    sub_1C5ADE250(v15, v13, v22, v23);
    sub_1C5ADDFC4(v14);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1C5AD91DC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v10 = *(v0 + 272);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);

  swift_unknownObjectRelease_n();
  sub_1C5ADE250(v6, v5, v4, v10);
  sub_1C5ADDFC4(v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C5AD92CC(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C5AD92EC, 0, 0);
}

uint64_t sub_1C5AD92EC()
{
  v1 = *(v0[18] + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 8);
  v0[16] = &unk_1F455D550;
  v0[19] = v1;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    [v3 setBackgroundGPUPriority_];
    v4 = [v3 commandBuffer];
    v0[20] = v4;
    if (v4)
    {
      v5 = v4;
      v6 = v0[17];
      v7 = v0[18];
      v8 = v7 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers;
      v9 = *(v7 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
      v10 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
      swift_beginAccess();
      sub_1C5ADBDD4(v5, v7 + v10);
      swift_endAccess();
      v11 = *(v8 + 8);
      *(v11 + 152) = *(v9 + 40);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1C5ADC474(v5, v7 + v10);
      swift_endAccess();
      *(*(v8 + 16) + 32) = *(v11 + 168);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1C5ADA240(v5, v7 + v10, v6);
      swift_endAccess();

      return MEMORY[0x1EEE6DFA0](sub_1C5AD9560, 0, 0);
    }

    sub_1C5ADD408();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C5ADD408();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1C5AD9560()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[20];
  v1[2] = v2;
  v1[3] = sub_1C5AD96B0;
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v1[14] = sub_1C5ADED98;
  v1[15] = v7;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C5AC79C8;
  v1[13] = &block_descriptor_16;
  v8 = _Block_copy(v4);

  [v5 addCompletedHandler_];
  _Block_release(v8);
  [v5 commit];

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C5AD96B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1C5AD9838;
  }

  else
  {
    v2 = sub_1C5AD97CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C5AD97CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5AD9838()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5AD98A4()
{
  v0 = sub_1C5BC7CE4();
  __swift_allocate_value_buffer(v0, qword_1EDA5DB78);
  __swift_project_value_buffer(v0, qword_1EDA5DB78);
  return sub_1C5BC7CD4();
}

Swift::Void __swiftcall Backdrop.CompositeRenderer.mtkView(_:drawableSizeWillChange:)(MTKView *_, CGSize drawableSizeWillChange)
{
  height = drawableSizeWillChange.height;
  width = drawableSizeWillChange.width;
  v4 = [(MTKView *)_ traitCollection];
  [v4 displayScale];
  v6 = v5;

  sub_1C5AD8138(width, height, v6);
}

Swift::Void __swiftcall Backdrop.CompositeRenderer.draw(in:)(MTKView *in)
{
  if ((*(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer__isPaused) & 1) == 0)
  {
    v16 = [(MTKView *)in layer];
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 isDrawableAvailable];

      if (v4)
      {
        v5 = UIAccessibilityIsReduceMotionEnabled() ? 0.0016667 : 0.016667;
        v6 = [(MTKView *)in traitCollection];
        sub_1C5AD7DFC(v6, v5);
        v7 = v1;

        v8 = [*(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 8) commandBuffer];
        if (v8)
        {
          v9 = v8;
          v10 = v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers;
          v11 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
          v12 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
          swift_beginAccess();
          sub_1C5ADBDD4(v9, v7 + v12);
          swift_endAccess();
          v13 = *(v10 + 8);
          *(v13 + 152) = *(v11 + 40);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          swift_beginAccess();
          sub_1C5ADC474(v9, v7 + v12);
          swift_endAccess();
          *(*(v10 + 16) + 32) = *(v13 + 168);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v14 = [(MTKView *)in currentRenderPassDescriptor];
          swift_beginAccess();
          sub_1C5ADA240(v9, v7 + v12, v14);
          swift_endAccess();

          v15 = [(MTKView *)in currentDrawable];
          if (v15)
          {
            [v9 presentDrawable_];
            swift_unknownObjectRelease();
          }

          [v9 commit];
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }
}

void sub_1C5AD9D58(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(v3 + 16) = 80;
  *(v3 + 112) = 0;
  *(v3 + 168) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 120) = v4;
  *(v3 + 128) = v5;
  *(v3 + 136) = v7;
  *(v3 + 144) = v6;
  *(v3 + 152) = v8;
  *(v3 + 160) = v9;
  v49 = v4;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v47 = v6;
  sub_1C5AAFCD0(1, &v50);
  v10 = v53;
  v11 = v54;
  v12 = *MEMORY[0x1E6979700];
  v13 = [objc_allocWithZone(MEMORY[0x1E69793D8]) initWithVertexCount:*(v50 + 16) vertices:v50 + 32 faceCount:*(v51 + 16) faces:v51 + 32 depthNormalization:*MEMORY[0x1E6979700]];
  v14 = [v13 subdividedMesh_];

  v15 = [objc_allocWithZone(MEMORY[0x1E69793D8]) initWithVertexCount:*(v10 + 16) vertices:v10 + 32 faceCount:*(v11 + 16) faces:v11 + 32 depthNormalization:v12];

  v16 = [v15 subdividedMesh_];

  sub_1C5A2DBCC(v16);
  v19 = *(v17 + 16);
  if (v19 >> 57)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = v17;
  v21 = v18;
  v22 = v19 << 6;

  v23 = [v49 newBufferWithBytes:v20 + 32 length:v22 options:0];
  v24 = *(v21 + 16);
  if (v24 + 0x4000000000000000 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v25 = v23;
  v26 = 2 * v24;
  swift_unknownObjectRetain();
  v27 = [v49 newBufferWithBytes:v21 + 32 length:v26 options:0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  *(v3 + 48) = v20;
  *(v3 + 56) = v21;
  *(v3 + 64) = v25;
  *(v3 + 72) = v27;
  swift_unknownObjectRetain();
  sub_1C5AAFCD0(0, &v50);
  v28 = v53;
  v29 = v54;
  v30 = [objc_allocWithZone(MEMORY[0x1E69793D8]) initWithVertexCount:*(v50 + 16) vertices:v50 + 32 faceCount:*(v51 + 16) faces:v51 + 32 depthNormalization:v12];
  v31 = [v30 subdividedMesh_];

  v32 = [objc_allocWithZone(MEMORY[0x1E69793D8]) initWithVertexCount:*(v28 + 16) vertices:v28 + 32 faceCount:*(v29 + 16) faces:v29 + 32 depthNormalization:v12];

  v33 = [v32 subdividedMesh_];

  sub_1C5A2DBCC(v33);
  v36 = *(v34 + 16);
  if (v36 >> 57)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v37 = v34;
  v38 = v35;
  v39 = v36 << 6;

  v40 = [v49 newBufferWithBytes:v37 + 32 length:v39 options:0];
  v41 = *(v38 + 16);
  if (v41 + 0x4000000000000000 < 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v42 = v40;
  v43 = 2 * v41;
  swift_unknownObjectRetain();
  v44 = [v49 newBufferWithBytes:v38 + 32 length:v43 options:0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();

  *(v3 + 80) = v37;
  *(v3 + 88) = v38;
  *(v3 + 96) = v42;
  *(v3 + 104) = v44;
  *(v3 + 24) = a2 & 1;
  v45 = *(v3 + 120);
  v52 = &type metadata for Features;
  v53 = sub_1C5A2E158();
  v46 = swift_allocObject();
  v50 = v46;
  *(v46 + 16) = "MediaCoreUI";
  *(v46 + 24) = 11;
  *(v46 + 32) = 2;
  *(v46 + 40) = "BackdropLUT";
  *(v46 + 48) = 11;
  *(v46 + 56) = 2;
  LOBYTE(v42) = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v50);
  if (v42)
  {
    *(v3 + 40) = sub_1C5ADDB3C(v45);
    swift_unknownObjectRelease();
  }

  *(v3 + 168) = sub_1C5ADAC30(*(v3 + 40) != 0);
  swift_unknownObjectRelease();
}

void sub_1C5ADA240(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 168);
  if (!v4)
  {
    return;
  }

  if (*(v3 + 112) == 1)
  {
    v5 = *(v3 + 64);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 72);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v5 = *(v3 + 96);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 104);
    if (!v6)
    {
      return;
    }
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = *(v3 + 32);
  if (!v10 || !a3)
  {
    swift_unknownObjectRelease();
LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRetain();
  v15 = a3;
  swift_unknownObjectRetain();
  v11 = [a1 renderCommandEncoderWithDescriptor_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C5BCAE44();
    [v12 setLabel_];

    [v12 setRenderPipelineState_];
    [v12 setVertexBuffer:v5 offset:0 atIndex:0];
    [v12 setVertexBytes:a2 length:368 atIndex:1];
    [v12 setFragmentBytes:a2 length:368 atIndex:1];
    [v12 setFragmentTexture:v10 atIndex:0];
    [v12 setFragmentTexture:*(v3 + 40) atIndex:1];
    v14 = 88;
    if (*(v3 + 112))
    {
      v14 = 56;
    }

    [v12 drawIndexedPrimitives:3 indexCount:*(*(v3 + v14) + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:1];
    [v12 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void *sub_1C5ADA4EC()
{
  result = sub_1C5ADA50C();
  off_1EDA4ED88 = result;
  return result;
}

uint64_t sub_1C5ADA50C()
{
  if (qword_1EDA4E5D0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v0 = qword_1EDA5DD00;
    v1 = sub_1C5BCAE44();
    v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

    if (!v2 || (v3 = [v2 CGImage], v2, !v3))
    {
      if (qword_1EDA4E6D0 != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_12;
    }

    if (CGImageGetWidth(v3) != 32 || CGImageGetHeight(v3) != 1024)
    {
      if (qword_1EDA4E6D0 != -1)
      {
        swift_once();
      }

      v13 = sub_1C5BC7D64();
      __swift_project_value_buffer(v13, qword_1EDA4E6E0);
      v3 = v3;
      v14 = sub_1C5BC7D44();
      v15 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134219008;
        *(v16 + 4) = CGImageGetWidth(v3);
        *(v16 + 12) = 2048;
        *(v16 + 14) = CGImageGetHeight(v3);

        *(v16 + 22) = 2048;
        *(v16 + 24) = 32;
        *(v16 + 32) = 2048;
        *(v16 + 34) = 32;
        *(v16 + 42) = 2048;
        *(v16 + 44) = 32;
        _os_log_impl(&dword_1C5922000, v14, v15, "Incorrect dimension for LUT image. Provided: %ldx%ld. Expected: %ldx(%ldx%ld)", v16, 0x34u);
        MEMORY[0x1C69510F0](v16, -1, -1);
      }

      else
      {
      }

      goto LABEL_19;
    }

    Width = CGImageGetWidth(v3);
    if ((Width - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      swift_once();
LABEL_31:
      v28 = sub_1C5BC7D64();
      __swift_project_value_buffer(v28, qword_1EDA4E6E0);
      v29 = sub_1C5BC7D44();
      v30 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1C5922000, v29, v30, "Couldn't build context for reading LUT image data", v31, 2u);
        MEMORY[0x1C69510F0](v31, -1, -1);
      }

      goto LABEL_19;
    }

    v5 = 4 * Width;
    Height = CGImageGetHeight(v3);
    v7 = Height * v5;
    if ((Height * v5) >> 64 != (Height * v5) >> 63)
    {
      goto LABEL_82;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v9 = sub_1C5BCB0C4();
      *(v9 + 16) = v7;
      bzero((v9 + 32), v7);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v19 = CGImageGetWidth(v3);
    v20 = CGImageGetHeight(v3);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v22 = __CGBitmapContextCreate((v9 + 32), v19, v20, v5, DeviceRGB, 1u);

    if (!v22)
    {
      if (qword_1EDA4E6D0 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_85;
    }

    CGImageGetWidth(v3);
    CGImageGetHeight(v3);
    sub_1C5BCB494();
    v23 = *(v9 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v27 = __OFADD__(v25, 4096);
        v25 += 4096;
        if (v27)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v24;
        if (v25 >= v23)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_72;
    }

    v26 = 0;
LABEL_35:
    sub_1C5B8F120(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_84;
    }

    v17 = v8;
    v49 = v22;
    if (!v26)
    {
      break;
    }

    v32 = 0;
    v33 = 0x7FFFFFFFFFFFF000;
    while (v32 < v23)
    {
      if (!v33)
      {
        goto LABEL_73;
      }

      v34 = v32 + 4096;
      v35 = *(v9 + 16);
      if (v35 < v32 || v35 < v34)
      {
        goto LABEL_74;
      }

      if (v35 == 4096)
      {

        v37 = v9;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193638, &qword_1C5BF06A0);
        v37 = swift_allocObject();
        v40 = _swift_stdlib_malloc_size(v37);
        v37[2] = 4096;
        v37[3] = 2 * v40 - 64;
        memcpy(v37 + 4, (v9 + v32 + 32), 0x1000uLL);
      }

      v39 = *(v17 + 16);
      v38 = *(v17 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1C5B8F120((v38 > 1), v39 + 1, 1);
      }

      *(v17 + 16) = v39 + 1;
      *(v17 + 8 * v39 + 32) = v37;
      v33 -= 4096;
      v32 += 4096;
      if (!--v26)
      {
        if (v34 < v23)
        {
          goto LABEL_55;
        }

        goto LABEL_70;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  if (v23)
  {
    v34 = 0;
LABEL_55:
    v41 = v34;
    while (1)
    {
      v42 = v41 + 4096;
      if (__OFADD__(v41, 4096))
      {
        break;
      }

      if (v42 < v41)
      {
        goto LABEL_77;
      }

      if (v34 < 0)
      {
        goto LABEL_78;
      }

      v43 = *(v9 + 16);
      if (v43 < v41 || v43 < v42)
      {
        goto LABEL_79;
      }

      if (v43 == 4096)
      {

        v45 = v9;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193638, &qword_1C5BF06A0);
        v45 = swift_allocObject();
        v48 = _swift_stdlib_malloc_size(v45);
        v45[2] = 4096;
        v45[3] = 2 * v48 - 64;
        memcpy(v45 + 4, (v9 + v41 + 32), 0x1000uLL);
      }

      v47 = *(v17 + 16);
      v46 = *(v17 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1C5B8F120((v46 > 1), v47 + 1, 1);
      }

      *(v17 + 16) = v47 + 1;
      *(v17 + 8 * v47 + 32) = v45;
      v41 += 4096;
      if (v42 >= v23)
      {
        goto LABEL_70;
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
    swift_once();
LABEL_12:
    v10 = sub_1C5BC7D64();
    __swift_project_value_buffer(v10, qword_1EDA4E6E0);
    v3 = sub_1C5BC7D44();
    v11 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v3, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C5922000, v3, v11, "Couldn't load LUT image", v12, 2u);
      MEMORY[0x1C69510F0](v12, -1, -1);
    }

LABEL_19:

    return 0;
  }

LABEL_70:

  return v17;
}

id sub_1C5ADAC30(char a1)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v3 = v1[15];
  v5 = v1[17];
  v4 = v1[18];
  v6 = objc_allocWithZone(MEMORY[0x1E6974060]);
  v40 = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v39 = v4;
  v7 = [v6 init];
  LOBYTE(v44[0]) = a1;
  [v7 setConstantValue:v44 type:53 atIndex:0];
  v8 = sub_1C5BCAE44();
  v41 = 0;
  v9 = [v5 newFunctionWithName:v8 constantValues:v7 error:&v41];

  if (v9)
  {
    v10 = v41;
  }

  else
  {
    v11 = v41;
    v12 = sub_1C5BC7914();

    swift_willThrow();
  }

  v13 = sub_1C5BCAE44();
  v41 = 0;
  v14 = [v5 newFunctionWithName:v13 constantValues:v7 error:&v41];

  if (v14)
  {
    v15 = v41;
  }

  else
  {
    v16 = v41;
    v17 = sub_1C5BC7914();

    swift_willThrow();
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v19 = sub_1C5BCAE44();
  [v18 setLabel_];

  [v18 setVertexFunction_];
  [v18 setFragmentFunction_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (qword_1EDA4EDC0 != -1)
  {
    swift_once();
  }

  [v18 setVertexDescriptor_];
  v20 = [v18 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
    if (qword_1EDA4E6D0 != -1)
    {
      swift_once();
    }

    v24 = sub_1C5BC7D64();
    __swift_project_value_buffer(v24, qword_1EDA4E6E0);
    v25 = sub_1C5BC7D44();
    v26 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C5922000, v25, v26, "Could not create pipeline for pinch. Missing color attachments", v27, 2u);
      MEMORY[0x1C69510F0](v27, -1, -1);
    }

    return 0;
  }

  [v21 setPixelFormat_];
  v41 = 0;
  v22 = [v40 newRenderPipelineStateWithDescriptor:v18 error:&v41];
  v23 = v41;
  if (!v22)
  {
    v28 = v23;
    v29 = sub_1C5BC7914();

    swift_willThrow();
    v44[0] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
    sub_1C592535C(0, &qword_1EC195458, 0x1E696ABC0);
    swift_dynamicCast();
    v30 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C5BCFF00;
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1C5BCBA94();

    v41 = 0xD00000000000001FLL;
    v42 = 0x80000001C5BFB420;
    v32 = [v30 description];
    v33 = sub_1C5BCAE74();
    v35 = v34;

    MEMORY[0x1C694F170](v33, v35);

    v36 = v41;
    v37 = v42;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 32) = v36;
    *(v31 + 40) = v37;
    sub_1C5BCBF34();

    return 0;
  }

  return v22;
}

uint64_t sub_1C5ADB204()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1C5ADB2C8(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 40);
  *(v1 + 16) = 115;
  *(v1 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v1 + 40) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v13 = v2;
  if (qword_1EDA4EDB8 != -1)
  {
    v12 = v3;
    swift_once();
    v3 = v12;
    v2 = v13;
  }

  result = qword_1EDA5DDD0;
  *(v1 + 120) = qword_1EDA5DDD0;
  *(v1 + 128) = &unk_1F45189A8;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  *(v1 + 48) = v2;
  *(v1 + 64) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  v7 = result[2];
  if (v7 >> 57)
  {
    __break(1u);
  }

  else
  {
    result = [v13 newBufferWithBytes:+ 32 length:v7 << 6 options:0];
    *(v1 + 136) = result;
    v8 = *(v1 + 128);
    v9 = *(v8 + 16);
    if (v9 + 0x4000000000000000 >= 0)
    {
      v10 = [*(v1 + 48) newBufferWithBytes:v8 + 32 length:2 * v9 options:0];
      *(v1 + 144) = v10;
      *(v1 + 160) = sub_1C5ADB894(v10);
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_1C5ADBC3C(v11);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

id sub_1C5ADB42C(uint64_t a1)
{
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = *(v1 + 152);
  }

  else
  {
    v4 = sub_1C5ADB484();
    v5 = *(v1 + 152);
    *(v1 + 152) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1C5ADB484()
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = v0[8];
  v1 = v0[9];
  v3 = objc_allocWithZone(MEMORY[0x1E6974060]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v1;
  v4 = [v3 init];
  v26 = 0;
  [v4 setConstantValue:&v26 type:53 atIndex:0];
  v5 = sub_1C5BCAE44();
  v25[0] = 0;
  v6 = [v2 newFunctionWithName:v5 constantValues:v4 error:v25];

  if (v6)
  {
    v7 = v25[0];
  }

  else
  {
    v8 = v25[0];
    v9 = sub_1C5BC7914();

    swift_willThrow();
  }

  v10 = sub_1C5BCAE44();
  v25[0] = 0;
  v11 = [v2 newFunctionWithName:v10 constantValues:v4 error:v25];

  if (v11)
  {
    v12 = v25[0];
  }

  else
  {
    v13 = v25[0];
    v14 = sub_1C5BC7914();

    swift_willThrow();
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v16 = sub_1C5BCAE44();
  [v15 setLabel_];

  [v15 setVertexFunction_];
  [v15 setFragmentFunction_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v17 = [v15 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (v18)
  {
    [v18 setPixelFormat_];
    if (qword_1EDA4EDC0 != -1)
    {
      swift_once();
    }

    [v15 setVertexDescriptor_];

    return v15;
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD000000000000036, 0x80000001C5BFB460);
    v20 = [v15 description];
    v21 = sub_1C5BCAE74();
    v23 = v22;

    MEMORY[0x1C694F170](v21, v23);

    result = sub_1C5BCBBC4();
    __break(1u);
  }

  return result;
}

id sub_1C5ADB894(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  v3 = sub_1C5ADB42C(a1);
  v17 = 0;
  v4 = [v2 newRenderPipelineStateWithDescriptor:v3 error:&v17];

  v5 = v17;
  if (!v4)
  {
    v6 = v5;
    v7 = sub_1C5BC7914();

    swift_willThrow();
    v20 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
    sub_1C592535C(0, &qword_1EC195458, 0x1E696ABC0);
    swift_dynamicCast();
    v8 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C5BCFF00;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1C5BCBA94();

    v17 = 0xD00000000000001FLL;
    v18 = 0x80000001C5BFB420;
    v10 = [v8 description];
    v11 = sub_1C5BCAE74();
    v13 = v12;

    MEMORY[0x1C694F170](v11, v13);

    v14 = v17;
    v15 = v18;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 32) = v14;
    *(v9 + 40) = v15;
    sub_1C5BCBF34();

    return 0;
  }

  return v4;
}

id sub_1C5ADBA8C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = v3;
    [v5 setTexture_];
    [v5 setLoadAction_];
    [v5 setStoreAction_];

    [v5 setClearColor_];
    return v1;
  }

  else
  {
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD000000000000032, 0x80000001C5BFB280);
    v7 = [v1 description];
    v8 = sub_1C5BCAE74();
    v10 = v9;

    MEMORY[0x1C694F170](v8, v10);

    result = sub_1C5BCBBC4();
    __break(1u);
  }

  return result;
}

void sub_1C5ADBC3C(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 <= 0.0)
  {
    return;
  }

  v3 = *(v1 + 32);
  if (v3 <= 0.0)
  {
    return;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v2 >> 52 > 0x7FEuLL || *&v3 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 height:v3 mipmapped:0];
  [v5 setStorageMode_];
  [v5 setUsage_];
  *(v1 + 40) = [a1 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  *(v1 + 112) = [a1 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  v6 = sub_1C5ADBA8C();

  v7 = *(v1 + 168);
  *(v1 + 168) = v6;
}

void sub_1C5ADBDD4(void *a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  if (v3)
  {
    v4 = *(v2 + 136);
    if (v4)
    {
      v5 = *(v2 + 144);
      if (v5)
      {
        v6 = *(v2 + 96);
        if (v6)
        {
          if (*(v2 + 104) == 1 && (v7 = *(v2 + 40)) != 0)
          {
            v8 = a1;
            v9 = a2;
            v10 = *(v2 + 112);
            if (v10)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v11 = [v8 blitCommandEncoder];
              if (v11)
              {
                v12 = v11;
                [v11 copyFromTexture:v7 toTexture:v10];
                *(v2 + 104) = 0;
                [v12 endEncoding];
                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (!*(v2 + 168))
              {
                goto LABEL_22;
              }

LABEL_19:
              v16 = [v8 renderCommandEncoderWithDescriptor_];
              if (v16)
              {
                v17 = v16;
                v18 = sub_1C5BCAE44();
                [v17 setLabel_];

                [v17 setRenderPipelineState_];
                [v17 setVertexBuffer:v4 offset:0 atIndex:0];
                [v17 setVertexBytes:v9 length:368 atIndex:1];
                [v17 setFragmentTexture:v6 atIndex:0];
                [v17 setFragmentTexture:*(v2 + 112) atIndex:1];
                [v17 setFragmentBytes:v9 length:368 atIndex:1];
                [v17 drawIndexedPrimitives:3 indexCount:*(*(v2 + 128) + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
                [v17 endEncoding];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
LABEL_27:

                swift_unknownObjectRelease();
                return;
              }

LABEL_22:
              if (qword_1EDA4E6D0 != -1)
              {
                swift_once();
              }

              v19 = sub_1C5BC7D64();
              __swift_project_value_buffer(v19, qword_1EDA4E6E0);
              v20 = sub_1C5BC7D44();
              v21 = sub_1C5BCB4D4();
              if (os_log_type_enabled(v20, v21))
              {
                v22 = swift_slowAlloc();
                *v22 = 0;
                _os_log_impl(&dword_1C5922000, v20, v21, "Could not create command encoder", v22, 2u);
                MEMORY[0x1C69510F0](v22, -1, -1);
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_27;
            }
          }

          else
          {
            v8 = a1;
            v9 = a2;
          }

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if (!*(v2 + 168))
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }
    }
  }

  if (qword_1EDA4E6D0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C5BC7D64();
  __swift_project_value_buffer(v13, qword_1EDA4E6E0);
  oslog = sub_1C5BC7D44();
  v14 = sub_1C5BCB4B4();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C5922000, oslog, v14, "Could not encode texture blender, missing required value", v15, 2u);
    MEMORY[0x1C69510F0](v15, -1, -1);
  }
}

id *sub_1C5ADC250()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C5ADC2EC()
{
  sub_1C5ADC250();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5ADC320(uint64_t a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  v2 = *(a1 + 16);
  *(v1 + 56) = *a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(v1 + 16) = 115;
  *(v1 + 24) = 1117782016;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0x3FF0000000000000;
  *(v1 + 72) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  if (qword_1EDA4EDB8 != -1)
  {
    swift_once();
  }

  result = qword_1EDA5DDD0;
  *(v1 + 104) = qword_1EDA5DDD0;
  *(v1 + 112) = &unk_1F45189A8;
  v6 = *(result + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 120) = [*(v1 + 56) newBufferWithBytes:+ 32 length:v6 << 6 options:0];
    result = swift_unknownObjectRelease();
    v7 = *(v1 + 112);
    v8 = *(v7 + 16);
    if (v8 + 0x4000000000000000 >= 0)
    {
      *(v1 + 128) = [*(v1 + 56) newBufferWithBytes:v7 + 32 length:2 * v8 options:0];
      swift_unknownObjectRelease();
      *(v1 + 136) = sub_1C5ADCC14();
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

void sub_1C5ADC474(void *a1, uint64_t a2)
{
  v3 = v2[17];
  if (v3)
  {
    v4 = v2[15];
    if (v4)
    {
      v5 = v2[16];
      if (v5)
      {
        v6 = v2[20];
        if (v6)
        {
          v7 = v2[21];
          if (v7)
          {
            v8 = v2[18];
            if (v8)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v11 = a1;
              v12 = [a1 renderCommandEncoderWithDescriptor_];
              if (v12)
              {
                v13 = v12;
                v14 = sub_1C5BCAE44();
                [v13 setLabel_];

                [v13 setRenderPipelineState_];
                [v13 setVertexBuffer:v4 offset:0 atIndex:0];
                [v13 setVertexBytes:a2 length:368 atIndex:1];
                [v13 setFragmentBytes:a2 length:368 atIndex:1];
                [v13 setFragmentTexture:v2[19] atIndex:0];
                [v13 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:3];
                [v13 endEncoding];
                v15 = v2[22];
                if (v15)
                {
                  v16 = v15;
                  [v16 encodeToCommandBuffer:v11 sourceTexture:v6 destinationTexture:v7];
                }

                swift_unknownObjectRelease();
LABEL_24:
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
            }

            if (qword_1EDA4E6D0 != -1)
            {
              swift_once();
            }

            v20 = sub_1C5BC7D64();
            __swift_project_value_buffer(v20, qword_1EDA4E6E0);
            v21 = sub_1C5BC7D44();
            v22 = sub_1C5BCB4D4();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&dword_1C5922000, v21, v22, "Could not create command Encoder", v23, 2u);
              MEMORY[0x1C69510F0](v23, -1, -1);
            }

            goto LABEL_24;
          }
        }
      }
    }
  }

  if (qword_1EDA4E6D0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C5BC7D64();
  __swift_project_value_buffer(v17, qword_1EDA4E6E0);
  oslog = sub_1C5BC7D44();
  v18 = sub_1C5BCB4B4();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C5922000, oslog, v18, "Could not encode rotating artwork, missing required value", v19, 2u);
    MEMORY[0x1C69510F0](v19, -1, -1);
  }
}

id sub_1C5ADC860()
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = v0[9];
  v1 = v0[10];
  v3 = objc_allocWithZone(MEMORY[0x1E6974060]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = v1;
  v4 = [v3 init];
  v22 = 0;
  [v4 setConstantValue:&v22 type:53 atIndex:0];
  v5 = sub_1C5BCAE44();
  v21 = 0;
  v6 = [v2 newFunctionWithName:v5 constantValues:v4 error:&v21];

  if (v6)
  {
    v7 = v21;
  }

  else
  {
    v8 = v21;
    v9 = sub_1C5BC7914();

    swift_willThrow();
  }

  v10 = sub_1C5BCAE44();
  v21 = 0;
  v11 = [v2 newFunctionWithName:v10 constantValues:v4 error:&v21];

  if (v11)
  {
    v12 = v21;
  }

  else
  {
    v13 = v21;
    v14 = sub_1C5BC7914();

    swift_willThrow();
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v16 = sub_1C5BCAE44();
  [v15 setLabel_];

  [v15 setVertexFunction_];
  [v15 setFragmentFunction_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v17 = [v15 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (v18)
  {
    [v18 setPixelFormat_];
    [v18 setBlendingEnabled_];
    if (qword_1EDA4EDC0 != -1)
    {
      swift_once();
    }

    [v15 setVertexDescriptor_];

    return v15;
  }

  else
  {
    result = sub_1C5BCBBC4();
    __break(1u);
  }

  return result;
}

id sub_1C5ADCC14()
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 56);
  v2 = sub_1C5ADC860();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1C5BC7914();

    swift_willThrow();
    v19 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
    sub_1C592535C(0, &qword_1EC195458, 0x1E696ABC0);
    swift_dynamicCast();
    v7 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C5BCFF00;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1C5BCBA94();

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001C5BFB420;
    v9 = [v7 description];
    v10 = sub_1C5BCAE74();
    v12 = v11;

    MEMORY[0x1C694F170](v10, v12);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1C5BCBF34();

    return 0;
  }

  return v3;
}

id sub_1C5ADCE0C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (v3)
  {
    v4 = *(v0 + 160);
    v5 = v3;
    [v5 setTexture_];
    [v5 setLoadAction_];

    [v5 setClearColor_];
    return v1;
  }

  else
  {
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD000000000000032, 0x80000001C5BFB280);
    v7 = [v1 description];
    v8 = sub_1C5BCAE74();
    v10 = v9;

    MEMORY[0x1C694F170](v8, v10);

    result = sub_1C5BCBBC4();
    __break(1u);
  }

  return result;
}

void sub_1C5ADCFA8(void *a1)
{
  v2 = *(v1 + 32);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = v2 + 3;
  if (v2 >= 0)
  {
    v4 = v2;
  }

  v5 = *(v1 + 40);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v6 = v5;
  if (v3 < 4 || v6 < 4)
  {
    *(v1 + 160) = 0;
    swift_unknownObjectRelease();
    *(v1 + 168) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v4 >> 2 height:v6 >> 2 mipmapped:0];
    [v9 setStorageMode_];
    [v9 setUsage_];
    *(v1 + 160) = [a1 newTextureWithDescriptor_];
    swift_unknownObjectRelease();
    *(v1 + 168) = [a1 newTextureWithDescriptor_];
    swift_unknownObjectRelease();
    v10 = sub_1C5ADCE0C();

    v11 = *(v1 + 144);
    *(v1 + 144) = v10;
  }
}

id sub_1C5ADD180()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24) / (4.0 / v1);
  v3 = *(v0 + 176);
  if (!v3 || (result = [v3 sigma], v2 != v5))
  {
    v6 = *(v0 + 56);
    v7 = objc_allocWithZone(MEMORY[0x1E69745C0]);
    *&v8 = v2;
    v9 = [v7 initWithDevice:v6 sigma:v8];
    v10 = *(v0 + 176);
    *(v0 + 176) = v9;

    return MEMORY[0x1EEE66BB8](v9, v10);
  }

  return result;
}

id *sub_1C5ADD224()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C5ADD2C0()
{
  sub_1C5ADD224();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5ADD2F4()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA4E6E0);
  __swift_project_value_buffer(v0, qword_1EDA4E6E0);
  return sub_1C5BC7D54();
}

unint64_t sub_1C5ADD408()
{
  result = qword_1EC197388;
  if (!qword_1EC197388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197388);
  }

  return result;
}

void sub_1C5ADD45C(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, char a7, void *a8, char a9)
{
  v65 = *MEMORY[0x1E69E9840];
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  v61 = a7;
  *(v17 + 40) = a7 & 1;
  *(v17 + 48) = a8;
  *(v17 + 56) = a9;
  v63 = a4;
  sub_1C5974664(a4, a5);
  v18 = qword_1EDA4E6D0;
  v19 = a6;
  v20 = a8;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = sub_1C5BC7D64();
  __swift_project_value_buffer(v21, qword_1EDA4E6E0);
  v22 = a1;
  v23 = sub_1C5BC7D44();
  v24 = sub_1C5BCB4F4();

  v62 = v20;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315394;
    type metadata accessor for CGImage(0);
    sub_1C5ADEE50(&qword_1EDA4E678, type metadata accessor for CGImage, &unk_1C5BD1BE0);
    sub_1C5BC7C44();
    v27 = sub_1C5BCBD64();
    v29 = a3;
    v30 = sub_1C592ADA8(v27, v28, aBlock);

    *(v25 + 4) = v30;
    a3 = v29;
    *(v25 + 12) = 1024;
    *(v25 + 14) = a2 & 1;
    _os_log_impl(&dword_1C5922000, v23, v24, "beginning loading texture CGImage: %s, async: %{BOOL}d using MTKTextureLoader", v25, 0x12u);
    v31 = __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1C69510F0](v26, -1, -1, v31);
    MEMORY[0x1C69510F0](v25, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197410, &qword_1C5BE7288);
  inited = swift_initStackObject();
  v33 = MEMORY[0x1E69743F8];
  *(inited + 16) = xmmword_1C5BCFF00;
  v34 = *v33;
  *(inited + 32) = v34;
  *(inited + 40) = 0;
  v35 = v34;
  v36 = sub_1C59AE660(inited);
  swift_setDeallocating();
  sub_1C5924EF4(inited + 32, &qword_1EC197418, qword_1C5BE7290);
  v37 = *(a3 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 24);
  sub_1C5A0F2F8(v36);

  type metadata accessor for Option(0);
  sub_1C5ADEE50(&qword_1EDA4E610, type metadata accessor for Option, &unk_1C5BD1DA4);
  v38 = sub_1C5BCACA4();

  if (a2)
  {
    v39 = swift_allocObject();
    v39[2] = v22;
    v39[3] = sub_1C5ADEE20;
    v39[4] = v17;
    aBlock[4] = sub_1C5ADEE38;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5B51CC4;
    aBlock[3] = &block_descriptor_212;
    v40 = _Block_copy(aBlock);
    v41 = v22;

    [v37 newTextureWithCGImage:v41 options:v38 completionHandler:v40];
    _Block_release(v40);
  }

  else
  {
    aBlock[0] = 0;
    v42 = [v37 newTextureWithCGImage:v22 options:v38 error:aBlock];

    v43 = aBlock[0];
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v45 = v43;
      v46 = sub_1C5BC7914();

      swift_willThrow();
      v44 = 0;
    }

    v47 = v22;
    v48 = sub_1C5BC7D44();
    v49 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136315138;
      type metadata accessor for CGImage(0);
      sub_1C5ADEE50(&qword_1EDA4E678, type metadata accessor for CGImage, &unk_1C5BD1BE0);
      sub_1C5BC7C44();
      v52 = sub_1C5BCBD64();
      v54 = sub_1C592ADA8(v52, v53, aBlock);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1C5922000, v48, v49, "finished loading texture CGImage %s using MTKTextureLoader", v50, 0xCu);
      v55 = __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1C69510F0](v51, -1, -1, v55);
      MEMORY[0x1C69510F0](v50, -1, -1);
    }

    if (v61 & 1) != 0 || (v56 = *&v62[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage]) == 0 || (sub_1C592535C(0, &qword_1EDA4E5E0, 0x1E69DCAB8), v57 = v56, v58 = sub_1C5BCB744(), v57, (v58))
    {
      v59 = 1.0;
      if (a9)
      {
        v59 = 0.0;
      }

      *&v62[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix] = v59;
      v60 = *&v62[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers];
      *(v60 + 96) = v44;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v60 + 104) = 1;
    }

    if (v63)
    {
      v63();
    }

    swift_unknownObjectRelease();
  }
}

id sub_1C5ADDB3C(id a1)
{
  if (qword_1EDA4ED78 != -1)
  {
LABEL_27:
    v19 = a1;
    swift_once();
    a1 = v19;
  }

  v1 = off_1EDA4ED88;
  if (off_1EDA4ED88 && *(off_1EDA4ED88 + 2) == 32)
  {
    v2 = a1;
    v3 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
    [v3 setTextureType:7];
    [v3 setPixelFormat:70];
    [v3 setWidth:32];
    [v3 setHeight:32];
    [v3 setDepth:32];
    [v3 setUsage:1];
    a1 = [v2 newTextureWithDescriptor_];
    if (a1)
    {
      v4 = a1;
      v5 = 0;
      v20 = vdupq_n_s64(0x20uLL);
      while (1)
      {
        if (v5 >= v1[2])
        {
          __break(1u);
          goto LABEL_27;
        }

        v6 = v1[v5 + 4];
        if (*(v6 + 16) != 4096)
        {
          break;
        }

        v7 = v5 + 1;
        v21[0] = 0;
        v21[1] = 0;
        v21[2] = v5;
        v22 = v20;
        v23 = 1;
        a1 = [v4 replaceRegion:v21 mipmapLevel:0 slice:0 withBytes:v6 + 32 bytesPerRow:128 bytesPerImage:4096];
        v5 = v7;
        if (v7 == 32)
        {

          return v4;
        }
      }

      if (qword_1EDA4E6D0 != -1)
      {
        swift_once();
      }

      v15 = sub_1C5BC7D64();
      __swift_project_value_buffer(v15, qword_1EDA4E6E0);
      v12 = sub_1C5BC7D44();
      v16 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v12, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C5922000, v12, v16, "Invalid LUT data", v17, 2u);
        MEMORY[0x1C69510F0](v17, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDA4E6D0 != -1)
      {
        swift_once();
      }

      v11 = sub_1C5BC7D64();
      __swift_project_value_buffer(v11, qword_1EDA4E6E0);
      v12 = sub_1C5BC7D44();
      v13 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1C5922000, v12, v13, "Couldn't build LUT texture", v14, 2u);
        MEMORY[0x1C69510F0](v14, -1, -1);
      }
    }
  }

  else
  {
    if (qword_1EDA4E6D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C5BC7D64();
    __swift_project_value_buffer(v8, qword_1EDA4E6E0);
    v3 = sub_1C5BC7D44();
    v9 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C5922000, v3, v9, "LUT image data not available", v10, 2u);
      MEMORY[0x1C69510F0](v10, -1, -1);
    }
  }

  return 0;
}

double sub_1C5ADDF3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197408, &unk_1C5BE7270);
  v0 = swift_allocObject();
  v0[1] = xmmword_1C5BD21E0;
  v0[2] = xmmword_1C5BE6EC0;
  v0[3] = xmmword_1C5BE6ED0;
  v0[4] = xmmword_1C5BDA780;
  result = 0.0;
  v0[5] = xmmword_1C5BDA790;
  v0[6] = xmmword_1C5BE6EE0;
  v0[7] = xmmword_1C5BE6EF0;
  v0[8] = xmmword_1C5BDA780;
  v0[9] = xmmword_1C5BDA790;
  v0[10] = xmmword_1C5BE6EE0;
  v0[11] = xmmword_1C5BE6EF0;
  v0[12] = xmmword_1C5BDA780;
  v0[13] = xmmword_1C5BDA790;
  return result;
}

uint64_t sub_1C5ADDFC4(uint64_t a1)
{
  v1 = sub_1C5BC7CF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC7CA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA4E2D0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C5BC7CE4();
  __swift_project_value_buffer(v9, qword_1EDA5DB78);
  v10 = sub_1C5BC7CC4();
  sub_1C5BC7D04();
  v11 = sub_1C5BCB5D4();
  if (sub_1C5BCB7E4())
  {

    sub_1C5BC7D34();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1C5BC7C84();
    _os_signpost_emit_with_name_impl(&dword_1C5922000, v10, v11, v14, "Backdrop Snapshot Generation", v12, v13, 2u);
    MEMORY[0x1C69510F0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1C5ADE250(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1C5ADE2B4()
{
  result = qword_1EC197398;
  if (!qword_1EC197398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197398);
  }

  return result;
}

void keypath_get_10Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t dispatch thunk of Backdrop.CompositeRenderer.setImageAsync(_:animated:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1F8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C592ABD4;

  return v9(a1, a2);
}

uint64_t getEnumTagSinglePayload for Backdrop.Specs.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Backdrop.Specs.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI8BackdropO5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C5ADECA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 7)
  {
    return (v3 - 6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5ADED08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

void *sub_1C5ADED58(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1C5ADEE50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static WaveformTheme.color(palette:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v9 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  v5 = v2;
  v6 = v3;
  v7 = v4;

  return v9;
}

id static WaveformTheme.artwork(image:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return a1;
}

double static WaveformTheme.automatic.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

void MCUINamespace<A>.waveformTheme(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  swift_getKeyPath(asc_1C5BE72D0);
  sub_1C5ADF038(v3, v4, v5, v6, v7);
  sub_1C5BC9DF4();

  sub_1C5ADF09C(v3, v4, v5, v6, v7);
}

void *sub_1C5ADEFF0()
{
  sub_1C5AE1310();

  return sub_1C5BC8F44();
}

id sub_1C5ADF038(id result, void *a2, void *a3, void *a4, char a5)
{
  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }

    v8 = result;
    v9 = a2;
    v10 = a3;
    result = a4;
  }

  return result;
}

void sub_1C5ADF09C(void *a1, void *a2, void *a3, void *a4, char a5)
{
  if (a5 != 1)
  {
    if (a5)
    {
      return;
    }

    a1 = a4;
  }
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI13WaveformThemeV0E0O(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

unint64_t sub_1C5ADF12C()
{
  result = qword_1EC197460;
  if (!qword_1EC197460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197458, &qword_1C5BE73A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197460);
  }

  return result;
}

uint64_t sub_1C5ADF1A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1C5ADF1E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5ADF230(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

double sub_1C5ADF25C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_1C5ADF270(double a1, double a2, double a3)
{
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD000000000000019, 0x80000001C5BFB530);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0xD000000000000019, 0x80000001C5BFB550);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0x617275746173202CLL, 0xEE00203A6E6F6974);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](41, 0xE100000000000000);
  return 0;
}

CGColorSpaceRef sub_1C5ADF3A8()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_1EC197430 = result;
  return result;
}

id sub_1C5ADF3C8()
{
  result = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  qword_1EC197438 = result;
  return result;
}

uint64_t sub_1C5ADF3FC(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1C5BC7CF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C5BC7CA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1C5BC7CC4();
  sub_1C5BC7D04();
  v21 = sub_1C5BCB5D4();
  result = sub_1C5BCB7E4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1C5BC7D34();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1C5BC7C84();
      _os_signpost_emit_with_name_impl(&dword_1C5922000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1C69510F0](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C5ADF698()
{
  v0 = sub_1C5BC7CE4();
  __swift_allocate_value_buffer(v0, qword_1EC197440);
  __swift_project_value_buffer(v0, qword_1EC197440);
  return sub_1C5BC7CD4();
}

unint64_t sub_1C5ADF710(CGImage *a1)
{
  v2 = a1;
  if (CGImageGetWidth(a1) && CGImageGetHeight(v2))
  {
    Width = CGImageGetWidth(v2);
    CGImageGetHeight(v2);
    Height = CGImageGetHeight(v2);
    v5 = CGImageGetWidth(v2);
    v6 = Height * v5;
    if ((Height * v5) >> 64 != (Height * v5) >> 63)
    {
      goto LABEL_56;
    }

    if ((v6 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_57;
    }

    v1 = (4 * v6);
    if (((4 * v6) & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    if (v1)
    {
      Height = sub_1C5BCB0C4();
      *(Height + 16) = v1;
      bzero((Height + 32), 4 * v6);
    }

    else
    {
      Height = MEMORY[0x1E69E7CC0];
    }

    v1 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    if (qword_1EC190850 != -1)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v9 = qword_1EC197438;
      v10 = CGImageGetWidth(v2);
      if ((v10 - 0x2000000000000000) >> 62 == 3)
      {
        v13 = Width;
        v11 = 4 * v10;
        v12 = *MEMORY[0x1E695F910];
        if (qword_1EC190848 == -1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      v140 = v13;
      v2 = v11;
      Width = v12;
      swift_once();
LABEL_14:
      v14 = 0.0;
      *&result = COERCE_DOUBLE([v9 render:v1 toBitmap:Height + 32 rowBytes:0.0 bounds:0.0 format:*&v140 colorSpace:?]);
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return result;
      }

      if (!v6)
      {
LABEL_37:
        v7 = v14 / v6;
        if (v7 >= 0.0 && v7 < 0.6)
        {

          *&result = 0.6 - v7;
          return result;
        }

        if (v7 >= 0.6 && v7 <= 0.7)
        {

          *&result = 0.0;
          return result;
        }

        if (v7 >= 0.7 && v7 <= 1.0)
        {

          *&result = v7 + -0.7;
          return result;
        }

        sub_1C5AE12BC();
        swift_willThrowTypedImpl();

        goto LABEL_9;
      }

      v16 = *(Height + 16);
      if (!v16)
      {
        goto LABEL_53;
      }

      if (v16 == 1)
      {
        goto LABEL_54;
      }

      if (v16 >= 3)
      {
        LOBYTE(v15) = *(Height + 32);
        *&v17 = v15;
        v18 = *&v17 / 255.0;
        LOBYTE(v17) = *(Height + 33);
        *&v19 = v17;
        v20 = *&v19 / 255.0;
        LOBYTE(v19) = *(Height + 34);
        v21 = v19 / 255.0;
        v22 = v18 * (v18 * 0.299) + v20 * (v20 * 0.587);
        v23.f64[0] = v21 * 0.114;
        v14 = sqrt(v22 + v21 * (v21 * 0.114)) + 0.0;
        if (v6 == 1)
        {
          goto LABEL_37;
        }

        v24 = (v16 - 1) >> 2;
        if (v24 >= (v16 - 2) >> 2)
        {
          v24 = (v16 - 2) >> 2;
        }

        v25 = (v16 - 3) >> 2;
        if (v24 < v25)
        {
          v25 = v24;
        }

        if (v6 - 2 < v25)
        {
          v25 = v6 - 2;
        }

        if (v25 >= 0x10)
        {
          v27 = v25 + 1;
          v28 = v27 & 0xF;
          if ((v27 & 0xF) == 0)
          {
            v28 = 16;
          }

          v29 = v27 - v28;
          v26 = v29 + 1;
          v30 = (Height + 36);
          v31 = vdupq_n_s64(0x406FE00000000000uLL);
          v23 = vdupq_n_s64(0x3FD322D0E5604189uLL);
          v32 = vdupq_n_s64(0x3FE2C8B439581062uLL);
          v33 = vdupq_n_s64(0x3FBD2F1A9FBE76C9uLL);
          do
          {
            v141 = vld4q_s8(v30);
            v30 += 64;
            v34 = vextq_s8(v141.val[0], v141.val[0], 8uLL).u64[0];
            v35.i32[0] = BYTE6(v34);
            v36.i32[0] = BYTE4(v34);
            v35.i32[1] = HIBYTE(v34);
            v36.i32[1] = BYTE5(v34);
            v37.i32[0] = BYTE2(v34);
            v37.i32[1] = BYTE3(v34);
            v38 = vand_s8(v35, 0xFF000000FFLL);
            v39 = v34;
            v40 = BYTE1(v34);
            v41 = vand_s8(v36, 0xFF000000FFLL);
            v42 = vand_s8(v37, 0xFF000000FFLL);
            v43.i32[0] = v141.val[0].u8[6];
            v43.i32[1] = v141.val[0].u8[7];
            v44 = vand_s8(__PAIR64__(v40, v39), 0xFF000000FFLL);
            v45 = vand_s8(v43, 0xFF000000FFLL);
            v46.i64[0] = v45.u32[0];
            v46.i64[1] = v45.u32[1];
            v47 = v46;
            v48.i32[0] = v141.val[0].u8[4];
            v46.i64[0] = v38.u32[0];
            v46.i64[1] = v38.u32[1];
            v49 = v46;
            v48.i32[1] = v141.val[0].u8[5];
            v50 = vand_s8(v48, 0xFF000000FFLL);
            v46.i64[0] = v41.u32[0];
            v46.i64[1] = v41.u32[1];
            v51 = v46;
            v46.i64[0] = v50.u32[0];
            v46.i64[1] = v50.u32[1];
            v52 = v46;
            v46.i64[0] = v42.u32[0];
            v46.i64[1] = v42.u32[1];
            v53 = v46;
            v41.i32[0] = v141.val[0].u8[2];
            v41.i32[1] = v141.val[0].u8[3];
            v54 = vand_s8(v41, 0xFF000000FFLL);
            v46.i64[0] = v54.u32[0];
            v46.i64[1] = v54.u32[1];
            v55 = v46;
            v46.i64[0] = v44.u32[0];
            v46.i64[1] = v44.u32[1];
            v56 = v46;
            v44.i32[0] = v141.val[0].u8[0];
            v44.i32[1] = v141.val[0].u8[1];
            v57 = vand_s8(v44, 0xFF000000FFLL);
            v46.i64[0] = v57.u32[0];
            v46.i64[1] = v57.u32[1];
            v58 = vextq_s8(v141.val[1], v141.val[1], 8uLL).u64[0];
            v59 = vcvtq_f64_u64(v52);
            v52.i32[0] = BYTE6(v58);
            v60 = vcvtq_f64_u64(v55);
            v52.i32[1] = HIBYTE(v58);
            *v52.i8 = vand_s8(*v52.i8, 0xFF000000FFLL);
            v61 = vcvtq_f64_u64(v46);
            v62.i32[0] = BYTE4(v58);
            v62.i32[1] = BYTE5(v58);
            v63 = vcvtq_f64_u64(v49);
            v46.i64[0] = v52.u32[0];
            v46.i64[1] = v52.u32[1];
            v64 = v46;
            *v49.i8 = vand_s8(v62, 0xFF000000FFLL);
            v46.i64[0] = v49.u32[0];
            v46.i64[1] = v49.u32[1];
            v65 = v46;
            v66 = vcvtq_f64_u64(v51);
            v49.i32[0] = BYTE2(v58);
            v49.i32[1] = BYTE3(v58);
            v67 = vcvtq_f64_u64(v53);
            v68 = vand_s8(*v49.i8, 0xFF000000FFLL);
            v69 = vcvtq_f64_u64(v56);
            v70.i32[0] = v58;
            v70.i32[1] = BYTE1(v58);
            v71 = vdivq_f64(v61, v31);
            LODWORD(v61.f64[0]) = v141.val[1].u8[6];
            HIDWORD(v61.f64[0]) = v141.val[1].u8[7];
            v72 = vdivq_f64(v60, v31);
            v46.i64[0] = v68.u32[0];
            v46.i64[1] = v68.u32[1];
            v73 = v46;
            v74 = vdivq_f64(v59, v31);
            *&v60.f64[0] = vand_s8(v70, 0xFF000000FFLL);
            v75 = vdivq_f64(vcvtq_f64_u64(v47), v31);
            v46.i64[0] = LODWORD(v60.f64[0]);
            v46.i64[1] = HIDWORD(v60.f64[0]);
            v76 = v46;
            v77 = v141.val[1].u8[0];
            v78 = v141.val[1].u8[1];
            *&v61.f64[0] = vand_s8(*&v61.f64[0], 0xFF000000FFLL);
            v79 = v141.val[2].u8[0];
            v80 = v141.val[2].u8[1];
            v46.i64[0] = LODWORD(v61.f64[0]);
            v46.i64[1] = HIDWORD(v61.f64[0]);
            v81 = v141.val[2].u8[2];
            v82 = v141.val[2].u8[3];
            v83 = vcvtq_f64_u64(v46);
            v84 = v141.val[2].u8[4];
            v85 = v141.val[2].u8[5];
            v86 = v141.val[2].u8[6];
            v87 = v141.val[2].u8[7];
            v141.val[2].i64[0] = vextq_s8(v141.val[2], v141.val[2], 8uLL).u64[0];
            v141.val[3] = vdivq_f64(v69, v31);
            v141.val[0].i32[0] = v141.val[1].u8[4];
            v141.val[0].i32[1] = v141.val[1].u8[5];
            *v141.val[0].i8 = vand_s8(*v141.val[0].i8, 0xFF000000FFLL);
            v46.i64[0] = v141.val[0].u32[0];
            v46.i64[1] = v141.val[0].u32[1];
            v88 = vdivq_f64(v67, v31);
            v89 = vcvtq_f64_u64(v46);
            v141.val[0].i32[0] = v141.val[1].u8[2];
            v141.val[0].i32[1] = v141.val[1].u8[3];
            *v141.val[0].i8 = vand_s8(*v141.val[0].i8, 0xFF000000FFLL);
            v90 = vdivq_f64(v66, v31);
            v46.i64[0] = v141.val[0].u32[0];
            v46.i64[1] = v141.val[0].u32[1];
            v141.val[1] = vcvtq_f64_u64(v46);
            v91 = vdivq_f64(v63, v31);
            *v141.val[0].i8 = vand_s8(__PAIR64__(v78, v77), 0xFF000000FFLL);
            v46.i64[0] = v141.val[0].u32[0];
            v46.i64[1] = v141.val[0].u32[1];
            v92 = v141.val[2].u8[0];
            v93 = vdivq_f64(vcvtq_f64_u64(v76), v31);
            v141.val[0] = vdivq_f64(vcvtq_f64_u64(v46), v31);
            v94 = v141.val[2].u8[1];
            v95 = v141.val[2].u8[2];
            v96 = vdivq_f64(vcvtq_f64_u64(v73), v31);
            v141.val[1] = vdivq_f64(v141.val[1], v31);
            v97 = v141.val[2].u8[3];
            v98 = v141.val[2].u8[4];
            v99 = vdivq_f64(vcvtq_f64_u64(v65), v31);
            v100 = vdivq_f64(v89, v31);
            v101 = v141.val[2].u8[5];
            v2 = v141.val[2].u8[6];
            v102 = vdivq_f64(vcvtq_f64_u64(v64), v31);
            v103 = vdivq_f64(v83, v31);
            v104 = v141.val[2].u8[7];
            v141.val[2] = vmulq_f64(v88, vmulq_f64(v88, v23));
            v105 = vmulq_f64(v72, vmulq_f64(v72, v23));
            v106 = vmulq_f64(v102, vmulq_f64(v102, v32));
            v107 = vmulq_f64(v141.val[0], vmulq_f64(v141.val[0], v32));
            v108 = vmulq_f64(v141.val[1], vmulq_f64(v141.val[1], v32));
            v109 = vaddq_f64(vmulq_f64(v91, vmulq_f64(v91, v23)), v106);
            v141.val[0] = vaddq_f64(vmulq_f64(v90, vmulq_f64(v90, v23)), vmulq_f64(v99, vmulq_f64(v99, v32)));
            v141.val[2] = vaddq_f64(v141.val[2], vmulq_f64(v96, vmulq_f64(v96, v32)));
            v141.val[3] = vaddq_f64(vmulq_f64(v141.val[3], vmulq_f64(v141.val[3], v23)), vmulq_f64(v93, vmulq_f64(v93, v32)));
            v141.val[1] = vaddq_f64(vmulq_f64(v75, vmulq_f64(v75, v23)), vmulq_f64(v103, vmulq_f64(v103, v32)));
            v110 = vaddq_f64(vmulq_f64(v74, vmulq_f64(v74, v23)), vmulq_f64(v100, vmulq_f64(v100, v32)));
            v111 = vaddq_f64(v105, v108);
            *&v93.f64[0] = vand_s8(__PAIR64__(v94, v92), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v93.f64[0]);
            v46.i64[1] = HIDWORD(v93.f64[0]);
            v112 = v46;
            *&v103.f64[0] = vand_s8(__PAIR64__(v97, v95), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v103.f64[0]);
            v46.i64[1] = HIDWORD(v103.f64[0]);
            v113 = v46;
            *&v90.f64[0] = vand_s8(__PAIR64__(v101, v98), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v90.f64[0]);
            v46.i64[1] = HIDWORD(v90.f64[0]);
            v114 = v46;
            *&v99.f64[0] = vand_s8(__PAIR64__(v104, v2), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v99.f64[0]);
            v46.i64[1] = HIDWORD(v99.f64[0]);
            v115 = v46;
            *&v96.f64[0] = vand_s8(__PAIR64__(v80, v79), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v96.f64[0]);
            v46.i64[1] = HIDWORD(v96.f64[0]);
            v116 = vcvtq_f64_u64(v46);
            *&v75.f64[0] = vand_s8(__PAIR64__(v82, v81), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v75.f64[0]);
            v46.i64[1] = HIDWORD(v75.f64[0]);
            v117 = vcvtq_f64_u64(v46);
            *&v100.f64[0] = vand_s8(__PAIR64__(v85, v84), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v100.f64[0]);
            v46.i64[1] = HIDWORD(v100.f64[0]);
            v118 = vcvtq_f64_u64(v46);
            *&v105.f64[0] = vand_s8(__PAIR64__(v87, v86), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v105.f64[0]);
            v46.i64[1] = HIDWORD(v105.f64[0]);
            v119 = vdivq_f64(vcvtq_f64_u64(v115), v31);
            v120 = vdivq_f64(vcvtq_f64_u64(v114), v31);
            v121 = vdivq_f64(vcvtq_f64_u64(v113), v31);
            v122 = vdivq_f64(vcvtq_f64_u64(v46), v31);
            v123 = vdivq_f64(v118, v31);
            v124 = vdivq_f64(vcvtq_f64_u64(v112), v31);
            v125 = vdivq_f64(v117, v31);
            v126 = vdivq_f64(v116, v31);
            v127 = vsqrtq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v71, vmulq_f64(v71, v23)), v107), vmulq_f64(v126, vmulq_f64(v126, v33))));
            v128 = vsqrtq_f64(vaddq_f64(v111, vmulq_f64(v125, vmulq_f64(v125, v33))));
            v129 = vsqrtq_f64(vaddq_f64(v110, vmulq_f64(v123, vmulq_f64(v123, v33))));
            v141.val[1] = vsqrtq_f64(vaddq_f64(v141.val[1], vmulq_f64(v122, vmulq_f64(v122, v33))));
            v127.f64[0] = v14 + v127.f64[0] + v127.f64[1] + v128.f64[0] + v128.f64[1] + v129.f64[0] + v129.f64[1] + *v141.val[1].i64 + *&v141.val[1].i64[1];
            v130 = vsqrtq_f64(vaddq_f64(v109, vmulq_f64(v119, vmulq_f64(v119, v33))));
            v141.val[0] = vsqrtq_f64(vaddq_f64(v141.val[0], vmulq_f64(v120, vmulq_f64(v120, v33))));
            v141.val[1] = vsqrtq_f64(vaddq_f64(v141.val[3], vmulq_f64(v124, vmulq_f64(v124, v33))));
            v141.val[2] = vsqrtq_f64(vaddq_f64(v141.val[2], vmulq_f64(v121, vmulq_f64(v121, v33))));
            v14 = v127.f64[0] + *v141.val[1].i64 + *&v141.val[1].i64[1] + *v141.val[2].i64 + *&v141.val[2].i64[1] + *v141.val[0].i64 + *&v141.val[0].i64[1] + v130.f64[0] + v130.f64[1];
            v29 -= 16;
          }

          while (v29);
        }

        else
        {
          v26 = 1;
        }

        v131 = 4 * v26;
        v132 = v6 - v26;
        v133 = vdupq_n_s64(0x406FE00000000000uLL);
        while (v131 < v16)
        {
          if (v131 + 1 >= v16)
          {
            goto LABEL_54;
          }

          if (v131 + 2 >= v16)
          {
            goto LABEL_55;
          }

          LOBYTE(v23.f64[0]) = *(Height + v131 + 32);
          v134.i64[0] = *(Height + v131 + 33);
          v134.i64[1] = *(Height + v131 + 34);
          v135 = vdivq_f64(vcvtq_f64_u64(v134), v133);
          v136 = vmulq_f64(v135, vmulq_f64(v135, xmmword_1C5BE72C0));
          v23.f64[0] = sqrt(*&v23.f64[0] / 255.0 * (*&v23.f64[0] / 255.0 * 0.299) + v136.f64[0] + v136.f64[1]);
          v14 = v14 + v23.f64[0];
          v131 += 4;
          if (!--v132)
          {
            goto LABEL_37;
          }
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
    }
  }

  v7 = CGImageGetWidth(v2);
  CGImageGetHeight(v2);
  sub_1C5AE12BC();
  swift_willThrowTypedImpl();
LABEL_9:
  *&result = v7;
  return result;
}

unint64_t sub_1C5AE0100(uint64_t a1, const char *a2, uint64_t a3, int a4, CGImage *a5)
{
  v6 = v5;
  v34 = a4;
  v32 = a3;
  v33 = a2;
  v9 = sub_1C5BC7CA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  sub_1C5BC7C94();
  v31 = a1;
  v16 = sub_1C5BC7CC4();
  v17 = sub_1C5BCB5E4();
  result = sub_1C5BCB7E4();
  if (result)
  {
    v29 = a5;
    v30 = v5;
    if ((v34 & 1) == 0)
    {
      v19 = v33;
      if (v33)
      {
LABEL_9:
        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = sub_1C5BC7C84();
        _os_signpost_emit_with_name_impl(&dword_1C5922000, v16, v17, v21, v19, "", v20, 2u);
        MEMORY[0x1C69510F0](v20, -1, -1);
        a5 = v29;
        v6 = v30;
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v33 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v33 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v33 >> 16 <= 0x10)
      {
        v19 = &v35;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  (*(v10 + 16))(v12, v15, v9);
  sub_1C5BC7D24();
  swift_allocObject();
  v22 = sub_1C5BC7D14();
  (*(v10 + 8))(v15, v9);
  v23 = sub_1C5ADF710(a5);
  v25 = v24;
  v27 = v26;
  if (v6)
  {
    sub_1C5AE12BC();
    swift_allocError();
    *v28 = v23;
    *(v28 + 8) = v25;
    *(v28 + 16) = v27;
  }

  sub_1C5ADF3FC(v31, v33, v32, v34, v22);

  return v23;
}

uint64_t sub_1C5AE03BC(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_1C5BCB1C4();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_1C5BC7D64();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5AE0520, 0, 0);
}

uint64_t sub_1C5AE0520()
{
  v154 = v0;
  if (qword_1EC190510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v138 = __swift_project_value_buffer(*(v0 + 176), qword_1EC1A6970);
  v141 = *(v2 + 16);
  v141(v1);
  v4 = v3;
  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 240);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  if (v7)
  {
    v11 = *(v0 + 144);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v152 = v13;
    *v12 = 136446210;
    *(v0 + 136) = v11;
    v14 = sub_1C5BCAEA4();
    v16 = sub_1C592ADA8(v14, v15, &v152);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C5922000, v5, v6, "Deriving ArtworkTreatment from image %{public}s", v12, 0xCu);
    v17 = __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1C69510F0](v13, -1, -1, v17);
    MEMORY[0x1C69510F0](v12, -1, -1);

    v18 = *(v9 + 8);
    v18(v8, v10);
  }

  else
  {

    v18 = *(v9 + 8);
    v18(v8, v10);
  }

  v19 = [*(v0 + 144) CGImage];
  if (!v19)
  {
    sub_1C5AE12BC();
    v29 = swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 2;
    swift_willThrow();
    *(v0 + 64) = v29;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
    if (!swift_dynamicCast())
    {

      *(v0 + 72) = v29;
      v51 = v29;
      v52 = swift_dynamicCast();
      v53 = *(v0 + 176);
      v54 = *(v0 + 144);
      if (!v52)
      {
        v69 = *(v0 + 192);

        (v141)(v69, v138, v53);
        v70 = v54;
        v71 = v29;
        v72 = sub_1C5BC7D44();
        v73 = sub_1C5BCB4D4();

        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 192);
        v76 = *(v0 + 176);
        if (v74)
        {
          v148 = *(v0 + 192);
          v77 = *(v0 + 144);
          v139 = *(v0 + 176);
          v78 = swift_slowAlloc();
          v143 = v18;
          v79 = swift_slowAlloc();
          v152 = v79;
          *v78 = 136446466;
          *(v0 + 80) = v77;
          v80 = sub_1C5BCAEA4();
          v82 = sub_1C592ADA8(v80, v81, &v152);

          *(v78 + 4) = v82;
          *(v78 + 12) = 2082;
          *(v0 + 88) = v29;
          v83 = v29;
          v84 = sub_1C5BCAEA4();
          v86 = sub_1C592ADA8(v84, v85, &v152);

          *(v78 + 14) = v86;
          _os_log_impl(&dword_1C5922000, v72, v73, "ArtworkTreatment [%{public}s] encountered unhandled error: %{public}s", v78, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C69510F0](v79, -1, -1);
          MEMORY[0x1C69510F0](v78, -1, -1);

          v143(v148, v139);
        }

        else
        {

          v18(v75, v76);
        }

        goto LABEL_38;
      }

      v55 = *(v0 + 200);

      (v141)(v55, v138, v53);
      v56 = v54;
      v57 = sub_1C5BC7D44();
      v58 = sub_1C5BCB4D4();

      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v0 + 200);
      v61 = *(v0 + 176);
      if (v59)
      {
        v62 = *(v0 + 144);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v152 = v64;
        *v63 = 136446210;
        *(v0 + 96) = v62;
        v65 = sub_1C5BCAEA4();
        v142 = v18;
        v67 = sub_1C592ADA8(v65, v66, &v152);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_1C5922000, v57, v58, "ArtworkTreatment [%{public}s] cancelled", v63, 0xCu);
        v68 = __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x1C69510F0](v64, -1, -1, v68);
        MEMORY[0x1C69510F0](v63, -1, -1);

        v142(v60, v61);
      }

      else
      {

        v18(v60, v61);
      }

      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v113 = *(v0 + 72);
LABEL_37:

LABEL_38:
      v145 = 0.0;
      v150 = 0;
      v118 = 0;
      v119 = 1;
      goto LABEL_39;
    }

    v32 = *(v0 + 40);
    v33 = *(v0 + 176);
    v34 = *(v0 + 144);
    if (*(v0 + 56))
    {
      if (*(v0 + 56) == 1)
      {
        (v141)(*(v0 + 208), v138, v33);
        v35 = v34;
        v36 = sub_1C5BC7D44();
        v37 = sub_1C5BCB4D4();

        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 208);
        v40 = *(v0 + 176);
        if (v38)
        {
          v147 = *(v0 + 208);
          v41 = *(v0 + 144);
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v151 = v43;
          *v42 = 136446466;
          *(v0 + 104) = v41;
          v44 = sub_1C5BCAEA4();
          v46 = v18;
          v47 = sub_1C592ADA8(v44, v45, &v151);

          *(v42 + 4) = v47;
          *(v42 + 12) = 2080;
          v152 = 540702524;
          v153 = 0xE400000000000000;
          v48 = sub_1C5BCB304();
          MEMORY[0x1C694F170](v48);

          MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
          v49 = sub_1C5BCB304();
          MEMORY[0x1C694F170](v49);

          MEMORY[0x1C694F170](62, 0xE100000000000000);
          v50 = sub_1C592ADA8(v152, v153, &v151);

          *(v42 + 14) = v50;
          _os_log_impl(&dword_1C5922000, v36, v37, "ArtworkTreatment [%{public}s] failed to update treatment: image has invalid size %s", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C69510F0](v43, -1, -1);
          MEMORY[0x1C69510F0](v42, -1, -1);

          v46(v147, v40);
LABEL_36:
          v113 = *(v0 + 64);
          goto LABEL_37;
        }

        v116 = v39;
        v117 = v40;
LABEL_35:
        v18(v116, v117);
        goto LABEL_36;
      }

      (v141)(*(v0 + 224), v138, v33);
      v101 = v34;
      v102 = sub_1C5BC7D44();
      v103 = sub_1C5BCB4D4();

      v104 = os_log_type_enabled(v102, v103);
      v105 = *(v0 + 224);
      v92 = *(v0 + 176);
      if (v104)
      {
        v106 = *(v0 + 144);
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v152 = v108;
        *v107 = 136446210;
        *(v0 + 120) = v106;
        v109 = sub_1C5BCAEA4();
        v144 = v18;
        v111 = sub_1C592ADA8(v109, v110, &v152);

        *(v107 + 4) = v111;
        _os_log_impl(&dword_1C5922000, v102, v103, "ArtworkTreatment [%{public}s] failed to update treatment: no CGImage available", v107, 0xCu);
        v112 = __swift_destroy_boxed_opaque_existential_0(v108);
        MEMORY[0x1C69510F0](v108, -1, -1, v112);
        MEMORY[0x1C69510F0](v107, -1, -1);

        v100 = v105;
        goto LABEL_24;
      }

      v116 = v105;
    }

    else
    {
      (v141)(*(v0 + 216), v138, v33);
      v87 = v34;
      v88 = sub_1C5BC7D44();
      v89 = sub_1C5BCB4D4();

      v90 = os_log_type_enabled(v88, v89);
      v91 = *(v0 + 216);
      v92 = *(v0 + 176);
      if (v90)
      {
        v93 = *(v0 + 144);
        v149 = *(v0 + 216);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v152 = v95;
        *v94 = 136446466;
        *(v0 + 112) = v93;
        v96 = sub_1C5BCAEA4();
        v144 = v18;
        v98 = sub_1C592ADA8(v96, v97, &v152);

        *(v94 + 4) = v98;
        *(v94 + 12) = 2048;
        *(v94 + 14) = v32;
        _os_log_impl(&dword_1C5922000, v88, v89, "ArtworkTreatment [%{public}s] failed to update treatment: calculated impossible luminance of %f", v94, 0x16u);
        v99 = __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x1C69510F0](v95, -1, -1, v99);
        MEMORY[0x1C69510F0](v94, -1, -1);

        v100 = v149;
LABEL_24:
        v144(v100, v92);
        goto LABEL_36;
      }

      v116 = v91;
    }

    v117 = v92;
    goto LABEL_35;
  }

  v20 = v19;
  if (qword_1EC190858 != -1)
  {
    swift_once();
  }

  v21 = sub_1C5BC7CE4();
  v22 = __swift_project_value_buffer(v21, qword_1EC197440);
  v23 = v20;
  v24 = sub_1C5AE0100(v22, "Artwork Luminance Analysis", 26, 2, v23);
  v26 = v25;
  v28 = v27;

  sub_1C5BCB2E4();
  if (v28)
  {
    v114 = 1.25;
    if (v28 == 1)
    {
      v115 = v24;
    }

    else
    {
      v115 = 0;
    }

    v150 = 0;
  }

  else
  {
    v150 = v24;
    v115 = 0;
    v114 = v26 + 1.25;
  }

  v122 = *(v0 + 144);
  (v141)(*(v0 + 232), v138, *(v0 + 176));
  v123 = v122;
  v124 = sub_1C5BC7D44();
  v125 = sub_1C5BCB4F4();

  v126 = os_log_type_enabled(v124, v125);
  v127 = *(v0 + 232);
  v128 = *(v0 + 176);
  if (v126)
  {
    v140 = *(v0 + 232);
    v129 = *(v0 + 144);
    v146 = v18;
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v152 = v131;
    *v130 = 136446466;
    *(v0 + 128) = v129;
    v132 = sub_1C5BCAEA4();
    v134 = sub_1C592ADA8(v132, v133, &v152);

    *(v130 + 4) = v134;
    *(v130 + 12) = 2082;
    *(v0 + 16) = v150;
    *(v0 + 24) = v115;
    *(v0 + 32) = v114;
    v135 = sub_1C5BCAEA4();
    v137 = sub_1C592ADA8(v135, v136, &v152);

    *(v130 + 14) = v137;
    _os_log_impl(&dword_1C5922000, v124, v125, "ArtworkTreatment [%{public}s] derived treatment %{public}s", v130, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v131, -1, -1);
    MEMORY[0x1C69510F0](v130, -1, -1);

    v146(v140, v128);
  }

  else
  {

    v18(v127, v128);
  }

  v119 = 0;
  v145 = v114;
  v118 = v115;
LABEL_39:

  v120 = *(v0 + 8);

  return v120(v150, v118, *&v145, v119);
}

unint64_t sub_1C5AE12BC()
{
  result = qword_1EC197468;
  if (!qword_1EC197468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197468);
  }

  return result;
}

unint64_t sub_1C5AE1310()
{
  result = qword_1EDA46390;
  if (!qword_1EDA46390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WaveformTheme.ArtworkTreatment.CalculationError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WaveformTheme.ArtworkTreatment.CalculationError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C5AE1400(uint64_t a1)
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

uint64_t sub_1C5AE1418(uint64_t result, unsigned int a2)
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

uint64_t sub_1C5AE1448()
{
  sub_1C592BEC4();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5AE1484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5954488();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double MCUINamespace<A>.motionCacheBucket(id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath(byte_1C5BE7560);

  sub_1C5BC9DF4();

  return result;
}

{
  swift_getKeyPath(byte_1C5BE7560);
  sub_1C5BC9DF4();

  return result;
}

uint64_t sub_1C5AE1610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a1;
  v82 = a3;
  v80 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a2 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CapsuleProgress(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197500, &unk_1C5BE7770);
  v66 = a2;
  v8 = *(a2 + 16);
  v65 = *(a2 + 24);
  sub_1C5BC8BE4();
  v9 = sub_1C5BC8AB4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838, &qword_1C5BD5C80);
  v11 = sub_1C5924F54(&qword_1EC197508, &qword_1EC197500, &unk_1C5BE7770, MEMORY[0x1E69817F8]);
  WitnessTable = swift_getWitnessTable();
  v100 = v11;
  v101 = WitnessTable;
  v13 = swift_getWitnessTable();
  v14 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  v96 = v9;
  v97 = v10;
  v98 = v13;
  v99 = v14;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v63 = sub_1C5BCA7D4();
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v61 - v15;
  type metadata accessor for DraggableViewModifier(255);
  v16 = sub_1C5BC8AB4();
  v71 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v61 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197510, &qword_1C5BE7780);
  v72 = v16;
  v18 = sub_1C5BC8AB4();
  v77 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v61 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0, &unk_1C5BD9450);
  v78 = v18;
  v73 = sub_1C5BC8AB4();
  v79 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v61 - v22;
  v23 = v65;
  v85 = v8;
  v86 = v65;
  v24 = v83;
  v87 = v68;
  v88 = v83;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  v25 = sub_1C5BC95D4();
  v27 = v26;
  v29 = v28;
  v30 = v24;
  LOBYTE(v13) = *v24;
  v31 = v69;
  v32 = v67;
  v33 = v66;
  (*(v69 + 16))(v67, v30, v66);
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v8;
  *(v35 + 24) = v23;
  (*(v31 + 32))(v35 + v34, v32, v33);
  v36 = v63;
  v37 = swift_getWitnessTable();
  v38 = v13;
  v39 = v62;
  sub_1C5AE3120(v25, v27, v38, 0, 1, sub_1C5AE6670, v35, v36, v84, v29, v37);

  (*(v64 + 8))(v39, v36);
  v40 = &v83[*(v33 + 40)];
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v96) = *v40;
  v97 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA694();
  if (v95 == 1)
  {
    if (qword_1EC190870 != -1)
    {
      swift_once();
    }

    v43 = qword_1EC1A6D28;
  }

  else
  {
    if (qword_1EC190868 != -1)
    {
      swift_once();
    }

    v43 = qword_1EC1A6D10;
  }

  v44 = __swift_project_value_buffer(v80, v43);
  v45 = v81;
  sub_1C5AE8560(v44, v81, type metadata accessor for CapsuleProgressStyle);
  v46 = sub_1C5AE8518(qword_1EDA48CF8, type metadata accessor for DraggableViewModifier, &unk_1C5BE7B38);
  v93 = v37;
  v94 = v46;
  v47 = v72;
  v48 = swift_getWitnessTable();
  v49 = v74;
  v50 = v84;
  sub_1C5AE33FC(v45, v47, v48);
  sub_1C5AE8458(v45, type metadata accessor for CapsuleProgressStyle);
  (*(v71 + 8))(v50, v47);
  MEMORY[0x1C694ED40](0.5, 1.0, 0.0);
  LOBYTE(v96) = v41;
  v97 = v42;
  sub_1C5BCA694();
  LOBYTE(v96) = v95;
  v51 = sub_1C5924F54(&qword_1EC197518, &qword_1EC197510, &qword_1C5BE7780, MEMORY[0x1E6980A18]);
  v91 = v48;
  v92 = v51;
  v52 = v78;
  v53 = swift_getWitnessTable();
  v54 = v75;
  sub_1C5BCA384();

  (*(v77 + 8))(v49, v52);
  v55 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
  v89 = v53;
  v90 = v55;
  v56 = v73;
  v57 = swift_getWitnessTable();
  v58 = v76;
  sub_1C593EDC0(v54, v56, v57);
  v59 = *(v79 + 8);
  v59(v54, v56);
  sub_1C593EDC0(v58, v56, v57);
  return (v59)(v58, v56);
}

uint64_t sub_1C5AE2068@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v61 = a3;
  v65 = a2;
  v59 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v51 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197500, &unk_1C5BE7770);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v51 - v7;
  sub_1C5BC8BE4();
  v9 = sub_1C5BC8AB4();
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v51 - v10;
  v11 = sub_1C5924F54(&qword_1EC197508, &qword_1EC197500, &unk_1C5BE7770, MEMORY[0x1E69817F8]);
  v60 = v11;
  WitnessTable = swift_getWitnessTable();
  v78 = v11;
  v79 = WitnessTable;
  v13 = swift_getWitnessTable();
  v14 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  v52 = v9;
  v74 = v9;
  v75 = v5;
  v58 = v5;
  v53 = v13;
  v76 = v13;
  v77 = v14;
  v15 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v51 - v20;
  v21 = type metadata accessor for CapsuleProgress(0);
  MEMORY[0x1EEE9AC00](v21);
  v55 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v51 - v24);
  sub_1C5BC95C4();
  v27 = v26;
  *v25 = swift_getKeyPath(byte_1C5BE7788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC192F00, &qword_1C5BE7820);
  swift_storeEnumTagMultiPayload();
  v28 = v25 + v21[5];
  *v28 = swift_getKeyPath(a0_10);
  v28[8] = 0;
  v29 = v21[6];
  *(v25 + v29) = swift_getKeyPath(asc_1C5BE7858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v30 = v25 + v21[7];
  *v30 = swift_getKeyPath(aX_12);
  v30[8] = 0;
  v31 = v25 + v21[8];
  v72 = 0;
  LOBYTE(v73) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790, &qword_1C5BE0E40);
  sub_1C5BCA684();
  v32 = v75;
  v33 = v76;
  *v31 = v74;
  v31[8] = v32;
  *(v31 + 2) = v33;
  *(v25 + v21[9]) = v27;
  *v8 = sub_1C5BC8FC4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197540, &qword_1C5BE7888);
  v35 = v65;
  v36 = v61;
  v37 = v62;
  sub_1C5AE2860(v61, v62, &v8[*(v34 + 44)]);
  sub_1C5BC9134();
  sub_1C5BC8F94();
  v67 = v36;
  v68 = v37;
  v69 = v35;
  v38 = v64;
  sub_1C5BCA2C4();
  sub_1C5924EF4(v8, &qword_1EC197500, &unk_1C5BE7770);
  v39 = *MEMORY[0x1E697E720];
  v40 = sub_1C5BC89B4();
  (*(*(v40 - 8) + 104))(v38, v39, v40);
  sub_1C5AE8518(&qword_1EDA46688, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v42 = v52;
    v43 = v58;
    v44 = v53;
    v45 = v66;
    sub_1C5BC9F54();
    sub_1C5924EF4(v38, &qword_1EC192838, &qword_1C5BD5C80);
    (*(v57 + 8))(v45, v42);
    v74 = v42;
    v75 = v43;
    v76 = v44;
    v77 = v15;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v47 = v56;
    sub_1C593EDC0(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v48 = v54;
    v49 = *(v54 + 8);
    v49(v18, OpaqueTypeMetadata2);
    v50 = v55;
    sub_1C5AE8560(v25, v55, type metadata accessor for CapsuleProgress);
    v74 = v50;
    (*(v48 + 16))(v18, v47, OpaqueTypeMetadata2);
    v75 = v18;
    v72 = v21;
    v73 = OpaqueTypeMetadata2;
    v70 = sub_1C5AE8518(&qword_1EC197548, type metadata accessor for CapsuleProgress, &unk_1C5BE7A78);
    v71 = OpaqueTypeConformance2;
    sub_1C594226C(&v74, 2uLL, &v72);
    v49(v47, OpaqueTypeMetadata2);
    sub_1C5AE8458(v25, type metadata accessor for CapsuleProgress);
    v49(v18, OpaqueTypeMetadata2);
    return sub_1C5AE8458(v50, type metadata accessor for CapsuleProgress);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5AE2860@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a4;
  v6 = sub_1C5BC9584();
  v30 = *(v6 - 8);
  v7 = v30;
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197550, &qword_1C5BE7890);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v20 = type metadata accessor for ContentBelowSliderStyle(0, a2, a3, v19);
  sub_1C5AE2AF0(v20, v18);
  sub_1C5BC95A4();
  sub_1C59400B0(v18, v15, &qword_1EC197550, &qword_1C5BE7890);
  v33 = 1;
  v21 = *(v7 + 16);
  v22 = v9;
  v23 = v31;
  v21(v9, v12, v31);
  v24 = v32;
  sub_1C59400B0(v15, v32, &qword_1EC197550, &qword_1C5BE7890);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197558, &qword_1C5BE7898);
  v26 = v24 + *(v25 + 48);
  v27 = v33;
  *v26 = 0;
  *(v26 + 8) = v27;
  v21((v24 + *(v25 + 64)), v22, v23);
  v28 = *(v30 + 8);
  v28(v12, v23);
  sub_1C5924EF4(v18, &qword_1EC197550, &qword_1C5BE7890);
  v28(v22, v23);
  return sub_1C5924EF4(v15, &qword_1EC197550, &qword_1C5BE7890);
}

uint64_t sub_1C5AE2AF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = sub_1C5BC9594();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197560, &qword_1C5BE78A0);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v29 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197568, &unk_1C5BE78A8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v29 - v9;
  v11 = sub_1C5BC8F34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + *(a1 + 44);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    if ((v16 & 1) == 0)
    {
LABEL_3:
      sub_1C5BC95B4();
      v17 = v33;
      (*(v4 + 16))(v8, v6, v33);
      swift_storeEnumTagMultiPayload();
      sub_1C5AE85C8();
      sub_1C5AE8518(&qword_1EC197578, MEMORY[0x1E697C928], MEMORY[0x1E697C920]);
      sub_1C5BC92C4();
      return (*(v4 + 8))(v6, v17);
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    v29 = v10;
    v20 = v19;
    sub_1C5BC7C54();

    v10 = v29;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v21 = sub_1C5942458(v16, 0);
    (*(v12 + 8))(v14, v11, v21);
    if (v34 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_1C5BC84B4();
  v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F58, &unk_1C5BE28A0) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F60, &unk_1C5BE78C0) + 28);
  v24 = *MEMORY[0x1E697DC08];
  v25 = sub_1C5BC82A4();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  *v22 = swift_getKeyPath(byte_1C5BE78D0);
  v26 = sub_1C5BCA494();
  KeyPath = swift_getKeyPath(aP_30);
  v28 = &v10[*(v31 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  sub_1C59400B0(v10, v8, &qword_1EC197568, &unk_1C5BE78A8);
  swift_storeEnumTagMultiPayload();
  sub_1C5AE85C8();
  sub_1C5AE8518(&qword_1EC197578, MEMORY[0x1E697C928], MEMORY[0x1E697C920]);
  sub_1C5BC92C4();
  return sub_1C5924EF4(v10, &qword_1EC197568, &unk_1C5BE78A8);
}

uint64_t sub_1C5AE2FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContentBelowSliderStyle(0, v9, v10, v11);
  sub_1C593EDC0(a1 + *(v12 + 36), a2, a3);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1C5AE30A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContentBelowSliderStyle(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C5AE3120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v37 = a8;
  v33 = a5;
  v35 = a9;
  v36 = a11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528, &qword_1C5BE77B0);
  MEMORY[0x1EEE9AC00](v34);
  v19 = &v32[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32[-v21];
  v23 = type metadata accessor for DraggableViewModifier(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v25 = a1;
  *(v25 + 1) = a2;
  *(v25 + 2) = a10;
  v25[24] = a3;
  *(v25 + 4) = a4;
  v25[40] = v33 & 1;
  *(v25 + 6) = a6;
  *(v25 + 7) = a7;
  v38 = 0;

  sub_1C5974668(a6, a7);
  sub_1C5BCA684();
  v26 = v40;
  *(v25 + 8) = v39;
  *(v25 + 9) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530, &qword_1C5BE77B8);
  (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  sub_1C59400B0(v22, v19, &qword_1EC197528, &qword_1C5BE77B0);
  sub_1C5BCA684();
  sub_1C5924EF4(v22, &qword_1EC197528, &qword_1C5BE77B0);
  v28 = &v25[v23[10]];
  *v28 = swift_getKeyPath(asc_1C5BE7610);
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v28[32] = 0;
  v29 = v23[11];
  *&v25[v29] = swift_getKeyPath(byte_1C5BE77C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8, &qword_1C5BE77F0);
  swift_storeEnumTagMultiPayload();
  v30 = &v25[v23[12]];
  *v30 = swift_getKeyPath(aX_12);
  v30[8] = 0;
  MEMORY[0x1C694E550](v25, v37, v23, v36);
  return sub_1C5AE8458(v25, type metadata accessor for DraggableViewModifier);
}

double sub_1C5AE33FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath(byte_1C5BE7788);
  sub_1C5BC9DF4();

  return result;
}

uint64_t sub_1C5AE3470@<X0>(char a1@<W0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  *a5 = a1;
  v7 = type metadata accessor for ContentBelowSliderStyle(0, a3, a4, a3);
  a2();
  v8 = &a5[*(v7 + 40)];
  sub_1C5BCA684();
  *v8 = v11;
  *(v8 + 1) = v12;
  v9 = &a5[*(v7 + 44)];
  result = swift_getKeyPath(byte_1C5BE7638);
  *v9 = result;
  v9[8] = 0;
  return result;
}

double sub_1C5AE3520()
{
  sub_1C5AE84B8();
  sub_1C5BC8F44();
  return v1;
}

double sub_1C5AE355C(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath(byte_1C5BE7638);
  sub_1C5BC9DF4();

  return result;
}

uint64_t sub_1C5AE35D0()
{
  sub_1C5AE37D0();
  sub_1C5BC8F44();
  return v1;
}

void sub_1C5AE360C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_getKeyPath(asc_1C5BE7610);
  sub_1C5BC9DF4();
}

double sub_1C5AE36A0()
{
  sub_1C5AE377C();
  sub_1C5BC8F44();
  return v1;
}

double sub_1C5AE36E0@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5AE377C();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C5AE377C()
{
  result = qword_1EC197478;
  if (!qword_1EC197478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197478);
  }

  return result;
}

unint64_t sub_1C5AE37D0()
{
  result = qword_1EDA4DDF8;
  if (!qword_1EDA4DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DDF8);
  }

  return result;
}

void sub_1C5AE385C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C5AE8BA4(319, &qword_1EDA4E188, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1C5AE8BA4(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5AE3954(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v9);
    if (v9 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v7 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v9];
    if (a1[v9])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  v18 = &a1[v6 + 1] & ~v6;
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(v18);
  }

  v19 = *(((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  v20 = v19 - 1;
  if (v20 < 0)
  {
    v20 = -1;
  }

  return (v20 + 1);
}

void sub_1C5AE3AD8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((v10 + ((v9 + 1) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 1] & ~v9;
      if (v7 < 0x7FFFFFFE)
      {
        v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = a2 - 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          v20[1] = a2;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((v10 + ((v9 + 1) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t sub_1C5AE3CE4@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v87 = a1;
  v84 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D38, &qword_1C5BD3EF0);
  v75 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v72 - v4;
  v5 = type metadata accessor for DraggableViewModifier(0);
  v6 = v5 - 8;
  v86 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v85 = v7;
  v88 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1C5BC8F34();
  v8 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975D8, &qword_1C5BE7B90);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975E0, &qword_1C5BE7B98);
  v73 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v89 = &v72 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975E8, &qword_1C5BE7BA0);
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975F0, &qword_1C5BE7BA8);
  v82 = *(v16 - 8);
  v83 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528, &qword_1C5BE77B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v72 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);
  sub_1C5BCA694();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530, &qword_1C5BE77B8);
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  sub_1C5924EF4(v20, &qword_1EC197528, &qword_1C5BE77B0);
  v23 = *(v6 + 48);
  v24 = v3;
  v25 = v3 + v23;
  v27 = *v25;
  v26 = *(v25 + 16);
  LOBYTE(v25) = *(v25 + 32);
  v90 = v27;
  v91 = v26;
  if ((v25 & 1) == 0)
  {
    v28 = v27;

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v30 = sub_1C5AE8EE4(v28, *(&v90 + 1), v91.n128_i64[0], v91.n128_i64[1], 0);
    (*(v8 + 8))(v10, v72, v30);
    v90 = v94;
    v91 = v95;
  }

  v31 = v22 != 1;
  v32 = sub_1C5BC9894();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975F8, &qword_1C5BE7BB0);
  v34 = v13;
  (*(*(v33 - 8) + 16))(v13, v87, v33);
  v35 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197600, &qword_1C5BE7BB8) + 36)];
  *v35 = v32;
  v36 = v90;
  *(v35 + 24) = v91;
  *(v35 + 8) = v36;
  v35[40] = 0;
  v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197608, &unk_1C5BE7BC0) + 36)] = 0;
  v87 = type metadata accessor for DraggableViewModifier;
  v37 = v88;
  sub_1C5AE8560(v24, v88, type metadata accessor for DraggableViewModifier);
  v91.n128_u64[0] = *(v86 + 80);
  v85 += (v91.n128_u64[0] + 16) & ~v91.n128_u64[0];
  v38 = (v91.n128_u64[0] + 16) & ~v91.n128_u64[0];
  *&v90 = v38;
  v39 = swift_allocObject();
  v86 = type metadata accessor for DraggableViewModifier;
  sub_1C5AE9678(v37, v39 + v38, type metadata accessor for DraggableViewModifier);
  v40 = (v34 + *(v11 + 36));
  *v40 = sub_1C5941E6C;
  v40[1] = 0;
  v40[2] = sub_1C5AE8EF0;
  v40[3] = v39;
  v41 = v74;
  sub_1C5AE4818(v74);
  sub_1C5BC8334();
  v72 = sub_1C5AE8F1C();
  v42 = sub_1C5924F54(&qword_1EDA466B0, &qword_1EC191D38, &qword_1C5BD3EF0, MEMORY[0x1E697E238]);
  v43 = v79;
  sub_1C5BCA0B4();
  (*(v75 + 8))(v41, v43);
  sub_1C5924EF4(v34, &qword_1EC1975D8, &qword_1C5BE7B90);
  LOBYTE(v92) = v31;
  v44 = v37;
  v45 = v37;
  v46 = v87;
  sub_1C5AE8560(v24, v45, v87);
  v47 = v85;
  v48 = swift_allocObject();
  v49 = v44;
  v50 = v86;
  sub_1C5AE9678(v49, v48 + v90, v86);
  *(v48 + v47) = v31;
  *&v94 = v11;
  *(&v94 + 1) = v43;
  v95.n128_u64[0] = v72;
  v95.n128_u64[1] = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x1E69E6370];
  v53 = v76;
  v54 = v77;
  v55 = v89;
  sub_1C5BCA344();

  (*(v73 + 8))(v55, v54);
  v56 = *(v24 + 40);
  v92 = *(v24 + 32);
  v93 = v56;
  v57 = v88;
  sub_1C5AE8560(v24, v88, v46);
  v58 = swift_allocObject();
  v59 = v57;
  sub_1C5AE9678(v57, v58 + v90, v50);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790, &qword_1C5BE0E40);
  *&v94 = v54;
  *(&v94 + 1) = v52;
  v95.n128_u64[0] = OpaqueTypeConformance2;
  v95.n128_u64[1] = MEMORY[0x1E69E6388];
  v61 = swift_getOpaqueTypeConformance2();
  v62 = sub_1C5AE9478();
  v64 = v80;
  v63 = v81;
  sub_1C5BCA334();

  (*(v78 + 8))(v53, v63);
  v65 = *(v24 + 8);
  v66 = *(v24 + 16);
  *&v94 = *v24;
  *(&v94 + 1) = v65;
  v95.n128_u64[0] = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
  MEMORY[0x1C694EA50](&v92, v67);
  sub_1C5AE8560(v24, v57, v87);
  v68 = swift_allocObject();
  sub_1C5AE9678(v59, v68 + v90, v86);
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1C5AE94FC;
  *(v69 + 24) = v68;
  *&v94 = v63;
  *(&v94 + 1) = v60;
  v95.n128_u64[0] = v61;
  v95.n128_u64[1] = v62;
  swift_getOpaqueTypeConformance2();
  v70 = v83;
  sub_1C5BCA334();

  return (*(v82 + 8))(v64, v70);
}

uint64_t sub_1C5AE4818@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for DraggableViewModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v20[0] = v5;
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC9304();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C5BC82F4();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D30, &qword_1C5BD3EE8);
  v12 = *(v11 - 8);
  v22 = v11;
  v23 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  sub_1C5BC9474();
  sub_1C5BC82B4();
  sub_1C5AE8560(v2, v6, type metadata accessor for DraggableViewModifier);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1C5AE9678(v6, v16 + v15, type metadata accessor for DraggableViewModifier);
  sub_1C5AE8518(&qword_1EDA467D8, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  sub_1C5AE8518(&qword_1EDA467E0, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  sub_1C5BCA8E4();

  (*(v21 + 8))(v10, v8);
  sub_1C5AE8560(v20[1], v6, type metadata accessor for DraggableViewModifier);
  v17 = swift_allocObject();
  sub_1C5AE9678(v6, v17 + v15, type metadata accessor for DraggableViewModifier);
  sub_1C5924F54(&qword_1EDA46438, &qword_1EC191D30, &qword_1C5BD3EE8, MEMORY[0x1E697E8D0]);
  v18 = v22;
  sub_1C5BCA8D4();

  return (*(v23 + 8))(v14, v18);
}

void sub_1C5AE4C28(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = sub_1C5BC8F34();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC89D4();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530, &qword_1C5BE77B8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = (&v53 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528, &qword_1C5BE77B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v53 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  v27 = *a2;
  v28 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return;
    }

    goto LABEL_6;
  }

  v29 = type metadata accessor for DraggableViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);
  sub_1C5BCA694();
  v30 = (*(v13 + 48))(v26, 1, v12);
  sub_1C5924EF4(v26, &qword_1EC197528, &qword_1C5BE77B0);
  if (v30 == 1)
  {
    if ((v28 & 1) == 0)
    {
LABEL_6:
      v31 = *(a3 + 1);
      v32 = *(a3 + 2);
      v62 = *a3;
      v63 = v31;
      v64 = v32;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
      MEMORY[0x1C694EA50](&v61, v33);
      *v23 = v61;
      sub_1C5BC7AB4();
      (*(v13 + 56))(v23, 0, 1, v12);
      v29 = type metadata accessor for DraggableViewModifier(0);
      sub_1C59400B0(v23, v20, &qword_1EC197528, &qword_1C5BE77B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);
      sub_1C5BCA6A4();
      sub_1C5924EF4(v23, &qword_1EC197528, &qword_1C5BE77B0);
      goto LABEL_9;
    }

LABEL_8:
    (*(v13 + 56))(v23, 1, 1, v12);
    sub_1C59400B0(v23, v20, &qword_1EC197528, &qword_1C5BE77B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);
    sub_1C5BCA6A4();
    sub_1C5924EF4(v23, &qword_1EC197528, &qword_1C5BE77B0);
    return;
  }

  if (v28)
  {
    goto LABEL_8;
  }

LABEL_9:
  type metadata accessor for DraggableViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);
  sub_1C5BCA694();
  if ((*(v13 + 48))(v17, 1, v12) == 1)
  {
    sub_1C5924EF4(v17, &qword_1EC197528, &qword_1C5BE77B0);
  }

  else
  {
    v34 = v60;
    sub_1C59E7D34(v17, v60, &qword_1EC197530, &qword_1C5BE77B8);
    v35 = v56;
    sub_1C59EFDDC(v56);
    v37 = v57;
    v36 = v58;
    v38 = v59;
    (*(v58 + 104))(v57, *MEMORY[0x1E697E7D0], v59);
    v39 = sub_1C5BC89C4();
    v40 = *(v36 + 8);
    v40(v37, v38);
    v40(v35, v38);
    if ((v39 & 1) == 0)
    {
      v27 = -v27;
    }

    v41 = *v34;
    v42 = *(a3 + 9);
    v62 = a3[8];
    v63 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
    sub_1C5BCA694();
    v43 = v61;
    v44 = a3 + *(v29 + 48);
    v45 = *v44;
    if (v44[8] == 1)
    {
      v46 = *v44;
    }

    else
    {

      sub_1C5BCB4E4();
      v47 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v48 = v53;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v49 = sub_1C5942458(v45, 0);
      (*(v54 + 8))(v48, v55, v49);
      v46 = v62;
    }

    v50 = v41 + v27 / (v43 - (v46 + v46));
    if (v50 <= 0.0)
    {
      v50 = 0.0;
    }

    v51 = *(a3 + 1);
    v52 = *(a3 + 2);
    v62 = *a3;
    v63 = v51;
    if (v50 > 1.0)
    {
      v50 = 1.0;
    }

    v64 = v52;
    v61 = v50;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
    sub_1C5BCA824();
    sub_1C5924EF4(v34, &qword_1EC197530, &qword_1C5BE77B8);
  }
}

void sub_1C5AE534C(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v3 = sub_1C5BC8F34();
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC89D4();
  v54 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528, &qword_1C5BE77B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530, &qword_1C5BE77B8);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  if (*(a2 + 40) == 1)
  {
    v51 = (&v46 - v22);
    v47 = v3;
    v50 = type metadata accessor for DraggableViewModifier(0);
    v23 = *(v50 + 36);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);
    v49 = v23;
    sub_1C5BCA694();
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1C5924EF4(v19, &qword_1EC197528, &qword_1C5BE77B0);
      v24 = *(a2 + 8);
      v25 = *(a2 + 16);
      v57 = *a2;
      v58 = v24;
      v59 = v25;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
      MEMORY[0x1C694EA50](&v56, v26);
      *v16 = v56;
      sub_1C5BC82D4();
      (*(v21 + 56))(v16, 0, 1, v20);
      sub_1C59400B0(v16, v13, &qword_1EC197528, &qword_1C5BE77B0);
      sub_1C5BCA6A4();
      sub_1C5924EF4(v16, &qword_1EC197528, &qword_1C5BE77B0);
    }

    else
    {
      v27 = v51;
      sub_1C59E7D34(v19, v51, &qword_1EC197530, &qword_1C5BE77B8);
      v28 = v50;
      sub_1C59EFDDC(v10);
      v29 = v54;
      (*(v54 + 104))(v7, *MEMORY[0x1E697E7D0], v5);
      v30 = sub_1C5BC89C4();
      v31 = *(v29 + 8);
      v31(v7, v5);
      v31(v10, v5);
      sub_1C5BC82C4();
      if (v30)
      {
        v33 = v32;
      }

      else
      {
        v33 = -v32;
      }

      v34 = *v27;
      v35 = *(a2 + 72);
      v57 = *(a2 + 64);
      v58 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
      sub_1C5BCA694();
      v36 = v56;
      v37 = a2 + *(v28 + 48);
      v38 = *v37;
      if (*(v37 + 8) == 1)
      {
        v39 = *v37;
      }

      else
      {

        sub_1C5BCB4E4();
        v40 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v41 = v52;
        sub_1C5BC8F24();
        swift_getAtKeyPath();
        v42 = sub_1C5942458(v38, 0);
        (*(v53 + 8))(v41, v47, v42);
        v39 = v57;
      }

      v43 = v34 + v33 / (v36 - (v39 + v39));
      if (v43 > 1.0)
      {
        v43 = 1.0;
      }

      v44 = *(a2 + 8);
      v45 = *(a2 + 16);
      v57 = *a2;
      v58 = v44;
      if (v43 <= 0.0)
      {
        v43 = 0.0;
      }

      v59 = v45;
      v56 = v43;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
      sub_1C5BCA824();
      sub_1C5924EF4(v51, &qword_1EC197530, &qword_1C5BE77B8);
    }
  }
}

void sub_1C5AE592C(uint64_t a1, char *a2)
{
  v95 = a1;
  v3 = sub_1C5BC89D4();
  v91 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v79 - v6;
  v92 = sub_1C5BC8F34();
  v94 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC7AC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528, &qword_1C5BE77B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v79 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530, &qword_1C5BE77B8);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  if (a2[40] == 1)
  {
    if (a2[24] != 1)
    {
LABEL_15:
      (*(v22 + 56))(v17, 1, 1, v21);
      type metadata accessor for DraggableViewModifier(0);
      sub_1C59400B0(v17, v14, &qword_1EC197528, &qword_1C5BE77B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);
      sub_1C5BCA6A4();
      sub_1C5924EF4(v17, &qword_1EC197528, &qword_1C5BE77B0);
      return;
    }

    v88 = &v79 - v23;
    v86 = v3;
    v87 = type metadata accessor for DraggableViewModifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);
    sub_1C5BCA694();
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      v24 = &qword_1EC197528;
      v25 = &qword_1C5BE77B0;
      v26 = v20;
LABEL_5:
      sub_1C5924EF4(v26, v24, v25);
      goto LABEL_15;
    }

    v85 = a2;
    v27 = v20;
    v28 = v88;
    sub_1C59E7D34(v27, v88, &qword_1EC197530, &qword_1C5BE77B8);
    sub_1C5BC82D4();
    sub_1C5BC7A74();
    v30 = v29;
    (*(v9 + 8))(v11, v8);
    if (v30 >= 0.2)
    {
      v41 = v28;
    }

    else
    {
      sub_1C5BC82C4();
      if (fabs(v31) < 3.0)
      {
        v32 = v85;
        v33 = *(v85 + 8);
        v34 = *(v85 + 9);
        v96 = v33;
        v97 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
        sub_1C5BCA694();
        if (v99 > 0.0)
        {
          v96 = v33;
          v97 = v34;
          sub_1C5BCA694();
          v35 = v99;
          v36 = &v32[*(v87 + 40)];
          v38 = *v36;
          v37 = *(v36 + 1);
          v39 = *(v36 + 2);
          v40 = *(v36 + 3);
          v81 = v36[32];
          v84 = *&v37;
          v80 = v38;
          v83 = v39;
          v82 = v40;
          if (v81 == 1)
          {
            v45 = *&v37;
            v50 = *&v40;
            v48 = v92;
          }

          else
          {

            sub_1C5BCB4E4();
            v42 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v43 = v93;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            v44 = sub_1C5AE8EE4(v38, v37, v83, v82, 0);
            v79 = *(v94 + 8);
            v79(v43, v92, v44);
            v45 = v97;

            sub_1C5BCB4E4();
            v46 = sub_1C5BC9844();
            sub_1C5BC7C54();

            sub_1C5BC8F24();
            swift_getAtKeyPath();
            v47 = v38;
            v48 = v92;
            v49 = sub_1C5AE8EE4(v47, *&v84, v83, v82, 0);
            v79(v43, v48, v49);
            v50 = v98;
          }

          v51 = &v32[*(v87 + 48)];
          v52 = *v51;
          LODWORD(v95) = v51[8];
          if (v95 == 1)
          {
            v53 = *&v52;
          }

          else
          {

            sub_1C5BCB4E4();
            v54 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v55 = v93;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            v56 = sub_1C5942458(v52, 0);
            (*(v94 + 8))(v55, v48, v56);
            v53 = v96;
          }

          v57 = v35 - v45 - v50;
          v58 = v53 + v53;
          sub_1C5BC82E4();
          v60 = v59;
          if (v81)
          {
            v61 = v84;
          }

          else
          {
            v62 = v48;
            v63 = v80;

            sub_1C5BCB4E4();
            v64 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v65 = v93;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            v66 = v63;
            v48 = v62;
            v67 = sub_1C5AE8EE4(v66, *&v84, v83, v82, 0);
            (*(v94 + 8))(v65, v62, v67);
            v61 = v97;
          }

          v68 = v57 - v58;
          if (v95)
          {
            v69 = *&v52;
          }

          else
          {

            sub_1C5BCB4E4();
            v70 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v71 = v93;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            v72 = sub_1C5942458(v52, 0);
            (*(v94 + 8))(v71, v48, v72);
            v69 = v96;
          }

          v73 = v60 - v61 - v69;
          v74 = v89;
          sub_1C59EFDDC(v89);
          v76 = v90;
          v75 = v91;
          v77 = v86;
          (*(v91 + 104))(v90, *MEMORY[0x1E697E7D0], v86);
          LODWORD(v95) = sub_1C5BC89C4();
          v78 = *(v75 + 8);
          v78(v76, v77);
          v78(v74, v77);
          if ((v95 & 1) == 0)
          {
            v73 = v68 - v73;
          }

          if (qword_1EC190860 != -1)
          {
            swift_once();
          }

          MEMORY[0x1EEE9AC00](qword_1EC1A6D08);
          *(&v79 - 4) = v32;
          *(&v79 - 3) = v73;
          *(&v79 - 2) = v68;
          sub_1C5BC87F4();
        }

        v24 = &qword_1EC197530;
        v25 = &qword_1C5BE77B8;
        v26 = v88;
        goto LABEL_5;
      }

      v41 = v88;
    }

    sub_1C5924EF4(v41, &qword_1EC197530, &qword_1C5BE77B8);
    goto LABEL_15;
  }
}

void sub_1C5AE641C(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528, &qword_1C5BE77B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  type metadata accessor for DraggableViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);
  sub_1C5BCA694();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530, &qword_1C5BE77B8);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_1C5924EF4(v6, &qword_1EC197528, &qword_1C5BE77B0);
  if ((a2 == 1.0 || a2 == 0.0) && v8 != 1 && a1 != a2)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
    [v12 impactOccurred];
  }
}
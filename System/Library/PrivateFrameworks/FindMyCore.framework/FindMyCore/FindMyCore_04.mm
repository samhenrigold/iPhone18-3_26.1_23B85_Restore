unint64_t sub_24ADDD720()
{
  v1 = *v0;
  v2 = 0x4479636E65636572;
  v3 = 0xD000000000000018;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6F6C61646E617473;
  if (v1 != 4)
  {
    v4 = 0x6D6574497473696CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x727544646C4F7369;
  if (v1 != 2)
  {
    v5 = 0x4C6E776F6E6B6E75;
  }

  if (*v0)
  {
    v2 = 0x72754477654E7369;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ADDD86C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ADDFB2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ADDD894(uint64_t a1)
{
  v2 = sub_24ADDF69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADDD8D0(uint64_t a1)
{
  v2 = sub_24ADDF69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindMyRelativeDate.RecencyKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9DA0, &qword_24AE0FA00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[6];
  v20[9] = v1[7];
  v20[10] = v11;
  v12 = v1[8];
  v20[7] = v1[9];
  v20[8] = v12;
  v13 = v1[11];
  v20[5] = v1[10];
  v20[6] = v13;
  v14 = v1[13];
  v20[3] = v1[12];
  v20[4] = v14;
  v15 = v1[15];
  v20[1] = v1[14];
  v20[2] = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADDF69C();
  sub_24AE09888();
  v26 = v8;
  v27 = v7;
  v28 = 0;
  v16 = v25;
  sub_24AE09768();
  if (v16)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = v21;
  v17 = v22;
  v26 = v24;
  v27 = v23;
  v28 = 1;
  sub_24AE09768();
  v26 = v17;
  v27 = v18;
  v28 = 2;
  sub_24AE09768();
  LOBYTE(v26) = 3;
  sub_24AE09748();
  LOBYTE(v26) = 4;
  sub_24AE09748();
  LOBYTE(v26) = 5;
  sub_24AE09748();
  LOBYTE(v26) = 6;
  sub_24AE09748();
  LOBYTE(v26) = 7;
  sub_24AE09748();
  return (*(v4 + 8))(v6, v3);
}

uint64_t FindMyRelativeDate.RecencyKey.hash(into:)(uint64_t a1)
{
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();

  return sub_24AE09048();
}

uint64_t FindMyRelativeDate.RecencyKey.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t FindMyRelativeDate.RecencyKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9DB0, &qword_24AE0FA08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_24ADDF69C();
  sub_24AE09878();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  v10 = v6;
  LOBYTE(v55[0]) = 0;
  v11 = v5;
  sub_24AE096E8();
  v12 = v62;
  v13 = v63;
  LOBYTE(v55[0]) = 1;
  sub_24AE096E8();
  v53 = v12;
  v14 = v62;
  v15 = v63;
  LOBYTE(v55[0]) = 2;
  sub_24AE096E8();
  *&v52 = v14;
  *(&v52 + 1) = v15;
  v16 = v62;
  v17 = v63;
  LOBYTE(v62) = 3;
  v48 = sub_24AE096C8();
  v49 = v17;
  v51 = v18;
  LOBYTE(v62) = 4;
  v19 = sub_24AE096C8();
  v50 = v20;
  v21 = v19;
  LOBYTE(v62) = 5;
  v47 = 0;
  v44 = sub_24AE096C8();
  v45 = v21;
  v46 = v16;
  v23 = v22;
  LOBYTE(v62) = 6;
  v24 = sub_24AE096C8();
  v26 = v25;
  v43 = v24;
  v77 = 7;
  v42 = sub_24AE096C8();
  v47 = 0;
  v28 = v27;
  (*(v10 + 8))(v8, v11);
  *&v55[0] = v53;
  *(&v55[0] + 1) = v13;
  v29 = v26;
  v41 = v26;
  v31 = v51;
  v30 = v52;
  v55[1] = v52;
  *&v56 = v46;
  *(&v56 + 1) = v49;
  *&v57 = v48;
  *(&v57 + 1) = v51;
  v32 = v50;
  *&v58 = v45;
  *(&v58 + 1) = v50;
  *&v59 = v44;
  *(&v59 + 1) = v23;
  v33 = v42;
  *&v60 = v43;
  *(&v60 + 1) = v29;
  *&v61 = v42;
  *(&v61 + 1) = v28;
  v34 = v55[0];
  v35 = v52;
  v36 = v57;
  a2[2] = v56;
  a2[3] = v36;
  *a2 = v34;
  a2[1] = v35;
  v37 = v58;
  v38 = v59;
  v39 = v61;
  a2[6] = v60;
  a2[7] = v39;
  a2[4] = v37;
  a2[5] = v38;
  sub_24ADDC298(v55, &v62);
  __swift_destroy_boxed_opaque_existential_0(v54);
  v62 = v53;
  v63 = v13;
  v64 = __PAIR128__(*(&v52 + 1), v30);
  v65 = v46;
  v66 = v49;
  v67 = v48;
  v68 = v31;
  v69 = v45;
  v70 = v32;
  v71 = v44;
  v72 = v23;
  v73 = v43;
  v74 = v41;
  v75 = v33;
  v76 = v28;
  return sub_24ADDC350(&v62);
}

uint64_t sub_24ADDE2B0(uint64_t a1)
{
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();

  return sub_24AE09048();
}

uint64_t sub_24ADDE39C(uint64_t a1)
{
  sub_24AE09838();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t FindMyRelativeDate.hash(into:)(uint64_t a1)
{
  sub_24AE088E8();
  sub_24ADDF8F0(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24AE08EB8();
  type metadata accessor for FindMyRelativeDate(0);
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();

  return sub_24AE09048();
}

uint64_t FindMyRelativeDate.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE088E8();
  sub_24ADDF8F0(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24AE08EB8();
  type metadata accessor for FindMyRelativeDate(0);
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADDE740(uint64_t a1, uint64_t a2)
{
  sub_24AE088E8();
  sub_24ADDF8F0(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24AE08EB8();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();

  return sub_24AE09048();
}

uint64_t sub_24ADDE88C(uint64_t a1, uint64_t a2)
{
  sub_24AE09838();
  sub_24AE088E8();
  sub_24ADDF8F0(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24AE08EB8();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  return sub_24AE09868();
}

void static FindMyRelativeDate.RecencyKey.live(recencyDuration:isNewDuration:isOldDuration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v8 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v9 = v8;
    v10 = v9;
  }

  else
  {
    v11 = objc_opt_self();
    sub_24AE08288();
    v10 = [v11 mainBundle];
    v9 = 0;
  }

  v12 = v9;
  v13 = sub_24AE08F88();
  v14 = sub_24AE08F88();
  v15 = [v10 localizedStringForKey:v13 value:0 table:v14];

  v16 = sub_24AE08FB8();
  v64 = v17;
  v65 = v16;

  v18 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v19 = v18;
    v20 = v19;
  }

  else
  {
    v21 = objc_opt_self();
    sub_24AE08288();
    v20 = [v21 mainBundle];
    v19 = 0;
  }

  v22 = v19;
  v23 = sub_24AE08F88();
  v24 = sub_24AE08F88();
  v25 = [v20 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_24AE08FB8();
  v62 = v27;
  v63 = v26;

  v28 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v29 = v28;
    v30 = v29;
  }

  else
  {
    v31 = objc_opt_self();
    sub_24AE08288();
    v30 = [v31 mainBundle];
    v29 = 0;
  }

  v32 = v29;
  v33 = sub_24AE08F88();
  v34 = sub_24AE08F88();
  v35 = [v30 localizedStringForKey:v33 value:0 table:v34];

  v36 = sub_24AE08FB8();
  v60 = v37;
  v61 = v36;

  v38 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v39 = v38;
    v40 = v39;
  }

  else
  {
    v41 = objc_opt_self();
    sub_24AE08288();
    v40 = [v41 mainBundle];
    v39 = 0;
  }

  v42 = v39;
  v43 = sub_24AE08F88();
  v44 = sub_24AE08F88();
  v45 = [v40 0x278FFEE54];

  v46 = sub_24AE08FB8();
  v48 = v47;

  v49 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v50 = v49;
    v51 = v50;
  }

  else
  {
    v52 = objc_opt_self();
    sub_24AE08288();
    v51 = [v52 mainBundle];
    v50 = 0;
  }

  v53 = v50;
  v54 = sub_24AE08F88();
  v55 = sub_24AE08F88();
  v56 = [v51 0x278FFEE54];

  v57 = sub_24AE08FB8();
  v59 = v58;

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  a7[6] = v65;
  a7[7] = v64;
  a7[8] = v63;
  a7[9] = v62;
  a7[10] = v61;
  a7[11] = v60;
  a7[12] = v46;
  a7[13] = v48;
  a7[14] = v57;
  a7[15] = v59;
}

double sub_24ADDEF04()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v56 = v9;
  v57 = v8;

  v10 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v11 = v10;
    v12 = v11;
  }

  else
  {
    v13 = objc_opt_self();
    sub_24AE08288();
    v12 = [v13 mainBundle];
    v11 = 0;
  }

  v14 = v11;
  v15 = sub_24AE08F88();
  v16 = sub_24AE08F88();
  v17 = [v12 localizedStringForKey:v15 value:0 table:v16];

  v18 = sub_24AE08FB8();
  v54 = v19;
  v55 = v18;

  v20 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v21 = v20;
    v22 = v21;
  }

  else
  {
    v23 = objc_opt_self();
    sub_24AE08288();
    v22 = [v23 mainBundle];
    v21 = 0;
  }

  v24 = v21;
  v25 = sub_24AE08F88();
  v26 = sub_24AE08F88();
  v27 = [v22 localizedStringForKey:v25 value:0 table:v26];

  v28 = sub_24AE08FB8();
  v30 = v29;

  v31 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v32 = v31;
    v33 = v32;
  }

  else
  {
    v34 = objc_opt_self();
    sub_24AE08288();
    v33 = [v34 mainBundle];
    v32 = 0;
  }

  v35 = v32;
  v36 = sub_24AE08F88();
  v37 = sub_24AE08F88();
  v38 = [v33 localizedStringForKey:v36 value:0 table:v37];

  v39 = sub_24AE08FB8();
  v41 = v40;

  v42 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v43 = v42;
    v44 = v43;
  }

  else
  {
    v45 = objc_opt_self();
    sub_24AE08288();
    v44 = [v45 mainBundle];
    v43 = 0;
  }

  v46 = v43;
  v47 = sub_24AE08F88();
  v48 = sub_24AE08F88();
  v49 = [v44 localizedStringForKey:v47 value:0 table:v48];

  v50 = sub_24AE08FB8();
  v52 = v51;

  result = -3.3178167e-146;
  xmmword_27EFA9D18 = xmmword_24AE0F9F0;
  unk_27EFA9D28 = 0u;
  xmmword_27EFA9D38 = 0u;
  qword_27EFA9D48 = v57;
  unk_27EFA9D50 = v56;
  *&xmmword_27EFA9D58 = v55;
  *(&xmmword_27EFA9D58 + 1) = v54;
  qword_27EFA9D68 = v28;
  unk_27EFA9D70 = v30;
  *&xmmword_27EFA9D78 = v39;
  *(&xmmword_27EFA9D78 + 1) = v41;
  qword_27EFA9D88 = v50;
  unk_27EFA9D90 = v52;
  return result;
}

uint64_t static FindMyRelativeDate.RecencyKey.alwaysNow.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27EFA8680 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27EFA9D58;
  v2 = *&qword_27EFA9D68;
  v11[4] = xmmword_27EFA9D58;
  v11[5] = *&qword_27EFA9D68;
  v3 = xmmword_27EFA9D78;
  v4 = *&qword_27EFA9D88;
  v11[6] = xmmword_27EFA9D78;
  v11[7] = *&qword_27EFA9D88;
  v5 = unk_27EFA9D28;
  v11[0] = xmmword_27EFA9D18;
  v11[1] = unk_27EFA9D28;
  v6 = xmmword_27EFA9D38;
  v7 = *&qword_27EFA9D48;
  v11[2] = xmmword_27EFA9D38;
  v11[3] = *&qword_27EFA9D48;
  *a1 = xmmword_27EFA9D18;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_24ADDC298(v11, &v10);
}

uint64_t _s10FindMyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v21 = a1[7];
  v22 = a1[6];
  v20 = a1[8];
  v19 = a1[9];
  v15 = a1[11];
  v16 = a1[10];
  v11 = a1[13];
  v12 = a1[12];
  v7 = a1[15];
  v8 = a1[14];
  v3 = a2[6];
  v2 = a2[7];
  v17 = a2[9];
  v18 = a2[8];
  v13 = a2[11];
  v14 = a2[10];
  v9 = a2[13];
  v10 = a2[12];
  v5 = a2[15];
  v6 = a2[14];
  if ((sub_24AE09978() & 1) == 0 || (sub_24AE09978() & 1) == 0 || (sub_24AE09978() & 1) == 0 || (v22 != v3 || v21 != v2) && (sub_24AE097C8() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_24AE097C8() & 1) == 0 || (v16 != v14 || v15 != v13) && (sub_24AE097C8() & 1) == 0 || (v12 != v10 || v11 != v9) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v6 && v7 == v5)
  {
    return 1;
  }

  return sub_24AE097C8();
}

unint64_t sub_24ADDF69C()
{
  result = qword_27EFA9DA8;
  if (!qword_27EFA9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DA8);
  }

  return result;
}

uint64_t _s10FindMyCore0aB12RelativeDateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_24AE088C8())
  {
    MyRelativeDate = type metadata accessor for FindMyRelativeDate(0);
    v5 = (a1 + *(MyRelativeDate + 20));
    v6 = v5[5];
    v7 = v5[3];
    v44 = v5[4];
    v45 = v6;
    v8 = v5[5];
    v9 = v5[7];
    v46 = v5[6];
    v47 = v9;
    v10 = v5[1];
    v11 = v5[3];
    v42 = v5[2];
    v43 = v11;
    v12 = v5[1];
    v41[0] = *v5;
    v41[1] = v12;
    v37 = v44;
    v38 = v8;
    v13 = v5[7];
    v39 = v46;
    v40 = v13;
    v35 = v42;
    v36 = v7;
    v33 = v41[0];
    v34 = v10;
    v14 = (a2 + *(MyRelativeDate + 20));
    v15 = v14[5];
    v16 = v14[7];
    v53 = v14[6];
    v54 = v16;
    v17 = v14[5];
    v18 = v14[3];
    v51 = v14[4];
    v52 = v17;
    v19 = v14[1];
    v20 = v14[3];
    v49 = v14[2];
    v50 = v20;
    v21 = v14[1];
    v48[0] = *v14;
    v48[1] = v21;
    v29 = v51;
    v30 = v15;
    v22 = v14[7];
    v31 = v53;
    v32 = v22;
    v25 = v48[0];
    v26 = v19;
    v27 = v49;
    v28 = v18;
    sub_24ADDC298(v41, v56);
    sub_24ADDC298(v48, v56);
    MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0 = _s10FindMyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0(&v33, &v25);
    v55[4] = v29;
    v55[5] = v30;
    v55[6] = v31;
    v55[7] = v32;
    v55[0] = v25;
    v55[1] = v26;
    v55[2] = v27;
    v55[3] = v28;
    sub_24ADDC350(v55);
    v56[4] = v37;
    v56[5] = v38;
    v56[6] = v39;
    v56[7] = v40;
    v56[0] = v33;
    v56[1] = v34;
    v56[2] = v35;
    v56[3] = v36;
    sub_24ADDC350(v56);
  }

  else
  {
    MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0 = 0;
  }

  return MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0 & 1;
}

unint64_t sub_24ADDF854()
{
  result = qword_27EFA9DC0;
  if (!qword_27EFA9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DC0);
  }

  return result;
}

uint64_t sub_24ADDF8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_24ADDF95C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_24ADDF9A4(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_24ADDFA28()
{
  result = qword_27EFA9DD0;
  if (!qword_27EFA9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DD0);
  }

  return result;
}

unint64_t sub_24ADDFA80()
{
  result = qword_27EFA9DD8;
  if (!qword_27EFA9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DD8);
  }

  return result;
}

unint64_t sub_24ADDFAD8()
{
  result = qword_27EFA9DE0;
  if (!qword_27EFA9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DE0);
  }

  return result;
}

uint64_t sub_24ADDFB2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4479636E65636572 && a2 == 0xEF6E6F6974617275;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72754477654E7369 && a2 == 0xED00006E6F697461 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727544646C4F7369 && a2 == 0xED00006E6F697461 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C6E776F6E6B6E75 && a2 == 0xEC0000006C656261 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C61646E617473 && a2 == 0xEF6C6562614C656ELL || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6574497473696CLL && a2 == 0xED00006C6562614CLL || (sub_24AE097C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024AE136F0 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024AE13710 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24AE097C8();

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

FindMyCore::LiteContact __swiftcall LiteContact.init(_:)(CNContact a1)
{
  v3 = v1;
  v4 = [(objc_class *)a1.super.isa identifier];
  v5 = sub_24AE08FB8();
  v7 = v6;

  v3->super.isa = v5;
  v3[1].super.isa = v7;
  v3[2].super.isa = a1.super.isa;
  result.rawValue.super.isa = v10;
  result.identifier._object = v9;
  result.identifier._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_24ADDFE60()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "LiteContact(");
  MEMORY[0x24C230FB0](v1, v2);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  return v4[0];
}

uint64_t static LiteContact.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  sub_24ADDFF38();
  return sub_24AE09418() & 1;
}

unint64_t sub_24ADDFF38()
{
  result = qword_27EFA9DE8;
  if (!qword_27EFA9DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFA9DE8);
  }

  return result;
}

uint64_t LiteContact.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t sub_24ADE0018()
{
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t sub_24ADE00AC(uint64_t a1)
{
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09428();
  return sub_24AE09868();
}

unint64_t sub_24ADE010C()
{
  result = qword_27EFA9DF0;
  if (!qword_27EFA9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DF0);
  }

  return result;
}

uint64_t sub_24ADE0160(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  sub_24ADDFF38();
  return sub_24AE09418() & 1;
}

uint64_t Location.distance(from:)(void *a1)
{
  [*v1 distanceFromLocation_];
  v2 = [objc_opt_self() meters];
  sub_24ADD51D0(0, &qword_27EFA9C38, 0x277CCAE20);

  return sub_24AE085E8();
}

void Location.mutableCoordinate.setter(double a1, double a2)
{
  v3 = v2;
  v29 = a2;
  v5 = sub_24AE088E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  [*v3 altitude];
  v11 = v10;
  [v9 horizontalAccuracy];
  v13 = v12;
  [v9 verticalAccuracy];
  v15 = v14;
  [v9 course];
  v17 = v16;
  [v9 courseAccuracy];
  v19 = v18;
  [v9 speed];
  v21 = v20;
  [v9 speedAccuracy];
  v23 = v22;
  v24 = [v9 timestamp];
  sub_24AE088D8();

  v25 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v26 = sub_24AE08898();
  v27 = [v25 initWithCoordinate:v26 altitude:a1 horizontalAccuracy:v29 verticalAccuracy:v11 course:v13 courseAccuracy:v15 speed:v17 speedAccuracy:v19 timestamp:{v21, v23}];

  (*(v6 + 8))(v8, v5);
  *v3 = v27;
}

void (*Location.mutableCoordinate.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  [*v1 coordinate];
  *a1 = v3;
  a1[1] = v4;
  return sub_24ADE0558;
}

void Location.mutableHorizontalAccuracy.setter(double a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_24AE088E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  [*v2 coordinate];
  v9 = v8;
  v11 = v10;
  [v7 altitude];
  v13 = v12;
  [v7 verticalAccuracy];
  v15 = v14;
  [v7 course];
  v17 = v16;
  [v7 courseAccuracy];
  v19 = v18;
  [v7 speed];
  v21 = v20;
  [v7 speedAccuracy];
  v23 = v22;
  v24 = [v7 timestamp];
  sub_24AE088D8();

  v25 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v26 = sub_24AE08898();
  v27 = [v25 initWithCoordinate:v26 altitude:v9 horizontalAccuracy:v11 verticalAccuracy:v13 course:v29 courseAccuracy:v15 speed:v17 speedAccuracy:v19 timestamp:{v21, v23}];

  (*(v4 + 8))(v6, v3);
  *v2 = v27;
}

void (*Location.mutableHorizontalAccuracy.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*v1 horizontalAccuracy];
  *a1 = v3;
  return sub_24ADE07E4;
}

void sub_24ADE0810()
{
  v1 = [*v0 timestamp];
  sub_24AE088D8();
}

void sub_24ADE0870(id *a1)
{
  v1 = [*a1 timestamp];
  sub_24AE088D8();
}

void sub_24ADE08D0(uint64_t a1)
{
  v2 = sub_24AE088E8();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  Location.mutableTimestamp.setter(v4);
}

void Location.mutableTimestamp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24AE088E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  [*v2 coordinate];
  v31 = v9;
  v11 = v10;
  [v8 altitude];
  v13 = v12;
  [v8 horizontalAccuracy];
  v15 = v14;
  [v8 verticalAccuracy];
  v17 = v16;
  [v8 course];
  v19 = v18;
  [v8 courseAccuracy];
  v21 = v20;
  [v8 speed];
  v23 = v22;
  [v8 speedAccuracy];
  v25 = v24;
  (*(v5 + 16))(v7, a1, v4);
  v26 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v27 = sub_24AE08898();
  v28 = [v26 initWithCoordinate:v27 altitude:v31 horizontalAccuracy:v11 verticalAccuracy:v13 course:v15 courseAccuracy:v17 speed:v19 speedAccuracy:v21 timestamp:{v23, v25}];

  v29 = *(v5 + 8);
  v29(a1, v4);
  v29(v7, v4);

  *v2 = v28;
}

void (*Location.mutableTimestamp.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_24AE088E8();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = [*v1 timestamp];
  sub_24AE088D8();

  return sub_24ADE0CF8;
}

void sub_24ADE0CF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    Location.mutableTimestamp.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Location.mutableTimestamp.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Location.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t sub_24ADE0EBC()
{
  sub_24AE09838();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t sub_24ADE0F24(uint64_t a1)
{
  sub_24AE09838();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t Location.debugDescription.getter()
{
  v1 = sub_24AE088E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_24AE094E8();
  MEMORY[0x24C230FB0](0x6E6F697461636F4CLL, 0xEA00000000002228);
  [v5 coordinate];
  sub_24AE09308();
  MEMORY[0x24C230FB0](2239522, 0xE300000000000000);
  [v5 coordinate];
  sub_24AE09308();
  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  [v5 horizontalAccuracy];
  sub_24AE09308();
  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  v6 = [v5 timestamp];
  sub_24AE088D8();

  sub_24ADE1170();
  v7 = sub_24AE09788();
  MEMORY[0x24C230FB0](v7);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x24C230FB0](10530, 0xE200000000000000);
  return v9[0];
}

unint64_t sub_24ADE1170()
{
  result = qword_27EFA9DF8;
  if (!qword_27EFA9DF8)
  {
    sub_24AE088E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DF8);
  }

  return result;
}

uint64_t GeoHashable.coarseGeoHash.getter(uint64_t a1, uint64_t a2)
{
  v4 = round((*(a2 + 8))() * 100.0) / 100.0;
  v5 = round((*(a2 + 16))(a1, a2) * 100.0) / 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D839F8];
  v8 = MEMORY[0x277D83A80];
  *(v6 + 16) = xmmword_24AE0F2F0;
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v5;

  return MEMORY[0x28211E920](0x2B255F66322E2B25, 0xEB0000000066322ELL, v6);
}

uint64_t GeoHashable.mediumGeoHash.getter(uint64_t a1, uint64_t a2)
{
  v4 = round((*(a2 + 8))() * 1000.0) / 1000.0;
  v5 = round((*(a2 + 16))(a1, a2) * 1000.0) / 1000.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D839F8];
  *(v6 + 16) = xmmword_24AE0FDC0;
  v8 = MEMORY[0x277D83A80];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v5;
  v9 = (*(a2 + 24))(a1, a2);
  if (v9 >= 5.0)
  {
    if (v9 >= 10.0)
    {
      v10 = 25;
      v11 = 50;
      v12 = 100;
      v13 = 1000;
      if (v9 < 250.0)
      {
        v13 = 250;
      }

      if (v9 >= 100.0)
      {
        v12 = v13;
      }

      if (v9 >= 50.0)
      {
        v11 = v12;
      }

      if (v9 >= 25.0)
      {
        v10 = v11;
      }
    }

    else
    {
      v10 = 10;
    }
  }

  else
  {
    v10 = 5;
  }

  v14 = MEMORY[0x277D83C10];
  *(v6 + 136) = MEMORY[0x277D83B88];
  *(v6 + 144) = v14;
  *(v6 + 112) = v10;

  return MEMORY[0x28211E920](0x2B255F66332E2B25, 0xEE0064255F66332ELL, v6);
}

uint64_t GeoHashable.geoHash.getter(uint64_t a1, uint64_t a2)
{
  v4 = round((*(a2 + 8))() * 10000.0) / 10000.0;
  v5 = round((*(a2 + 16))(a1, a2) * 10000.0) / 10000.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D839F8];
  *(v6 + 16) = xmmword_24AE0FDC0;
  v8 = MEMORY[0x277D83A80];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v5;
  v9 = (*(a2 + 24))(a1, a2);
  if (v9 >= 5.0)
  {
    if (v9 >= 10.0)
    {
      v10 = 25;
      v11 = 50;
      v12 = 100;
      v13 = 1000;
      if (v9 < 250.0)
      {
        v13 = 250;
      }

      if (v9 >= 100.0)
      {
        v12 = v13;
      }

      if (v9 >= 50.0)
      {
        v11 = v12;
      }

      if (v9 >= 25.0)
      {
        v10 = v11;
      }
    }

    else
    {
      v10 = 10;
    }
  }

  else
  {
    v10 = 5;
  }

  v14 = MEMORY[0x277D83C10];
  *(v6 + 136) = MEMORY[0x277D83B88];
  *(v6 + 144) = v14;
  *(v6 + 112) = v10;

  return MEMORY[0x28211E920](0x2B255F66342E2B25, 0xEE0064255F66342ELL, v6);
}

unint64_t sub_24ADE16C8()
{
  result = qword_27EFA9E00;
  if (!qword_27EFA9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9E00);
  }

  return result;
}

uint64_t sub_24ADE171C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24ADE1764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ADE17F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_24AE09398();
  if (!v19)
  {
    return sub_24AE091F8();
  }

  v41 = v19;
  v45 = sub_24AE095B8();
  v32 = sub_24AE095C8();
  sub_24AE09598();
  result = sub_24AE09388();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_24AE093B8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_24AE095A8();
      result = sub_24AE093A8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OrganizedListWithMappings.init(values:enabledSections:enabledSortingDescriptors:tag:search:)@<X0>(Swift::OpaquePointer a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = sub_24AE091F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for OrganizedListSectionedValues(0, AssociatedTypeWitness, a7, v19);
  *(a9 + 1) = sub_24AE091F8();
  *(a9 + 2) = sub_24AE091F8();
  v20 = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v21 = sub_24AE091F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = sub_24AD9FFCC(v21, v20, a7, AssociatedConformanceWitness);

  *(a9 + 3) = v23;
  v33 = sub_24AE091F8();
  v24 = sub_24AE091F8();
  v25 = sub_24AE091F8();
  v26 = *(a15 + 24);
  v40[0] = a7;
  v40[1] = a8;
  v40[2] = a10;
  v40[3] = a11;
  v40[4] = a12;
  v40[5] = a13;
  v40[6] = a14;
  v40[7] = a15;
  v27 = type metadata accessor for OrganizedListWithMappings(0, v40);
  v26(v33, v24, v25, a8, a15);
  *&a9[v27[25]] = a2;
  *&a9[v27[26]] = a3;
  v28 = v27[27];
  v29 = swift_getAssociatedTypeWitness();
  v30 = *(v29 - 8);
  (*(v30 + 16))(&a9[v28], a4, v29);
  v31 = &a9[v27[28]];
  *v31 = a5;
  *(v31 + 1) = a6;
  OrganizedListWithMappings.reloadData(_:)(a1);

  return (*(v30 + 8))(a4, v29);
}

uint64_t sub_24ADE1EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_24AE094F8();
  swift_getAssociatedConformanceWitness();
  return sub_24AE09378();
}

uint64_t OrganizedListSortableSort.sortDescriptor.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5(KeyPath, AssociatedTypeWitness, a1, a2);
}

uint64_t OrganizedListEmptyStorageMappings.init(rawValues:filteredSections:filteredValues:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

uint64_t sub_24ADE21B8()
{
  v0 = sub_24AE08288();
  OrganizedListWithMappings.reloadData(_:)(v0);
}

uint64_t OrganizedListWithMappings.tag.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 112));
  v6 = *v4;
  v5 = v4[1];
  v7 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v12 = *(a1 + 108);
    v13 = swift_getAssociatedTypeWitness();
    v14 = *(*(v13 - 8) + 16);

    return v14(a2, v2 + v12, v13);
  }
}

uint64_t sub_24ADE2334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 48);
  v8[0] = *(a1 + a2 - 64);
  v8[1] = v4;
  v5 = *(a1 + a2 - 16);
  v8[2] = *(a1 + a2 - 32);
  v8[3] = v5;
  v6 = type metadata accessor for OrganizedListWithMappings(0, v8);
  return OrganizedListWithMappings.tag.getter(v6, a3);
}

uint64_t sub_24ADE2388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 48);
  v9[0] = *(a3 + a4 - 64);
  v9[1] = v5;
  v6 = *(a3 + a4 - 16);
  v9[2] = *(a3 + a4 - 32);
  v9[3] = v6;
  v7 = type metadata accessor for OrganizedListWithMappings(0, v9);
  return sub_24ADE4714(a1, v7);
}

uint64_t OrganizedListWithMappings.tag.setter(uint64_t a1, uint64_t a2)
{
  sub_24ADE4714(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*OrganizedListWithMappings.tag.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  OrganizedListWithMappings.tag.getter(a2, v11);
  return sub_24ADE258C;
}

void sub_24ADE258C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_24ADE467C(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_24ADE467C((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OrganizedListWithMappings.search.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 112));
  sub_24AE08288();
  return v2;
}

uint64_t sub_24ADE26B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 48);
  v10[0] = *(a2 + a3 - 64);
  v10[1] = v5;
  v6 = *(a2 + a3 - 16);
  v10[2] = *(a2 + a3 - 32);
  v10[3] = v6;
  v7 = (a1 + *(type metadata accessor for OrganizedListWithMappings(0, v10) + 112));
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
  return sub_24AE08288();
}

uint64_t sub_24ADE2710(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *a1;
  v6 = a1[1];
  sub_24AE08288();
  v7 = *(v4 - 48);
  v11[0] = *(v4 - 64);
  v11[1] = v7;
  v8 = *(v4 - 16);
  v11[2] = *(v4 - 32);
  v11[3] = v8;
  v9 = type metadata accessor for OrganizedListWithMappings(0, v11);
  return OrganizedListWithMappings.search.setter(v5, v6, v9);
}

uint64_t OrganizedListWithMappings.search.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 112));

  *v6 = a1;
  v6[1] = a2;

  return sub_24ADE21B8();
}

uint64_t (*OrganizedListWithMappings.search.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24ADE2804;
}

uint64_t sub_24ADE2804(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24ADE21B8();
  }

  return result;
}

uint64_t sub_24ADE2830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_24AE094F8();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return sub_24AE09378();
}

Swift::Void __swiftcall OrganizedListWithMappings.reloadData(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v2 = v1;
  v67 = *(v1 + 24);
  v62 = *(v67 - 8);
  MEMORY[0x28223BE20](a1._rawValue);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v6.i64[0] = v5;
  v6.i64[1] = v7;
  v71 = v6;
  v8 = *(v4 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_24AE094F8();
  v10 = *(v2 + 72);
  v11.i64[0] = v8;
  v64 = v11;
  v128 = v69;
  swift_getAssociatedConformanceWitness();
  v60 = v2;
  v12 = *(v2 + 32);
  v124 = v71;
  v125 = v12;
  v13 = *(v2 + 56);
  v70 = v12;
  v71 = v13;
  *&v12 = vdupq_laneq_s64(v13, 1).u64[0];
  v14 = v10;
  v66 = v10;
  *(&v12 + 1) = v10;
  v126 = vzip1q_s64(v64, v13);
  v127 = v12;
  v131 = sub_24AE09148();
  v118 = v5;
  v15 = v67;
  v119 = v67;
  v120 = v70;
  v65 = v8;
  v121 = v8;
  v122 = v71;
  v123 = v14;
  KeyPath = swift_getKeyPath();
  v113 = v70;
  v112[2] = v15;
  v114 = v8;
  v115 = v71;
  v116 = v14;
  v117 = KeyPath;
  v17 = sub_24AE09258();
  v18 = sub_24AE08698();
  v64.i64[0] = v18;
  WitnessTable = swift_getWitnessTable();
  v55 = sub_24ADE17F8(sub_24ADE4748, v112, v17, v18, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);

  v21 = v69;
  v131 = rawValue;
  v105 = v5;
  v106 = v15;
  v107 = v70;
  v109 = v71;
  v23 = v65;
  v22 = v66;
  v108 = v65;
  v110 = v66;
  v111 = v69;
  v63 = v5;
  v24 = sub_24AE09258();
  sub_24AE08288();
  swift_getWitnessTable();
  v131 = sub_24AE09588();
  v98 = v5;
  v99 = v15;
  v100 = v70;
  v102 = v71;
  v101 = v23;
  v25 = v23;
  v103 = v22;
  v104 = v21;
  v26 = sub_24AE09588();
  v56 = 0;
  v130 = v55;
  v131 = v26;
  sub_24AE09258();
  v57 = MEMORY[0x277D83970];
  v27 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v59 = v27;
  v28 = sub_24AE09128();

  v131 = v28;
  v64.i64[0] = v28;
  v29 = v66;
  v30 = v67;
  v91 = v63;
  v92 = v67;
  v93 = v70;
  v95 = v71;
  v94 = v25;
  v96 = v66;
  v97 = v69;
  v31 = v63;
  v32 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24AE08288();
  v58 = v24;
  v33 = sub_24AE08E48();
  v131 = v33;
  v85 = v31;
  v86 = v30;
  v34 = v30;
  v87 = v70;
  v89 = v71;
  v35 = v65;
  v88 = v65;
  v90 = v29;
  v36 = v29;
  sub_24AE08E38();
  sub_24AE08288();
  swift_getWitnessTable();
  v37 = sub_24AE09168();

  v131 = v37;
  v38 = v63;
  v78 = v63;
  v79 = v34;
  v80 = v70;
  v82 = v71;
  v81 = v35;
  v83 = v36;
  v84 = v33;
  sub_24AE09258();
  type metadata accessor for OrganizedListSectionedValues(0, v32, v38, v39);
  swift_getWitnessTable();
  v40 = sub_24AE09138();

  v41 = rawValue;
  v42 = v69;
  sub_24AE08288();

  *v42 = v41;
  v57 = v40;
  sub_24AE08288();

  *(v42 + 1) = v40;
  v43 = v64.i64[0];
  sub_24AE08288();

  *(v42 + 2) = v43;
  v130 = v43;
  v44 = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v45 = sub_24AE091F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = sub_24AD9FFCC(v45, v44, v38, AssociatedConformanceWitness);

  v129 = v47;
  v48 = v66;
  v49 = v67;
  v72 = v38;
  v73 = v67;
  v74 = v70;
  v75 = v65;
  v76 = v71;
  v77 = v66;
  sub_24AE08E58();
  sub_24AE09158();
  v50 = v131;

  *(v42 + 3) = v50;
  v51 = *(v48 + 24);
  v52 = sub_24AE08288();
  v53 = v61;
  v51(v52, v57, v64.i64[0], v49, v48);
  (*(v62 + 40))(&v42[*(v60 + 96)], v53, v49);
}

uint64_t sub_24ADE3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a7;
  v12[5] = a8;
  v12[6] = a9;
  v12[7] = a10;
  type metadata accessor for OrganizedListWithMappings(0, v12);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24AE08288();
  v10 = sub_24AE09358();

  return v10 & 1;
}

uint64_t sub_24ADE3348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return OrganizedListSortableSort.sortDescriptor.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_24ADE33DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v19[6] = a9;
  v19[7] = a10;
  v12 = (a2 + *(type metadata accessor for OrganizedListWithMappings(0, v19) + 112));
  v13 = *v12;
  v14 = v12[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = *(a5 + 8);
    sub_24AE08288();
    v17 = v16(v13, v14, a3, a5);
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t sub_24ADE34B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a7;
  v23 = a2;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v21 - v16;
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = v21;
  v25[4] = v22;
  v25[5] = a8;
  v25[6] = a9;
  v25[7] = a10;
  v18 = type metadata accessor for OrganizedListWithMappings(0, v25);
  OrganizedListWithMappings.tag.getter(v18, v17);
  v19 = (*(a8 + 24))(v17, a3, a8);
  (*(v15 + 8))(v17, AssociatedTypeWitness);
  return v19 & 1;
}

uint64_t sub_24ADE3614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = a9;
  v15[7] = a10;
  type metadata accessor for OrganizedListWithMappings(0, v15);
  v12 = *(a6 + 24);
  v13 = sub_24AE08288();
  v12(v13, a3, a6);
}

uint64_t sub_24ADE36C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 64);
  v8 = swift_checkMetadataState();
  v9 = v7(v8, AssociatedConformanceWitness);
  v11 = v10;
  if (v9 == v7(v8, AssociatedConformanceWitness) && v11 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_24AE097C8();
  }

  return v14 & 1;
}

uint64_t sub_24ADE37F4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - v10;
  sub_24AE09258();
  swift_getAssociatedConformanceWitness();
  sub_24AE08E88();
  v13 = v19;
  if (v19)
  {
    (*(v9 + 16))(v11, a1, AssociatedTypeWitness);
    (*(v9 + 32))(a5, v11, AssociatedTypeWitness);
    v15 = type metadata accessor for OrganizedListSectionedValues(0, AssociatedTypeWitness, a3, v14);
    *(a5 + *(v15 + 36)) = v13;
    return (*(*(v15 - 8) + 56))(a5, 0, 1, v15);
  }

  else
  {
    v17 = type metadata accessor for OrganizedListSectionedValues(0, AssociatedTypeWitness, a3, v12);
    return (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  }
}

uint64_t sub_24ADE39F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_24AE09438();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_24AE09508();
  v15 = *(a3 - 8);
  (*(v15 + 16))(v13, a2, a3);
  (*(v15 + 56))(v13, 0, 1, a3);
  swift_getAssociatedConformanceWitness();
  sub_24AE08E58();
  return sub_24AE08E98();
}

uint64_t static OrganizedListSectionedValues<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_24AE08EF8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for OrganizedListSectionedValues(0, a3, a4, v8);

  return sub_24AE09278();
}

uint64_t OrganizedListSectionedValues<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24AE08EB8();

  return sub_24AE09268();
}

uint64_t OrganizedListSectionedValues<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AE09838();
  sub_24AE08EB8();
  sub_24AE09268();
  return sub_24AE09868();
}

uint64_t static OrganizedListWithMappings<>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (sub_24AE09278() & 1) != 0 && (AssociatedTypeWitness = swift_getAssociatedTypeWitness(), type metadata accessor for OrganizedListSectionedValues(0, AssociatedTypeWitness, a3, v21), v29[8] = *(*(swift_getAssociatedConformanceWitness() + 8) + 8), v29[9] = a9, swift_getWitnessTable(), (sub_24AE09278()) && (sub_24AE09278() & 1) != 0 && (swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), (sub_24AE08E78()) && (v29[0] = a3, v29[1] = a4, v29[2] = a5, v29[3] = a6, v29[4] = a7, v29[5] = a8, v29[6] = a10, v29[7] = a11, v22 = type metadata accessor for OrganizedListWithMappings(0, v29), (sub_24AE08EF8()) && (swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), (sub_24AE09338()) && (swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), (sub_24AE09338()) && (swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), (sub_24AE08EF8()))
  {
    v23 = *(v22 + 112);
    v24 = *(a1 + v23);
    v25 = *(a1 + v23 + 8);
    v26 = (a2 + v23);
    if (v24 == *v26 && v25 == v26[1])
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_24AE097C8();
    }
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t OrganizedListWithMappings<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  sub_24AE09268();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for OrganizedListSectionedValues(0, AssociatedTypeWitness, v4, v6);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24AE09268();
  sub_24AE09268();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24AE08E68();
  sub_24AE08EB8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24AE09348();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24AE09348();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24AE08EB8();
  return sub_24AE09048();
}

uint64_t OrganizedListWithMappings<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AE09838();
  OrganizedListWithMappings<>.hash(into:)(v7, a1, a2, a3);
  return sub_24AE09868();
}

uint64_t sub_24ADE444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3 - 16);
  v6 = *(a3 - 8);
  sub_24AE09838();
  a4(v9, a2, v6, v7);
  return sub_24AE09868();
}

uint64_t static OrganizedListWithMappings.empty.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v26 = a2;
  v27 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v24 - v17;
  v25._rawValue = sub_24AE091F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = v26;
  v21 = sub_24ADE2830(a1, v26, a3, a4);
  v22 = sub_24ADE1EDC(a1, v20, a3, a4, a5);
  return OrganizedListWithMappings.init(values:enabledSections:enabledSortingDescriptors:tag:search:)(v25, v21, v22, v18, 0, 0xE000000000000000, a1, v20, v27, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_24ADE467C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 108);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v2 + v4, a1, AssociatedTypeWitness);

  return sub_24ADE21B8();
}

uint64_t sub_24ADE4A3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_24AE09258();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ADE4AC8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_24ADE4C04(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_24ADE4DE0(void *a1)
{
  v1 = a1[2];
  result = sub_24AE09258();
  if (v3 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for OrganizedListSectionedValues(255, AssociatedTypeWitness, v1, v5);
    result = sub_24AE09258();
    if (v6 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      result = sub_24AE08E58();
      if (v7 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v8 <= 0x3F)
        {
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          result = sub_24AE09368();
          if (v9 <= 0x3F)
          {
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            result = sub_24AE09368();
            if (v10 <= 0x3F)
            {
              result = swift_getAssociatedTypeWitness();
              if (v11 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24ADE5074(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v6 + 80);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + 7;
  v15 = v11 + 8;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v16 = ((*(*(AssociatedTypeWitness - 8) + 64) + ((v15 + ((((v14 + ((v10 + 32) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v12 & 0x80000000) != 0)
  {
    v26 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
    if (v7 == v13)
    {
      v27 = *(v6 + 48);

      return v27(v26, v7, v5);
    }

    else
    {
      v28 = *(v9 + 48);
      v29 = (v15 + ((((v14 + v26) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11;

      return v28(v29);
    }
  }

  else
  {
    v25 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void sub_24ADE5330(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(*(AssociatedTypeWitness - 8) + 64) + ((v14 + 8 + ((((v13 + 7 + ((v12 + 32) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(AssociatedTypeWitness - 8) + 64) + ((v14 + 8 + ((((v13 + 7 + ((v12 + 32) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          v25 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
          if (v9 == v16)
          {
            v26 = *(v29 + 56);

            v26(v25, a2, v9, v7);
          }

          else
          {
            v27 = *(v11 + 56);
            v28 = (v14 + 8 + ((((v13 + 7 + v25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14;

            v27(v28, a2);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *a1 = v24;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(AssociatedTypeWitness - 8) + 64) + ((v14 + 8 + ((((v13 + 7 + ((v12 + 32) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(*(AssociatedTypeWitness - 8) + 64) + ((v14 + 8 + ((((v13 + 7 + ((v12 + 32) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

__n128 PublishedLocation.init(value:priority:motionActivity:label:)@<Q0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 9) = v6;
  v7 = *(a4 + 80);
  *(a5 + 80) = *(a4 + 64);
  *(a5 + 96) = v7;
  *(a5 + 112) = *(a4 + 96);
  v8 = *(a4 + 16);
  *(a5 + 16) = *a4;
  *(a5 + 32) = v8;
  result = *(a4 + 48);
  *(a5 + 48) = *(a4 + 32);
  *(a5 + 64) = result;
  return result;
}

uint64_t PublishedLocation.Label.description.getter()
{
  v0 = sub_24AE08718();
  MEMORY[0x28223BE20](v0 - 8);
  v4 = 2;
  sub_24ADE7D84(0, &v4, &v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_24AE08FE8();
}

uint64_t PublishedLocation.Priority.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x79636167656CLL;
  v3 = 0x74696C6C65746173;
  v4 = 0x6567617373656DLL;
  if (v1 != 4)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 1702259052;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t PublishedLocation.MotionActivity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x676E696E6E7572;
  v4 = 0x676E696C637963;
  if (v1 != 4)
  {
    v4 = 0x69746F6D6F747561;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616E6F6974617473;
  if (v1 != 1)
  {
    v5 = 0x676E696B6C6177;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void static FindMyUserDefaults.Key<>.showLocationTypeDebugDescription.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x800000024AE134C0;
  *(a1 + 16) = 1;
}

id PublishedLocation.value.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void PublishedLocation.value.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t PublishedLocation.label.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v13 = v1[5];
  v2 = v13;
  v14 = v3;
  v15 = v1[7];
  v4 = v15;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  v6 = v1[4];
  v11 = v1[3];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_24AD9B858(v10, &v9);
}

__n128 PublishedLocation.label.setter(uint64_t a1)
{
  v3 = v1[6];
  v9[4] = v1[5];
  v9[5] = v3;
  v9[6] = v1[7];
  v4 = v1[2];
  v9[0] = v1[1];
  v9[1] = v4;
  v5 = v1[4];
  v9[2] = v1[3];
  v9[3] = v5;
  sub_24ADA6B3C(v9);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  v1[7] = *(a1 + 96);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = result;
  return result;
}

double PublishedLocation.timestamp.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE088E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = [v7 timestamp];
  sub_24AE088D8();

  v10 = *(v4 + 16);
  v113 = v3;
  v114 = a1;
  v10(a1, v6, v3);
  if (v8 != 2)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v14 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      sub_24AE08288();
      v15 = v14;
      v16 = v15;
    }

    else
    {
      v27 = objc_opt_self();
      sub_24AE08288();
      v16 = [v27 mainBundle];
      v15 = 0;
    }

    v28 = v15;
    v29 = sub_24AE08F88();
    v30 = sub_24AE08F88();
    v31 = [v16 localizedStringForKey:v29 value:0 table:v30];

    v32 = sub_24AE08FB8();
    v111 = v33;
    v112 = v32;

    v34 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      sub_24AE08288();
      v35 = v34;
      v36 = v35;
    }

    else
    {
      v47 = objc_opt_self();
      sub_24AE08288();
      v36 = [v47 mainBundle];
      v35 = 0;
    }

    v48 = v35;
    v49 = sub_24AE08F88();
    v50 = sub_24AE08F88();
    v51 = [v36 localizedStringForKey:v49 value:0 table:v50];

    v52 = sub_24AE08FB8();
    v109 = v53;
    v110 = v52;

    v54 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      sub_24AE08288();
      v55 = v54;
      v56 = v55;
    }

    else
    {
      v67 = objc_opt_self();
      sub_24AE08288();
      v56 = [v67 mainBundle];
      v55 = 0;
    }

    v68 = v55;
    v69 = sub_24AE08F88();
    v70 = sub_24AE08F88();
    v71 = [v56 localizedStringForKey:v69 value:0 table:v70];

    v72 = sub_24AE08FB8();
    v107 = v73;
    v108 = v72;

    v74 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      sub_24AE08288();
      v75 = v74;
      v76 = v75;
    }

    else
    {
      v86 = objc_opt_self();
      sub_24AE08288();
      v76 = [v86 mainBundle];
      v75 = 0;
    }

    v87 = v75;
    v88 = sub_24AE08F88();
    v89 = sub_24AE08F88();
    v90 = [v76 localizedStringForKey:v88 value:0 table:v89];

    v82 = sub_24AE08FB8();
    v84 = v91;

    v85 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_33;
    }

LABEL_34:
    v94 = objc_opt_self();
    sub_24AE08288();
    v93 = [v94 mainBundle];
    v92 = 0;
    goto LABEL_35;
  }

  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v11 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v12 = v11;
    v13 = v12;
  }

  else
  {
    v17 = objc_opt_self();
    sub_24AE08288();
    v13 = [v17 mainBundle];
    v12 = 0;
  }

  v18 = v12;
  v19 = sub_24AE08F88();
  v20 = sub_24AE08F88();
  v21 = [v13 localizedStringForKey:v19 value:0 table:v20];

  v22 = sub_24AE08FB8();
  v111 = v23;
  v112 = v22;

  v24 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v25 = v24;
    v26 = v25;
  }

  else
  {
    v37 = objc_opt_self();
    sub_24AE08288();
    v26 = [v37 mainBundle];
    v25 = 0;
  }

  v38 = v25;
  v39 = sub_24AE08F88();
  v40 = sub_24AE08F88();
  v41 = [v26 localizedStringForKey:v39 value:0 table:v40];

  v42 = sub_24AE08FB8();
  v109 = v43;
  v110 = v42;

  v44 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v45 = v44;
    v46 = v45;
  }

  else
  {
    v57 = objc_opt_self();
    sub_24AE08288();
    v46 = [v57 mainBundle];
    v45 = 0;
  }

  v58 = v45;
  v59 = sub_24AE08F88();
  v60 = sub_24AE08F88();
  v61 = [v46 localizedStringForKey:v59 value:0 table:v60];

  v62 = sub_24AE08FB8();
  v107 = v63;
  v108 = v62;

  v64 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v65 = v64;
    v66 = v65;
  }

  else
  {
    v77 = objc_opt_self();
    sub_24AE08288();
    v66 = [v77 mainBundle];
    v65 = 0;
  }

  v78 = v65;
  v79 = sub_24AE08F88();
  v80 = sub_24AE08F88();
  v81 = [v66 localizedStringForKey:v79 value:0 table:v80];

  v82 = sub_24AE08FB8();
  v84 = v83;

  v85 = qword_27EFB76F0;
  if (!qword_27EFB76F0)
  {
    goto LABEL_34;
  }

LABEL_33:
  sub_24AE08288();
  v92 = v85;
  v93 = v92;
LABEL_35:
  v95 = v92;
  v96 = sub_24AE08F88();
  v97 = sub_24AE08F88();
  v98 = [v93 localizedStringForKey:v96 value:0 table:v97];

  v99 = sub_24AE08FB8();
  v101 = v100;

  (*(v4 + 8))(v6, v113);

  v102 = v114 + *(type metadata accessor for FindMyRelativeDate(0) + 20);
  *v102 = xmmword_24AE10280;
  *(v102 + 16) = xmmword_24AE10290;
  result = 8.00837452e-116;
  *(v102 + 32) = xmmword_24AE102A0;
  v104 = v111;
  *(v102 + 48) = v112;
  *(v102 + 56) = v104;
  v105 = v109;
  *(v102 + 64) = v110;
  *(v102 + 72) = v105;
  v106 = v107;
  *(v102 + 80) = v108;
  *(v102 + 88) = v106;
  *(v102 + 96) = v82;
  *(v102 + 104) = v84;
  *(v102 + 112) = v99;
  *(v102 + 120) = v101;
  return result;
}

uint64_t PublishedLocation.showPulseAnimationEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE088E8();
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8) == 2)
  {
    v7 = *v1;
    v12 = v4;
    v8 = [v7 timestamp];
    sub_24AE088D8();

    sub_24AE09958();
    sub_24AE09958();
    sub_24AE08888();
    (*(v12 + 8))(v6, v3);
    return (*(v12 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v10 = *(v4 + 56);

    return v10(a1, 1, 1, v3);
  }
}

uint64_t PublishedLocation.extraInfo.getter()
{
  if (qword_27EFA8620 != -1)
  {
    swift_once();
  }

  if (byte_27EFA8CF0 == 1)
  {
    v0 = qword_27EFA8CE8;
    v1 = sub_24AE08F88();
    LOBYTE(v0) = [v0 BOOLForKey_];

    if (v0)
    {
      v2 = sub_24AE08FF8();
      MEMORY[0x24C230FB0](v2);

      sub_24AE08288();
      MEMORY[0x24C230FB0](41, 0xE100000000000000);

      return 0x203A677562656428;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t PublishedLocation.Priority.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1 == 3)
  {
    if (qword_27EFA86F8 != -1)
    {
      swift_once();
    }

    v4 = qword_27EFAA058;
    v3 = unk_27EFAA060;
    v6 = qword_27EFAA068;
    v5 = unk_27EFAA070;
    v7 = word_27EFAA078 | (HIBYTE(word_27EFAA078) << 8);
    sub_24AE08288();
    result = sub_24AE08288();
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  return result;
}

FindMyCore::PublishedLocation::Priority_optional __swiftcall PublishedLocation.Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24AE09668();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24ADE68BC(uint64_t a1)
{
  sub_24AE09048();
}

void sub_24ADE69B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x79636167656CLL;
  v5 = 0xE900000000000065;
  v6 = 0x74696C6C65746173;
  v7 = 0xE700000000000000;
  v8 = 0x6567617373656DLL;
  if (v2 != 4)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000024AE12D70;
  v10 = 0xD000000000000012;
  if (v2 != 1)
  {
    v10 = 1702259052;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t PublishedLocation.MotionActivity.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if (qword_27EFA8708 != -1)
      {
        swift_once();
      }

      v9 = &qword_27EFAA0A8;
    }

    else if (v3 == 4)
    {
      if (qword_27EFA8710 != -1)
      {
        swift_once();
      }

      v9 = &qword_27EFAA0D0;
    }

    else
    {
      if (qword_27EFA8718 != -1)
      {
        swift_once();
      }

      v9 = &qword_27EFAA0F8;
    }

    v4 = *v9;
    v5 = v9[1];
    v6 = v9[2];
    v7 = v9[3];
    v8 = *(v9 + 32) | (*(v9 + 33) << 8);
    sub_24AE08288();
    result = sub_24AE08288();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

FindMyCore::PublishedLocation::MotionActivity_optional __swiftcall PublishedLocation.MotionActivity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24AE09668();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24ADE6C24(uint64_t a1)
{
  sub_24AE09048();
}

void sub_24ADE6D30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x676E696E6E7572;
  v7 = 0xE700000000000000;
  v8 = 0x676E696C637963;
  if (v2 != 4)
  {
    v8 = 0x69746F6D6F747561;
    v7 = 0xEA00000000006576;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007972;
  v10 = 0x616E6F6974617473;
  if (v2 != 1)
  {
    v10 = 0x676E696B6C6177;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

double sub_24ADE6DF8()
{
  result = 0.0;
  xmmword_27EFA9E58 = 0u;
  xmmword_27EFA9E68 = 0u;
  xmmword_27EFA9E38 = 0u;
  xmmword_27EFA9E48 = 0u;
  xmmword_27EFA9E18 = 0u;
  xmmword_27EFA9E28 = 0u;
  xmmword_27EFA9E08 = 0u;
  return result;
}

uint64_t static PublishedLocation.Label.empty.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27EFA8688 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = xmmword_27EFA9E48;
  v2 = xmmword_27EFA9E58;
  v10[4] = xmmword_27EFA9E48;
  v10[5] = xmmword_27EFA9E58;
  v3 = xmmword_27EFA9E68;
  v10[6] = xmmword_27EFA9E68;
  v4 = xmmword_27EFA9E18;
  v10[0] = xmmword_27EFA9E08;
  v10[1] = xmmword_27EFA9E18;
  v6 = xmmword_27EFA9E28;
  v5 = xmmword_27EFA9E38;
  v10[2] = xmmword_27EFA9E28;
  v10[3] = xmmword_27EFA9E38;
  *a1 = xmmword_27EFA9E08;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  return sub_24AD9B858(v10, &v9);
}

void sub_24ADE6EB8()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFA9E78 = v8;
  unk_27EFA9E80 = v10;
}

uint64_t static PublishedLocation.Label.noLocationLabel.getter()
{
  if (qword_27EFA8690 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFA9E78;
  sub_24AE08288();
  return v0;
}

uint64_t sub_24ADE7074()
{
  v0 = sub_24AE08948();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24AE086E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24AE08F78();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AE08718();
  __swift_allocate_value_buffer(v6, qword_27EFA9E88);
  __swift_project_value_buffer(v6, qword_27EFA9E88);
  sub_24AE08F08();
  *v4 = type metadata accessor for ModelsModule();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9120], v1);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE7288()
{
  v0 = sub_24AE08948();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24AE086E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24AE08F78();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AE08718();
  __swift_allocate_value_buffer(v6, qword_27EFA9EA0);
  __swift_project_value_buffer(v6, qword_27EFA9EA0);
  sub_24AE08F08();
  *v4 = type metadata accessor for ModelsModule();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9120], v1);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE749C()
{
  v0 = sub_24AE08948();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24AE086E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24AE08F78();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AE08718();
  __swift_allocate_value_buffer(v6, qword_27EFA9EB8);
  __swift_project_value_buffer(v6, qword_27EFA9EB8);
  sub_24AE08F08();
  *v4 = type metadata accessor for ModelsModule();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9120], v1);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE76B0()
{
  v0 = sub_24AE08948();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24AE086E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24AE08F78();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AE08718();
  __swift_allocate_value_buffer(v6, qword_27EFA9ED0);
  __swift_project_value_buffer(v6, qword_27EFA9ED0);
  sub_24AE08F08();
  *v4 = type metadata accessor for ModelsModule();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9120], v1);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE78C4()
{
  v0 = sub_24AE08948();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24AE086E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24AE08F78();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AE08718();
  __swift_allocate_value_buffer(v6, qword_27EFA9EE8);
  __swift_project_value_buffer(v6, qword_27EFA9EE8);
  sub_24AE08F08();
  *v4 = type metadata accessor for ModelsModule();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9120], v1);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE7AD8()
{
  v0 = sub_24AE08948();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24AE086E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24AE08F78();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AE08718();
  __swift_allocate_value_buffer(v6, qword_27EFA9F00);
  __swift_project_value_buffer(v6, qword_27EFA9F00);
  sub_24AE08F08();
  *v4 = type metadata accessor for ModelsModule();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9120], v1);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE7CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_24AE08718();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_24ADE7D84@<X0>(char a1@<W0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = v3[3];
  if (a1)
  {
    if (v13)
    {
      sub_24AE08288();
      sub_24AE086D8();
      v14 = sub_24AE08718();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v10, 0, 1, v14);
      return (*(v15 + 32))(a3, v10, v14);
    }

    v18 = sub_24AE08718();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v10, 1, 1, v18);
    if (qword_27EFA8698 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v18, qword_27EFA9E88);
    (*(v19 + 16))(a3, v20, v18);
    result = (*(v19 + 48))(v10, 1, v18);
    if (result != 1)
    {
      v21 = v10;
      return sub_24AD92BE4(v21, &qword_27EFA8D98, &qword_24AE0B490);
    }

    return result;
  }

  v17 = v3[1];
  if (!*a2)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (*a2 != 1)
  {
    if (!v17)
    {
      if (v3[9])
      {
LABEL_18:
        sub_24AE08288();
        goto LABEL_20;
      }

      goto LABEL_17;
    }

LABEL_20:
    sub_24AE08288();
    sub_24AE086D8();
    v22 = sub_24AE08718();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v12, 0, 1, v22);
    return (*(v23 + 32))(a3, v12, v22);
  }

  if (v17)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v3[7])
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_24AE08288();
  if (v13)
  {
    goto LABEL_20;
  }

  v24 = sub_24AE08718();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v12, 1, 1, v24);
  v26 = qword_27EFA8698;
  sub_24AE08288();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v24, qword_27EFA9E88);
  (*(v25 + 16))(a3, v27, v24);
  result = (*(v25 + 48))(v12, 1, v24);
  if (result != 1)
  {
    v21 = v12;
    return sub_24AD92BE4(v21, &qword_27EFA8D98, &qword_24AE0B490);
  }

  return result;
}

uint64_t sub_24ADE81F8(char *a1, uint64_t a2, char a3, _BYTE *a4)
{
  v37 = a2;
  v8 = sub_24AE08718();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v34 - v15;
  v17 = v4[3];
  if (a3)
  {
    if (v17)
    {
      sub_24AE08288();
      sub_24AE086D8();
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    (*(v38 + 56))(a1, v18, 1, v8);
    if (qword_27EFA86C0 != -1)
    {
      swift_once();
    }

    v23 = qword_27EFA9F00;
LABEL_14:
    v24 = __swift_project_value_buffer(v8, v23);
    v25 = v37;
    v26 = *(v38 + 16);

    return v26(v25, v24, v8);
  }

  v19 = *v4;
  v20 = v4[1];
  v21 = v4[12];
  v35 = v4[13];
  v36 = v19;
  if (*a4)
  {
    v22 = v4[11];
    v34[1] = v21;
    if (!v22)
    {
      if (!v4[9] && !v4[7] && !v17)
      {
        v28 = *(v38 + 56);
        v28(v34 - v15, 1, 1, v8);
LABEL_26:
        sub_24AD92B7C(v16, v14, &qword_27EFA8D98, &qword_24AE0B490);
        if ((*(v38 + 48))(v14, 1, v8) == 1)
        {
          sub_24AD92BE4(v14, &qword_27EFA8D98, &qword_24AE0B490);
          if (!v20)
          {
            if (!v35)
            {
              v30 = 1;
              goto LABEL_34;
            }

            sub_24AE08288();
          }

          sub_24AE08288();
          sub_24AE086D8();
          v30 = 0;
LABEL_34:
          v28(a1, v30, 1, v8);
          if (qword_27EFA8698 != -1)
          {
            swift_once();
          }

          v31 = __swift_project_value_buffer(v8, qword_27EFA9E88);
          (*(v38 + 16))(v37, v31, v8);
          return sub_24AD92BE4(v16, &qword_27EFA8D98, &qword_24AE0B490);
        }

        v29 = *(v38 + 32);
        v29(v10, v14, v8);
        if (!v20)
        {
          if (!v35)
          {
            v32 = 1;
            goto LABEL_40;
          }

          sub_24AE08288();
        }

        sub_24AE08288();
        sub_24AE086D8();
        v32 = 0;
LABEL_40:
        sub_24AD92BE4(v16, &qword_27EFA8D98, &qword_24AE0B490);
        v28(a1, v32, 1, v8);
        return (v29)(v37, v10, v8);
      }

      sub_24AE08288();
    }

    sub_24AE08288();
    sub_24AE086D8();
    v28 = *(v38 + 56);
    v28(v16, 0, 1, v8);
    goto LABEL_26;
  }

  if (!v17)
  {
    if (!v20)
    {
      if (!v35)
      {
        v33 = 1;
        goto LABEL_44;
      }

      sub_24AE08288();
    }

    sub_24AE08288();
    sub_24AE086D8();
    v33 = 0;
LABEL_44:
    (*(v38 + 56))(a1, v33, 1, v8);
    if (qword_27EFA8698 != -1)
    {
      swift_once();
    }

    v23 = qword_27EFA9E88;
    goto LABEL_14;
  }

  if (!v20)
  {
    if (!v35 && !v4[5])
    {
      (*(v38 + 56))(a1, 1, 1, v8);
      sub_24AE08288();
      goto LABEL_50;
    }

    sub_24AE08288();
  }

  sub_24AE08288();
  sub_24AE08288();
  sub_24AE086D8();
  (*(v38 + 56))(a1, 0, 1, v8);
LABEL_50:

  return sub_24AE086D8();
}

uint64_t PublishedLocation.Label.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[9];
  v6 = v1[11];
  v7 = v1[13];
  if (v1[1])
  {
    sub_24AE09858();
    sub_24AE09048();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24AE09858();
    if (v2)
    {
LABEL_3:
      sub_24AE09858();
      sub_24AE09048();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  sub_24AE09858();
  if (v3)
  {
LABEL_4:
    sub_24AE09858();
    sub_24AE09048();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_24AE09858();
  if (v4)
  {
LABEL_5:
    sub_24AE09858();
    sub_24AE09048();
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_24AE09858();
  if (v5)
  {
LABEL_6:
    sub_24AE09858();
    sub_24AE09048();
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_16:
    sub_24AE09858();
    if (v7)
    {
      goto LABEL_8;
    }

    return sub_24AE09858();
  }

LABEL_15:
  sub_24AE09858();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_7:
  sub_24AE09858();
  sub_24AE09048();
  if (!v7)
  {
    return sub_24AE09858();
  }

LABEL_8:
  sub_24AE09858();

  return sub_24AE09048();
}

uint64_t PublishedLocation.Label.hashValue.getter()
{
  sub_24AE09838();
  PublishedLocation.Label.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADE8A58()
{
  sub_24AE09838();
  PublishedLocation.Label.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADE8A9C(uint64_t a1)
{
  sub_24AE09838();
  PublishedLocation.Label.hash(into:)(v2);
  return sub_24AE09868();
}

uint64_t PublishedLocation.hash(into:)(uint64_t a1)
{
  sub_24AE09428();
  sub_24AE09048();

  sub_24AE09048();

  return PublishedLocation.Label.hash(into:)(a1);
}

uint64_t PublishedLocation.hashValue.getter()
{
  sub_24AE09838();
  PublishedLocation.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADE8D64()
{
  sub_24AE09838();
  PublishedLocation.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADE8DA8(uint64_t a1)
{
  sub_24AE09838();
  PublishedLocation.hash(into:)(v2);
  return sub_24AE09868();
}

uint64_t PublishedLocation.debugDescription.getter()
{
  v1 = sub_24AE08718();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 6);
  v48 = *(v0 + 5);
  v49 = v8;
  v50 = *(v0 + 7);
  v9 = *(v0 + 2);
  v44 = *(v0 + 1);
  v45 = v9;
  v10 = *(v0 + 4);
  v46 = *(v0 + 3);
  v47 = v10;
  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  sub_24AD9B858(&v44, v42);
  sub_24AE094E8();
  v43 = v35;
  MEMORY[0x24C230FB0](0xD000000000000013, 0x800000024AE13730);
  v11 = 0xE600000000000000;
  v12 = 0x79636167656CLL;
  v13 = 0xE900000000000065;
  v14 = 0x74696C6C65746173;
  v15 = 0xE700000000000000;
  v16 = 0x6567617373656DLL;
  if (v6 != 4)
  {
    v16 = 0x726568746FLL;
    v15 = 0xE500000000000000;
  }

  if (v6 != 3)
  {
    v14 = v16;
    v13 = v15;
  }

  v17 = 0x800000024AE12D70;
  v18 = 1702259052;
  if (v6 == 1)
  {
    v18 = 0xD000000000000012;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  if (v6)
  {
    v12 = v18;
    v11 = v17;
  }

  if (v6 <= 2)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  if (v6 <= 2)
  {
    v20 = v11;
  }

  else
  {
    v20 = v13;
  }

  MEMORY[0x24C230FB0](v19, v20);

  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  v21 = 0xE700000000000000;
  v22 = 0x6E776F6E6B6E75;
  v23 = 0xE700000000000000;
  v24 = 0x676E696E6E7572;
  v25 = 0xE700000000000000;
  v26 = 0x676E696C637963;
  if (v7 != 4)
  {
    v26 = 0x69746F6D6F747561;
    v25 = 0xEA00000000006576;
  }

  if (v7 != 3)
  {
    v24 = v26;
    v23 = v25;
  }

  v27 = 0xEA00000000007972;
  v28 = 0x616E6F6974617473;
  if (v7 != 1)
  {
    v28 = 0x676E696B6C6177;
    v27 = 0xE700000000000000;
  }

  if (v7)
  {
    v22 = v28;
    v21 = v27;
  }

  if (v7 <= 2)
  {
    v29 = v22;
  }

  else
  {
    v29 = v24;
  }

  if (v7 <= 2)
  {
    v30 = v21;
  }

  else
  {
    v30 = v23;
  }

  MEMORY[0x24C230FB0](v29, v30);

  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v34 = 2;
  sub_24ADE7D84(0, &v34, v4);
  v42[3] = v38;
  v42[4] = v39;
  v42[5] = v40;
  v42[6] = v41;
  v42[0] = v35;
  v42[1] = v36;
  v42[2] = v37;
  sub_24ADA6B3C(v42);
  sub_24AE095D8();
  (*(v2 + 8))(v4, v1);
  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  *&v35 = v5;
  v31 = Location.debugDescription.getter();
  MEMORY[0x24C230FB0](v31);

  MEMORY[0x24C230FB0](34, 0xE100000000000000);
  return v43;
}

uint64_t static PublishedLocation.Label.twoComponentsInfo(_:isLocating:isAbleToPerformLocate:forceNowRecencyKey:maxLength:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4, char a5, int a6, char *a7)
{
  v67 = a6;
  v73 = a2;
  v70 = a1;
  MyRelativeDate = type metadata accessor for FindMyRelativeDate(0);
  MEMORY[0x28223BE20](MyRelativeDate);
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for RelativeDateOrString(0);
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v68 = &v66[-v18];
  v69 = sub_24AE08718();
  v19 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v21 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a3[5];
  v110 = a3[4];
  v111 = v22;
  v23 = a3[7];
  v112 = a3[6];
  v113 = v23;
  v24 = a3[1];
  v107[0] = *a3;
  v107[1] = v24;
  v25 = a3[3];
  v108 = a3[2];
  v109 = v25;
  v26 = *a7;
  v118 = v110;
  v119 = v22;
  v120 = v112;
  v121 = v23;
  v114 = v107[0];
  v115 = v24;
  v116 = v108;
  v117 = v25;
  if (sub_24ADA5794(&v114) == 1)
  {
    if (a4)
    {
      v27 = v69;
      if (a5)
      {
        v28 = v72;
        if (qword_27EFA86A0 != -1)
        {
          swift_once();
        }

        v29 = qword_27EFA9EA0;
LABEL_20:
        v64 = __swift_project_value_buffer(v27, v29);
        v65 = v70;
        (*(v19 + 16))(v70, v64, v27);
        (*(v19 + 56))(v65, 0, 1, v27);
        v54 = *(v71 + 56);
        v55 = v73;
        v56 = 1;
        return v54(v55, v56, 1, v28);
      }
    }

    else
    {
      v27 = v69;
      if (a5)
      {
        if (qword_27EFA86A8 != -1)
        {
          swift_once();
        }

        v49 = __swift_project_value_buffer(v27, qword_27EFA9EB8);
        v50 = *(v19 + 16);
        v51 = v70;
        v50(v70, v49, v27);
        (*(v19 + 56))(v51, 0, 1, v27);
        if (qword_27EFA86B0 != -1)
        {
          swift_once();
        }

        v52 = __swift_project_value_buffer(v27, qword_27EFA9ED0);
        v53 = v73;
        v50(v73, v52, v27);
        v28 = v72;
        swift_storeEnumTagMultiPayload();
        v54 = *(v71 + 56);
        v55 = v53;
        v56 = 0;
        return v54(v55, v56, 1, v28);
      }
    }

    v28 = v72;
    if (qword_27EFA86B8 != -1)
    {
      swift_once();
    }

    v29 = qword_27EFA9EE8;
    goto LABEL_20;
  }

  v94 = v119;
  v95 = v120;
  v96 = v121;
  v90 = v115;
  v91 = v116;
  v92 = v117;
  v93 = v118;
  v30 = v114;
  sub_24AD92B7C(v107, &v98, &qword_27EFA9F18, &unk_24AE102B0);
  sub_24AD9B858(&v115, &v98);
  [v30 horizontalAccuracy];
  LOBYTE(v98) = v26;
  sub_24ADE7D84(v31 > 200.0, &v98, v21);
  v106[4] = v94;
  v106[5] = v95;
  v106[6] = v96;
  v106[0] = v90;
  v106[1] = v91;
  v106[2] = v92;
  v106[3] = v93;
  sub_24ADA6B3C(v106);
  if (v67)
  {
    v78 = v118;
    v79 = v119;
    v80 = v120;
    v81 = v121;
    v74 = v114;
    v75 = v115;
    v76 = v116;
    v77 = v117;
    PublishedLocation.timestamp.getter(v13);
    sub_24ADDC708(v13, v17);
    v32 = &v17[*(MyRelativeDate + 20)];
    v33 = v32[5];
    v34 = v32[3];
    v85 = v32[4];
    v86 = v33;
    v35 = v32[5];
    v36 = v32[7];
    v87 = v32[6];
    v88 = v36;
    v37 = v32[1];
    v38 = v32[3];
    v83 = v32[2];
    v84 = v38;
    v39 = v32[1];
    v82[0] = *v32;
    v82[1] = v39;
    v102 = v85;
    v103 = v35;
    v40 = v32[7];
    v104 = v87;
    v105 = v40;
    v98 = v82[0];
    v99 = v37;
    v100 = v83;
    v101 = v34;
    sub_24ADDC298(v82, &v90);
    FindMyRelativeDate.RecencyKey.forceNowLabels()(&v90);
    sub_24AD92BE4(v107, &qword_27EFA9F18, &unk_24AE102B0);
    sub_24ADEACB8(v13);
    v89[4] = v102;
    v89[5] = v103;
    v89[6] = v104;
    v89[7] = v105;
    v89[0] = v98;
    v89[1] = v99;
    v89[2] = v100;
    v89[3] = v101;
    sub_24ADDC350(v89);
    v41 = v32[5];
    v102 = v32[4];
    v103 = v41;
    v42 = v32[7];
    v104 = v32[6];
    v105 = v42;
    v43 = v32[1];
    v98 = *v32;
    v99 = v43;
    v44 = v32[3];
    v100 = v32[2];
    v101 = v44;
    sub_24ADDC350(&v98);
    v45 = v95;
    v32[4] = v94;
    v32[5] = v45;
    v46 = v97;
    v32[6] = v96;
    v32[7] = v46;
    v47 = v91;
    *v32 = v90;
    v32[1] = v47;
    v48 = v93;
    v32[2] = v92;
    v32[3] = v48;
  }

  else
  {
    v102 = v118;
    v103 = v119;
    v104 = v120;
    v105 = v121;
    v98 = v114;
    v99 = v115;
    v100 = v116;
    v101 = v117;
    PublishedLocation.timestamp.getter(v17);
    sub_24AD92BE4(v107, &qword_27EFA9F18, &unk_24AE102B0);
  }

  v57 = v72;
  swift_storeEnumTagMultiPayload();
  v58 = v68;
  sub_24ADEAC54(v17, v68);
  v59 = v70;
  v60 = v21;
  v61 = v69;
  (*(v19 + 32))(v70, v60, v69);
  (*(v19 + 56))(v59, 0, 1, v61);
  v62 = v73;
  sub_24ADEAC54(v58, v73);
  return (*(v71 + 56))(v62, 0, 1, v57);
}

uint64_t static PublishedLocation.Label.threeComponentsInfo(_:isLocating:isAbleToPerformLocate:forceNowRecencyKey:detailLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, char a5, char a6, int a7, char *a8)
{
  v75 = a7;
  v81 = a3;
  v78 = a2;
  MyRelativeDate = type metadata accessor for FindMyRelativeDate(0);
  MEMORY[0x28223BE20](MyRelativeDate);
  v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RelativeDateOrString(0);
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v76 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v72 - v17;
  v18 = sub_24AE08718();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v72 - v23;
  v25 = a4[5];
  v118 = a4[4];
  v119 = v25;
  v26 = a4[7];
  v120 = a4[6];
  v121 = v26;
  v27 = a4[1];
  v115[0] = *a4;
  v115[1] = v27;
  v28 = a4[3];
  v116 = a4[2];
  v117 = v28;
  v29 = *a8;
  v126 = v118;
  v127 = v25;
  v128 = v120;
  v129 = v26;
  v122 = v115[0];
  v123 = v27;
  v124 = v116;
  v125 = v28;
  if (sub_24ADA5794(&v122) == 1)
  {
    v30 = *(v19 + 56);
    v30(a1, 1, 1, v18);
    if (a5 & 1) != 0 && (a6)
    {
      if (qword_27EFA86A0 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v18, qword_27EFA9EA0);
      v32 = v78;
      (*(v19 + 16))(v78, v31, v18);
      v30(v32, 0, 1, v18);
      return (*(v79 + 56))(v81, 1, 1, v80);
    }

    else
    {
      if (a6)
      {
        if (qword_27EFA86A8 != -1)
        {
          swift_once();
        }

        v56 = __swift_project_value_buffer(v18, qword_27EFA9EB8);
        v57 = *(v19 + 16);
        v58 = v78;
        v57(v78, v56, v18);
        v30(v58, 0, 1, v18);
        if (qword_27EFA86B0 != -1)
        {
          swift_once();
        }

        v59 = __swift_project_value_buffer(v18, qword_27EFA9ED0);
        v60 = v81;
        v57(v81, v59, v18);
        v61 = v80;
        swift_storeEnumTagMultiPayload();
        v62 = *(v79 + 56);
        v63 = v60;
        v64 = 0;
      }

      else
      {
        v61 = v80;
        if (qword_27EFA86B8 != -1)
        {
          swift_once();
        }

        v70 = __swift_project_value_buffer(v18, qword_27EFA9EE8);
        v71 = v78;
        (*(v19 + 16))(v78, v70, v18);
        v30(v71, 0, 1, v18);
        v62 = *(v79 + 56);
        v63 = v81;
        v64 = 1;
      }

      return v62(v63, v64, 1, v61);
    }
  }

  else
  {
    v102 = v127;
    v103 = v128;
    v104 = v129;
    v98 = v123;
    v99 = v124;
    v100 = v125;
    v101 = v126;
    v34 = v122;
    sub_24AD92B7C(v115, &v106, &qword_27EFA9F18, &unk_24AE102B0);
    sub_24AD9B858(&v123, &v106);
    [v34 horizontalAccuracy];
    LOBYTE(v106) = v29;
    sub_24ADE81F8(v24, v21, v35 > 200.0, &v106);
    v114[4] = v102;
    v114[5] = v103;
    v114[6] = v104;
    v114[0] = v98;
    v114[1] = v99;
    v114[2] = v100;
    v114[3] = v101;
    sub_24ADA6B3C(v114);
    v36 = v24;
    if (v75)
    {
      v86 = v126;
      v87 = v127;
      v88 = v128;
      v89 = v129;
      v82 = v122;
      v83 = v123;
      v84 = v124;
      v85 = v125;
      v37 = v74;
      PublishedLocation.timestamp.getter(v74);
      v38 = v76;
      sub_24ADDC708(v37, v76);
      v39 = (v38 + *(MyRelativeDate + 20));
      v40 = v39[5];
      v41 = v39[3];
      v93 = v39[4];
      v94 = v40;
      v42 = v39[5];
      v43 = v39[7];
      v95 = v39[6];
      v96 = v43;
      v44 = v39[1];
      v45 = v39[3];
      v91 = v39[2];
      v92 = v45;
      v46 = v39[1];
      v90[0] = *v39;
      v90[1] = v46;
      v110 = v93;
      v111 = v42;
      v47 = v39[7];
      v112 = v95;
      v113 = v47;
      v106 = v90[0];
      v107 = v44;
      v108 = v91;
      v109 = v41;
      sub_24ADDC298(v90, &v98);
      FindMyRelativeDate.RecencyKey.forceNowLabels()(&v98);
      sub_24AD92BE4(v115, &qword_27EFA9F18, &unk_24AE102B0);
      sub_24ADEACB8(v37);
      v97[4] = v110;
      v97[5] = v111;
      v97[6] = v112;
      v97[7] = v113;
      v97[0] = v106;
      v97[1] = v107;
      v97[2] = v108;
      v97[3] = v109;
      sub_24ADDC350(v97);
      v48 = v39[5];
      v110 = v39[4];
      v111 = v48;
      v49 = v39[7];
      v112 = v39[6];
      v113 = v49;
      v50 = v39[1];
      v106 = *v39;
      v107 = v50;
      v51 = v39[3];
      v108 = v39[2];
      v109 = v51;
      sub_24ADDC350(&v106);
      v52 = v103;
      v39[4] = v102;
      v39[5] = v52;
      v53 = v105;
      v39[6] = v104;
      v39[7] = v53;
      v54 = v99;
      *v39 = v98;
      v39[1] = v54;
      v55 = v101;
      v39[2] = v100;
      v39[3] = v55;
    }

    else
    {
      v110 = v126;
      v111 = v127;
      v112 = v128;
      v113 = v129;
      v106 = v122;
      v107 = v123;
      v108 = v124;
      v109 = v125;
      v38 = v76;
      PublishedLocation.timestamp.getter(v76);
      sub_24AD92BE4(v115, &qword_27EFA9F18, &unk_24AE102B0);
    }

    v65 = v80;
    swift_storeEnumTagMultiPayload();
    v66 = v38;
    v67 = v77;
    sub_24ADEAC54(v66, v77);
    sub_24ADD0C6C(v36, a1);
    v68 = v78;
    (*(v19 + 32))(v78, v21, v18);
    (*(v19 + 56))(v68, 0, 1, v18);
    v69 = v81;
    sub_24ADEAC54(v67, v81);
    return (*(v79 + 56))(v69, 0, 1, v65);
  }
}

Swift::tuple_primary_String_secondary_String_optional __swiftcall PublishedLocation.Label.primaryAndSecondary(isInaccurate:detailLevel:)(Swift::Bool isInaccurate, FindMyCore::PublishedLocation::Label::DetailLevel detailLevel)
{
  v2 = detailLevel;
  v4 = sub_24AE08718();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  result = PublishedLocation.Label.primaryAndSecondaryNoFallbackLabel(isInaccurate:detailLevel:)(isInaccurate, &v12);
  if (!result.primary._object)
  {
    object = result.secondary.value._object;
    countAndFlagsBits = result.secondary.value._countAndFlagsBits;
    if (qword_27EFA8698 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_27EFA9E88);
    (*(v5 + 16))(v7, v10, v4);
    result.primary._countAndFlagsBits = sub_24AE08FE8();
    result.secondary.value._countAndFlagsBits = countAndFlagsBits;
    result.secondary.value._object = object;
  }

  return result;
}

Swift::tuple_primary_String_optional_secondary_String_optional __swiftcall PublishedLocation.Label.primaryAndSecondaryNoFallbackLabel(isInaccurate:detailLevel:)(Swift::Bool isInaccurate, FindMyCore::PublishedLocation::Label::DetailLevel detailLevel)
{
  v3 = detailLevel;
  v5 = sub_24AE08718();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *v3;
  v13 = *v2;
  v12 = v2[1];
  v14 = v2[3];
  v45 = v2[2];
  v46 = v14;
  v15 = v2[4];
  v16 = v2[5];
  v17 = v2[7];
  v38 = v2[6];
  v39 = v17;
  v18 = v2[9];
  v40 = v2[8];
  v41 = v18;
  v19 = v2[10];
  v44 = v2[11];
  v20 = v2[12];
  v21 = v2[13];
  v42 = v19;
  v43 = v20;
  v22 = 0;
  if (isInaccurate)
  {
    v23 = v15;
    if (qword_27EFA86C0 != -1)
    {
      v36 = v7;
      swift_once();
      v7 = v36;
    }

    v24 = v7;
    v25 = __swift_project_value_buffer(v7, qword_27EFA9F00);
    (*(v6 + 16))(v9, v25, v24);
    v22 = sub_24AE08FE8();
    v10 = v26;
    v15 = v23;
  }

  if ((v11 & 1) == 0)
  {
    v27 = v12;
    if (!v12)
    {
      v13 = v43;
      if (!v21)
      {
        v21 = v16;
        v13 = v15;
        if (!v16)
        {
          goto LABEL_31;
        }
      }

      sub_24AE08288();
      v27 = v21;
    }

    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      if (v10)
      {
        v28 = v10;
      }

      else
      {
        v28 = v46;
        sub_24AE08288();
        v22 = v45;
      }

      goto LABEL_41;
    }

    sub_24AE08288();

LABEL_31:
    v13 = v45;
    v27 = v46;
    v28 = v10;
    goto LABEL_41;
  }

  if (v12)
  {
    v27 = v12;
    v28 = v10;
  }

  else
  {
    v28 = v10;
    if (!v21)
    {
      goto LABEL_33;
    }

    sub_24AE08288();
    v13 = v43;
    v27 = v21;
  }

  v30 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v30 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    if (!v28)
    {
      v28 = v44;
      v31 = v42;
      if (!v44)
      {
        v31 = v40;
        v28 = v41;
        if (!v41)
        {
          v31 = v38;
          v28 = v39;
          if (!v39)
          {
            v28 = v46;
            sub_24AE08288();
            v31 = v45;
          }

          sub_24AE08288();
        }

        sub_24AE08288();
      }

      sub_24AE08288();
      v22 = v31;
    }

    goto LABEL_41;
  }

  sub_24AE08288();

LABEL_33:
  if (v44)
  {
    v13 = v42;
    v27 = v44;
  }

  else
  {
    v13 = v40;
    v27 = v41;
    if (!v41)
    {
      v13 = v38;
      v27 = v39;
      if (!v39)
      {
        v27 = v46;
        sub_24AE08288();
        v13 = v45;
      }

      sub_24AE08288();
    }

    sub_24AE08288();
  }

LABEL_41:
  sub_24AE08288();
  v32 = v13;
  v33 = v27;
  v34 = v22;
  v35 = v28;
  result.secondary.value._object = v35;
  result.secondary.value._countAndFlagsBits = v34;
  result.primary.value._object = v33;
  result.primary.value._countAndFlagsBits = v32;
  return result;
}

Swift::String __swiftcall PublishedLocation.Label.combined(maxLength:)(FindMyCore::PublishedLocation::Label::Length maxLength)
{
  v2 = maxLength;
  v3 = sub_24AE08718();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v10 = *v1;
  v9 = v1[1];
  if (v8)
  {
    v12 = v1[6];
    v11 = v1[7];
    v13 = v1[1];
    if (v8 == 1)
    {
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else if (!v9)
    {
      if (v1[9])
      {
        v12 = v1[8];
        v11 = v1[9];
        goto LABEL_12;
      }

LABEL_10:
      if (!v11)
      {
        goto LABEL_11;
      }

LABEL_12:
      sub_24AE08288();
      v10 = v12;
      v13 = v11;
    }

LABEL_13:
    sub_24AE08288();
    goto LABEL_14;
  }

  v13 = v1[1];
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_11:
  v11 = v1[3];
  v12 = v1[2];
  if (v11)
  {
    goto LABEL_12;
  }

  if (qword_27EFA8698 != -1)
  {
    v19 = v5;
    swift_once();
    v5 = v19;
  }

  v16 = v5;
  v17 = __swift_project_value_buffer(v5, qword_27EFA9E88);
  (*(v4 + 16))(v7, v17, v16);
  v10 = sub_24AE08FE8();
  v13 = v18;
LABEL_14:
  v14 = v10;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t PublishedLocation.Label.DetailLevel.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t PublishedLocation.Label.Length.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t _s10FindMyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v79 = a1[10];
  v13 = a1[11];
  v12 = a1[12];
  v81 = a1[13];
  v14 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v16 = a2[4];
  v19 = a2[5];
  v18 = a2[6];
  v20 = a2[7];
  v21 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v24 = a2[11];
  v78 = a2[12];
  v80 = a2[13];
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v72 = a2[6];
      v75 = a2[7];
      v62 = a1[11];
      v63 = a2[11];
      v68 = a1[4];
      v70 = a1[12];
      v64 = a2[4];
      v66 = a2[5];
      v25 = a2[10];
      v26 = a1[8];
      v27 = a1[9];
      v60 = a2[2];
      v61 = a1[2];
      v28 = a2[8];
      v29 = a1[7];
      v30 = a1[5];
      v31 = sub_24AE097C8();
      v7 = v30;
      v18 = v72;
      v20 = v75;
      v10 = v29;
      v21 = v28;
      v15 = v60;
      v4 = v61;
      v11 = v27;
      v9 = v26;
      v22 = v25;
      v19 = v66;
      v5 = v68;
      v12 = v70;
      v13 = v62;
      v24 = v63;
      v16 = v64;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v73 = v18;
      v76 = v20;
      v69 = v5;
      v71 = v12;
      v65 = v16;
      v67 = v19;
      v32 = v22;
      v33 = v9;
      v34 = v11;
      v35 = v23;
      v36 = v21;
      v37 = v10;
      v38 = v7;
      v39 = sub_24AE097C8();
      v7 = v38;
      v18 = v73;
      v20 = v76;
      v10 = v37;
      v21 = v36;
      v23 = v35;
      v11 = v34;
      v9 = v33;
      v16 = v65;
      v22 = v32;
      v19 = v67;
      v5 = v69;
      v12 = v71;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v19)
    {
      return 0;
    }

    if (v5 != v16 || v7 != v19)
    {
      v74 = v18;
      v77 = v20;
      v40 = v12;
      v41 = v22;
      v42 = v9;
      v43 = v11;
      v44 = v23;
      v45 = v21;
      v46 = v10;
      v47 = sub_24AE097C8();
      v18 = v74;
      v20 = v77;
      v10 = v46;
      v21 = v45;
      v23 = v44;
      v11 = v43;
      v9 = v42;
      v22 = v41;
      v12 = v40;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v10)
  {
    if (!v20)
    {
      return 0;
    }

    if (v8 != v18 || v10 != v20)
    {
      v48 = v12;
      v49 = v22;
      v50 = v9;
      v51 = v11;
      v52 = v21;
      v53 = sub_24AE097C8();
      v21 = v52;
      v11 = v51;
      v9 = v50;
      v22 = v49;
      v12 = v48;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v11)
  {
    if (!v23)
    {
      return 0;
    }

    if (v9 != v21 || v11 != v23)
    {
      v54 = v12;
      v55 = v22;
      v56 = sub_24AE097C8();
      v22 = v55;
      v12 = v54;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v13)
  {
    if (!v24)
    {
      return 0;
    }

    if (v79 != v22 || v13 != v24)
    {
      v57 = v12;
      v58 = sub_24AE097C8();
      v12 = v57;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v81)
  {
    if (v80 && (v12 == v78 && v81 == v80 || (sub_24AE097C8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v80)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10FindMyCore17PublishedLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 96);
  v39 = *(a1 + 80);
  v40 = v5;
  v41 = *(a1 + 112);
  v6 = *(a1 + 32);
  v35 = *(a1 + 16);
  v36 = v6;
  v7 = *(a1 + 64);
  v37 = *(a1 + 48);
  v38 = v7;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 96);
  v46 = *(a2 + 80);
  v47 = v11;
  v48 = *(a2 + 112);
  v12 = *(a2 + 32);
  v42 = *(a2 + 16);
  v43 = v12;
  v13 = *(a2 + 64);
  v44 = *(a2 + 48);
  v45 = v13;
  sub_24ADDFF38();
  v14 = v2;
  v15 = v8;
  v16 = sub_24AE09418();

  if (v16 & 1) != 0 && (sub_24ADF69B0(v3, v9) & 1) != 0 && (sub_24ADF6B80(v4, v10))
  {
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v23 = v46;
    v24 = v47;
    v25 = v48;
    v19 = v42;
    v20 = v43;
    v21 = v44;
    v22 = v45;
    MyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0 = _s10FindMyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0(&v26, &v19);
    v33[4] = v23;
    v33[5] = v24;
    v33[6] = v25;
    v33[0] = v19;
    v33[1] = v20;
    v33[2] = v21;
    v33[3] = v22;
    sub_24AD9B858(&v35, v34);
    sub_24AD9B858(&v42, v34);
    sub_24ADA6B3C(v33);
    v34[4] = v30;
    v34[5] = v31;
    v34[6] = v32;
    v34[0] = v26;
    v34[1] = v27;
    v34[2] = v28;
    v34[3] = v29;
    sub_24ADA6B3C(v34);
  }

  else
  {
    MyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0 = 0;
  }

  return MyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t sub_24ADEAC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelativeDateOrString(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADEACB8(uint64_t a1)
{
  MyRelativeDate = type metadata accessor for FindMyRelativeDate(0);
  (*(*(MyRelativeDate - 8) + 8))(a1, MyRelativeDate);
  return a1;
}

unint64_t sub_24ADEAD18()
{
  result = qword_27EFA9F20;
  if (!qword_27EFA9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F20);
  }

  return result;
}

unint64_t sub_24ADEAD70()
{
  result = qword_27EFA9F28;
  if (!qword_27EFA9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F28);
  }

  return result;
}

unint64_t sub_24ADEADC8()
{
  result = qword_27EFA9F30;
  if (!qword_27EFA9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F30);
  }

  return result;
}

unint64_t sub_24ADEAE20()
{
  result = qword_27EFA9F38;
  if (!qword_27EFA9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F38);
  }

  return result;
}

unint64_t sub_24ADEAE78()
{
  result = qword_27EFA9F40;
  if (!qword_27EFA9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F40);
  }

  return result;
}

unint64_t sub_24ADEAED0()
{
  result = qword_27EFA9F48;
  if (!qword_27EFA9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F48);
  }

  return result;
}

uint64_t sub_24ADEAF24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_24ADEAF6C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24ADEAFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_24ADEB058(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s10FindMyCore20RelativeDateOrStringO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_24AE08718();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyRelativeDate = type metadata accessor for FindMyRelativeDate(0);
  MEMORY[0x28223BE20](MyRelativeDate);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RelativeDateOrString(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9F60, "TX");
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v44 - v16;
  v18 = *(v15 + 56);
  sub_24ADEB6E0(a1, &v44 - v16);
  sub_24ADEB6E0(v47, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24ADEB6E0(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = &v17[v18];
      v22 = v46;
      sub_24ADEB80C(v21, v46);
      if (sub_24AE088C8())
      {
        v23 = &v13[*(MyRelativeDate + 20)];
        v24 = *(v23 + 5);
        v25 = *(v23 + 3);
        v68 = *(v23 + 4);
        v69 = v24;
        v26 = *(v23 + 5);
        v27 = *(v23 + 7);
        v70 = *(v23 + 6);
        v71 = v27;
        v28 = *(v23 + 1);
        v65[0] = *v23;
        v65[1] = v28;
        v29 = *(v23 + 3);
        v31 = *v23;
        v30 = *(v23 + 1);
        v66 = *(v23 + 2);
        v67 = v29;
        v61 = v68;
        v62 = v26;
        v32 = *(v23 + 7);
        v63 = v70;
        v64 = v32;
        v59 = v66;
        v60 = v25;
        v57 = v31;
        v58 = v30;
        v33 = (v22 + *(MyRelativeDate + 20));
        v34 = v33[5];
        v35 = v33[3];
        v75 = v33[4];
        v76 = v34;
        v36 = v33[5];
        v37 = v33[7];
        v77 = v33[6];
        v78 = v37;
        v38 = v33[1];
        v39 = v33[3];
        v73 = v33[2];
        v74 = v39;
        v40 = v33[1];
        v72[0] = *v33;
        v72[1] = v40;
        v53 = v75;
        v54 = v36;
        v41 = v33[7];
        v55 = v77;
        v56 = v41;
        v49 = v72[0];
        v50 = v38;
        v51 = v73;
        v52 = v35;
        sub_24ADDC298(v65, v48);
        sub_24ADDC298(v72, v48);
        MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0 = _s10FindMyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0(&v57, &v49);
        sub_24ADEB7AC(v22, type metadata accessor for FindMyRelativeDate);
        v79[4] = v53;
        v79[5] = v54;
        v79[6] = v55;
        v79[7] = v56;
        v79[0] = v49;
        v79[1] = v50;
        v79[2] = v51;
        v79[3] = v52;
        sub_24ADDC350(v79);
        v80[4] = v61;
        v80[5] = v62;
        v80[6] = v63;
        v80[7] = v64;
        v80[0] = v57;
        v80[1] = v58;
        v80[2] = v59;
        v80[3] = v60;
        sub_24ADDC350(v80);
        if (MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0)
        {
          sub_24ADEB7AC(v13, type metadata accessor for FindMyRelativeDate);
          sub_24ADEB7AC(v17, type metadata accessor for RelativeDateOrString);
          v19 = 1;
          return v19 & 1;
        }
      }

      else
      {
        sub_24ADEB7AC(v22, type metadata accessor for FindMyRelativeDate);
      }

      sub_24ADEB7AC(v13, type metadata accessor for FindMyRelativeDate);
      sub_24ADEB7AC(v17, type metadata accessor for RelativeDateOrString);
LABEL_13:
      v19 = 0;
      return v19 & 1;
    }

    sub_24ADEB7AC(v13, type metadata accessor for FindMyRelativeDate);
LABEL_7:
    sub_24ADEB744(v17);
    goto LABEL_13;
  }

  sub_24ADEB6E0(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v11, v3);
    goto LABEL_7;
  }

  (*(v4 + 32))(v6, &v17[v18], v3);
  v19 = MEMORY[0x24C230640](v11, v6);
  v20 = *(v4 + 8);
  v20(v6, v3);
  v20(v11, v3);
  sub_24ADEB7AC(v17, type metadata accessor for RelativeDateOrString);
  return v19 & 1;
}

uint64_t type metadata accessor for RelativeDateOrString(uint64_t a1)
{
  result = qword_27EFA9F50;
  if (!qword_27EFA9F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ADEB66C(uint64_t a1)
{
  result = type metadata accessor for FindMyRelativeDate(319);
  if (v2 <= 0x3F)
  {
    result = sub_24AE08718();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ADEB6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelativeDateOrString(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADEB744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9F60, "TX");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADEB7AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ADEB80C(uint64_t a1, uint64_t a2)
{
  MyRelativeDate = type metadata accessor for FindMyRelativeDate(0);
  (*(*(MyRelativeDate - 8) + 32))(a2, a1, MyRelativeDate);
  return a2;
}

uint64_t Symbol.description.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t Symbol.description.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Symbol.systemSymbol.getter()
{
  v1 = *(v0 + 16);
  sub_24AE08288();
  return v1;
}

uint64_t Symbol.systemSymbol.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall Symbol.init(description:systemSymbol:supportsCircleVariant:color:)(FindMyCore::Symbol *__return_ptr retstr, Swift::String description, Swift::String systemSymbol, Swift::Bool supportsCircleVariant, FindMyCore::Symbol::Color color)
{
  v5 = *color;
  retstr->description = description;
  retstr->systemSymbol = systemSymbol;
  retstr->supportsCircleVariant = supportsCircleVariant;
  retstr->color = v5;
}

void __swiftcall Symbol.withOtherColor(_:)(FindMyCore::Symbol *__return_ptr retstr, FindMyCore::Symbol::Color a2)
{
  v3 = *a2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  retstr->description._countAndFlagsBits = *v2;
  retstr->description._object = v4;
  retstr->systemSymbol._countAndFlagsBits = v5;
  retstr->systemSymbol._object = v6;
  retstr->supportsCircleVariant = v7;
  retstr->color = v3;
  sub_24AE08288();

  sub_24AE08288();
}

uint64_t Symbol.Color.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t Symbol.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 33);
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  return MEMORY[0x24C231780](v2);
}

uint64_t Symbol.hashValue.getter()
{
  v1 = *(v0 + 33);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t sub_24ADEBBFC()
{
  v1 = *(v0 + 33);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t sub_24ADEBC94(uint64_t a1)
{
  v2 = *(v1 + 33);
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  return MEMORY[0x24C231780](v2);
}

uint64_t sub_24ADEBCFC(uint64_t a1)
{
  v2 = *(v1 + 33);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  MEMORY[0x24C231780](v2);
  return sub_24AE09868();
}

void sub_24ADEBD94()
{
  qword_27EFA9F68 = 0;
  unk_27EFA9F70 = 0xE000000000000000;
  qword_27EFA9F78 = 0;
  unk_27EFA9F80 = 0xE000000000000000;
  word_27EFA9F88 = 256;
}

uint64_t static Symbol.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFA9F70;
  v2 = qword_27EFA9F78;
  v3 = unk_27EFA9F80;
  v4 = word_27EFA9F88;
  v5 = HIBYTE(word_27EFA9F88);
  *a1 = qword_27EFA9F68;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEBE48()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFA9F90 = v8;
  *algn_27EFA9F98 = v10;
  qword_27EFA9FA0 = 0x796D646E6966;
  unk_27EFA9FA8 = 0xE600000000000000;
  word_27EFA9FB0 = 256;
}

uint64_t static Symbol.findmy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86D0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFA9F98;
  v2 = qword_27EFA9FA0;
  v3 = unk_27EFA9FA8;
  v4 = word_27EFA9FB0;
  v5 = HIBYTE(word_27EFA9FB0);
  *a1 = qword_27EFA9F90;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC04C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFA9FB8 = v8;
  unk_27EFA9FC0 = v10;
  qword_27EFA9FC8 = 0x662E656C63726963;
  unk_27EFA9FD0 = 0xEB000000006C6C69;
  word_27EFA9FD8 = 1536;
}

uint64_t static Symbol.notification.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86D8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFA9FC0;
  v2 = qword_27EFA9FC8;
  v3 = unk_27EFA9FD0;
  v4 = word_27EFA9FD8;
  v5 = HIBYTE(word_27EFA9FD8);
  *a1 = qword_27EFA9FB8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC25C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFA9FE0 = v8;
  *algn_27EFA9FE8 = v10;
  qword_27EFA9FF0 = 1918989427;
  unk_27EFA9FF8 = 0xE400000000000000;
  word_27EFAA000 = 513;
}

uint64_t static Symbol.favorite.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86E0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFA9FE8;
  v2 = qword_27EFA9FF0;
  v3 = unk_27EFA9FF8;
  v4 = word_27EFAA000;
  v5 = HIBYTE(word_27EFAA000);
  *a1 = qword_27EFA9FE0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC45C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA008 = v8;
  unk_27EFAA010 = v10;
  qword_27EFAA018 = 0x72656D6974;
  unk_27EFAA020 = 0xE500000000000000;
  word_27EFAA028 = 769;
}

uint64_t static Symbol.temporary.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86E8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA010;
  v2 = qword_27EFAA018;
  v3 = unk_27EFAA020;
  v4 = word_27EFAA028;
  v5 = HIBYTE(word_27EFAA028);
  *a1 = qword_27EFAA008;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC660()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA030 = v8;
  *algn_27EFAA038 = v10;
  qword_27EFAA040 = 0x616C732E6C6C6562;
  unk_27EFAA048 = 0xEA00000000006873;
  word_27EFAA050 = 2049;
}

uint64_t static Symbol.mute.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA038;
  v2 = qword_27EFAA040;
  v3 = unk_27EFAA048;
  v4 = word_27EFAA050;
  v5 = HIBYTE(word_27EFAA050);
  *a1 = qword_27EFAA030;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC86C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA058 = v8;
  unk_27EFAA060 = v10;
  qword_27EFAA068 = 0xD000000000000010;
  unk_27EFAA070 = 0x800000024AE13C80;
  word_27EFAA078 = 1;
}

uint64_t static Symbol.satellite.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86F8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA060;
  v2 = qword_27EFAA068;
  v3 = unk_27EFAA070;
  v4 = word_27EFAA078;
  v5 = HIBYTE(word_27EFAA078);
  *a1 = qword_27EFAA058;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADECA80()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA080 = v8;
  *algn_27EFAA088 = v10;
  qword_27EFAA090 = 0x772E657275676966;
  unk_27EFAA098 = 0xEB000000006B6C61;
  word_27EFAA0A0 = 2561;
}

uint64_t static Symbol.walking.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8700 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA088;
  v2 = qword_27EFAA090;
  v3 = unk_27EFAA098;
  v4 = word_27EFAA0A0;
  v5 = HIBYTE(word_27EFAA0A0);
  *a1 = qword_27EFAA080;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADECC90()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA0A8 = v8;
  unk_27EFAA0B0 = v10;
  qword_27EFAA0B8 = 0x722E657275676966;
  unk_27EFAA0C0 = 0xEA00000000006E75;
  word_27EFAA0C8 = 2561;
}

uint64_t static Symbol.running.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8708 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA0B0;
  v2 = qword_27EFAA0B8;
  v3 = unk_27EFAA0C0;
  v4 = word_27EFAA0C8;
  v5 = HIBYTE(word_27EFAA0C8);
  *a1 = qword_27EFAA0A8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADECE9C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA0D0 = v8;
  *algn_27EFAA0D8 = v10;
  qword_27EFAA0E0 = 0x656C6379636962;
  unk_27EFAA0E8 = 0xE700000000000000;
  word_27EFAA0F0 = 2561;
}

uint64_t static Symbol.cycling.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8710 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA0D8;
  v2 = qword_27EFAA0E0;
  v3 = unk_27EFAA0E8;
  v4 = word_27EFAA0F0;
  v5 = HIBYTE(word_27EFAA0F0);
  *a1 = qword_27EFAA0D0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED0A4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA0F8 = v8;
  unk_27EFAA100 = v10;
  qword_27EFAA108 = 7496035;
  unk_27EFAA110 = 0xE300000000000000;
  word_27EFAA118 = 2561;
}

uint64_t static Symbol.automotive.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8718 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA100;
  v2 = qword_27EFAA108;
  v3 = unk_27EFAA110;
  v4 = word_27EFAA118;
  v5 = HIBYTE(word_27EFAA118);
  *a1 = qword_27EFAA0F8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED2A4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA120 = v8;
  *algn_27EFAA128 = v10;
  qword_27EFAA130 = 1835102836;
  unk_27EFAA138 = 0xE400000000000000;
  word_27EFAA140 = 2561;
}

uint64_t static Symbol.transit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8720 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA128;
  v2 = qword_27EFAA130;
  v3 = unk_27EFAA138;
  v4 = word_27EFAA140;
  v5 = HIBYTE(word_27EFAA140);
  *a1 = qword_27EFAA120;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED4A4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA148 = v8;
  unk_27EFAA150 = v10;
  qword_27EFAA158 = 0x632E6E6F73726570;
  unk_27EFAA160 = 0xEB00000000706F72;
  word_27EFAA168 = 1281;
}

uint64_t static Symbol.contact.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8728 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA150;
  v2 = qword_27EFAA158;
  v3 = unk_27EFAA160;
  v4 = word_27EFAA168;
  v5 = HIBYTE(word_27EFAA168);
  *a1 = qword_27EFAA148;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED6B4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA170 = v8;
  *algn_27EFAA178 = v10;
  qword_27EFAA180 = 1868983913;
  unk_27EFAA188 = 0xE400000000000000;
  word_27EFAA190 = 769;
}

uint64_t static Symbol.info.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8730 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA178;
  v2 = qword_27EFAA180;
  v3 = unk_27EFAA188;
  v4 = word_27EFAA190;
  v5 = HIBYTE(word_27EFAA190);
  *a1 = qword_27EFAA170;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED8B4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA198 = v8;
  unk_27EFAA1A0 = v10;
  qword_27EFAA1A8 = 0xD000000000000020;
  unk_27EFAA1B0 = 0x800000024AE13D40;
  word_27EFAA1B8 = 1025;
}

uint64_t static Symbol.directions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8738 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA1A0;
  v2 = qword_27EFAA1A8;
  v3 = unk_27EFAA1B0;
  v4 = word_27EFAA1B8;
  v5 = HIBYTE(word_27EFAA1B8);
  *a1 = qword_27EFAA198;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEDACC()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA1C0 = v8;
  *algn_27EFAA1C8 = v10;
  qword_27EFAA1D0 = 0xD000000000000018;
  unk_27EFAA1D8 = 0x800000024AE13B40;
  word_27EFAA1E0 = 1024;
}

uint64_t static Symbol.locationSlash.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8740 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA1C8;
  v2 = qword_27EFAA1D0;
  v3 = unk_27EFAA1D8;
  v4 = word_27EFAA1E0;
  v5 = HIBYTE(word_27EFAA1E0);
  *a1 = qword_27EFAA1C0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEDCDC()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA1E8 = v8;
  unk_27EFAA1F0 = v10;
  qword_27EFAA1F8 = 0xD000000000000017;
  unk_27EFAA200 = 0x800000024AE13AF0;
  word_27EFAA208 = 2560;
}

uint64_t static Symbol.batteryChargingFull.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8748 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA1F0;
  v2 = qword_27EFAA1F8;
  v3 = unk_27EFAA200;
  v4 = word_27EFAA208;
  v5 = HIBYTE(word_27EFAA208);
  *a1 = qword_27EFAA1E8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEDEEC()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA210 = v8;
  *algn_27EFAA218 = v10;
  qword_27EFAA220 = 0xD000000000000011;
  unk_27EFAA228 = 0x800000024AE13AA0;
  word_27EFAA230 = 2560;
}

uint64_t static Symbol.batteryCharging.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8750 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA218;
  v2 = qword_27EFAA220;
  v3 = unk_27EFAA228;
  v4 = word_27EFAA230;
  v5 = HIBYTE(word_27EFAA230);
  *a1 = qword_27EFAA210;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE0FC()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA238 = v8;
  unk_27EFAA240 = v10;
  qword_27EFAA248 = 0xD000000000000011;
  unk_27EFAA250 = 0x800000024AE13A50;
  word_27EFAA258 = 2560;
}

uint64_t static Symbol.batteryThreeQuarters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8758 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA240;
  v2 = qword_27EFAA248;
  v3 = unk_27EFAA250;
  v4 = word_27EFAA258;
  v5 = HIBYTE(word_27EFAA258);
  *a1 = qword_27EFAA238;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE30C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA260 = v8;
  *algn_27EFAA268 = v10;
  qword_27EFAA270 = 0xD000000000000011;
  unk_27EFAA278 = 0x800000024AE13A00;
  word_27EFAA280 = 2560;
}

uint64_t static Symbol.batteryHalf.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8760 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA268;
  v2 = qword_27EFAA270;
  v3 = unk_27EFAA278;
  v4 = word_27EFAA280;
  v5 = HIBYTE(word_27EFAA280);
  *a1 = qword_27EFAA260;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE51C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA288 = v8;
  unk_27EFAA290 = v10;
  qword_27EFAA298 = 0xD000000000000011;
  unk_27EFAA2A0 = 0x800000024AE13990;
  word_27EFAA2A8 = 2560;
}

uint64_t static Symbol.batteryQuarter.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8768 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA290;
  v2 = qword_27EFAA298;
  v3 = unk_27EFAA2A0;
  v4 = word_27EFAA2A8;
  v5 = HIBYTE(word_27EFAA2A8);
  *a1 = qword_27EFAA288;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE72C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA2B0 = v8;
  *algn_27EFAA2B8 = v10;
  qword_27EFAA2C0 = 0xD000000000000011;
  unk_27EFAA2C8 = 0x800000024AE13990;
  word_27EFAA2D0 = 768;
}

uint64_t static Symbol.batteryLow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8770 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA2B8;
  v2 = qword_27EFAA2C0;
  v3 = unk_27EFAA2C8;
  v4 = word_27EFAA2D0;
  v5 = HIBYTE(word_27EFAA2D0);
  *a1 = qword_27EFAA2B0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE93C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA2D8 = v8;
  unk_27EFAA2E0 = v10;
  qword_27EFAA2E8 = 0xD000000000000010;
  unk_27EFAA2F0 = 0x800000024AE13950;
  word_27EFAA2F8 = 1536;
}

uint64_t static Symbol.batteryVeryLow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8778 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA2E0;
  v2 = qword_27EFAA2E8;
  v3 = unk_27EFAA2F0;
  v4 = word_27EFAA2F8;
  v5 = HIBYTE(word_27EFAA2F8);
  *a1 = qword_27EFAA2D8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEEB4C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA300 = v8;
  *algn_27EFAA308 = v10;
  qword_27EFAA310 = 2036427888;
  unk_27EFAA318 = 0xE400000000000000;
  word_27EFAA320 = 1793;
}

uint64_t static Symbol.sound.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8780 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA308;
  v2 = qword_27EFAA310;
  v3 = unk_27EFAA318;
  v4 = word_27EFAA320;
  v5 = HIBYTE(word_27EFAA320);
  *a1 = qword_27EFAA300;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEED4C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA328 = v8;
  unk_27EFAA330 = v10;
  strcpy(&qword_27EFAA338, "questionmark");
  unk_27EFAA345 = 0;
  unk_27EFAA346 = -5120;
  word_27EFAA348 = 769;
}

uint64_t static Symbol.questionMark.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8788 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA330;
  v2 = qword_27EFAA338;
  v3 = unk_27EFAA340;
  v4 = word_27EFAA348;
  v5 = HIBYTE(word_27EFAA348);
  *a1 = qword_27EFAA328;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEEF5C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA350 = v8;
  *algn_27EFAA358 = v10;
  qword_27EFAA360 = 0x74616D616C637865;
  unk_27EFAA368 = 0xEF6B72616D6E6F69;
  word_27EFAA370 = 769;
}

uint64_t static Symbol.exclamationMark.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8790 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA358;
  v2 = qword_27EFAA360;
  v3 = unk_27EFAA368;
  v4 = word_27EFAA370;
  v5 = HIBYTE(word_27EFAA370);
  *a1 = qword_27EFAA350;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEF170()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA378 = v8;
  unk_27EFAA380 = v10;
  qword_27EFAA388 = 0x322E6E6F73726570;
  unk_27EFAA390 = 0xE800000000000000;
  word_27EFAA398 = 2305;
}

uint64_t static Symbol.sharing.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8798 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA380;
  v2 = qword_27EFAA388;
  v3 = unk_27EFAA390;
  v4 = word_27EFAA398;
  v5 = HIBYTE(word_27EFAA398);
  *a1 = qword_27EFAA378;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEF378()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA3A0 = v8;
  *algn_27EFAA3A8 = v10;
  qword_27EFAA3B0 = 1918985575;
  unk_27EFAA3B8 = 0xE400000000000000;
  word_27EFAA3C0 = 2049;
}

uint64_t static Symbol.settings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA87A0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA3A8;
  v2 = qword_27EFAA3B0;
  v3 = unk_27EFAA3B8;
  v4 = word_27EFAA3C0;
  v5 = HIBYTE(word_27EFAA3C0);
  *a1 = qword_27EFAA3A0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

BOOL _s10FindMyCore6SymbolV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 == v9;
  }

  v11 = sub_24AE097C8();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 == v9;
  }

  return result;
}

unint64_t sub_24ADEF64C()
{
  result = qword_27EFAA3C8;
  if (!qword_27EFAA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3C8);
  }

  return result;
}

unint64_t sub_24ADEF6A4()
{
  result = qword_27EFAA3D0;
  if (!qword_27EFAA3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFAA3D8, &qword_24AE107E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3D0);
  }

  return result;
}

unint64_t sub_24ADEF70C()
{
  result = qword_27EFAA3E0;
  if (!qword_27EFAA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3E0);
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

uint64_t sub_24ADEF774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_24ADEF7BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Symbol.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Symbol.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ADEFA14()
{
  result = qword_27EFAA3E8;
  if (!qword_27EFAA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3E8);
  }

  return result;
}

__n128 ItemModel.init(uniqueID:displayName:imageDefinition:owner:relationship:kind:partsIdentifiers:battery:capabilities:playSoundState:lostModeState:)@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, char *a11, char *a12)
{
  v12 = *(a3 + 16);
  *(a9 + 32) = *a3;
  *(a9 + 48) = v12;
  *(a9 + 64) = *(a3 + 32);
  v13 = *(a4 + 16);
  *(a9 + 88) = *a4;
  v14 = *a1;
  v15 = a1[1];
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a3 + 48);
  v19 = *(a4 + 48);
  v20 = *a5;
  v21 = *a6;
  v22 = *a8;
  v23 = *a10;
  v24 = *a11;
  v25 = *a12;
  *a9 = v14;
  *(a9 + 8) = v15;
  *(a9 + 16) = v16;
  *(a9 + 24) = v17;
  *(a9 + 80) = v18;
  *(a9 + 104) = v13;
  result = *(a4 + 32);
  *(a9 + 120) = result;
  *(a9 + 136) = v19;
  *(a9 + 144) = v20;
  *(a9 + 145) = v21;
  *(a9 + 152) = a7;
  *(a9 + 160) = v22;
  *(a9 + 168) = v23;
  *(a9 + 176) = v24;
  *(a9 + 177) = v25;
  return result;
}

uint64_t sub_24ADEFAF8(uint64_t a1, unsigned __int8 a2)
{
  sub_24AE09048();
}

uint64_t ItemModel.displayName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t ItemModel.displayName.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ItemModel.imageDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 80);
  *(a1 + 48) = v8;
  return sub_24ADB7988(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ItemModel.imageDefinition.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_24ADEFD28(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v7;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  return result;
}

uint64_t sub_24ADEFD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 0x80) == 0)
  {
  }

  return result;
}

void ItemModel.owner.getter(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_24ADC4008(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ItemModel.owner.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_24ADEFE3C(v1[11], v1[12], v1[13], v1[14], v1[15], v1[16], v1[17]);
  v4 = *a1;
  *(v1 + 13) = a1[1];
  *(v1 + 11) = v4;
  result = v6;
  *(v1 + 15) = v6;
  v1[17] = v3;
  return result;
}

void sub_24ADEFE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t ItemModel.partsIdentifiers.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t ItemModel.resolvedIdentifiers.getter()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
    sub_24AE08288();
  }

  else
  {
    v3 = *v0;
    v2 = v0[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90C0, &unk_24AE0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AE0A280;
    *(inited + 32) = v3;
    *(inited + 40) = v2;
    sub_24AE08288();
    v1 = sub_24ADDBE34(inited);
    swift_setDeallocating();
    sub_24ADF0D3C(inited + 32);
  }

  return v1;
}

uint64_t ItemModel.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v8 = *(v1 + 104);
  v9 = *(v1 + 96);
  v10 = *(v1 + 136);
  v11 = *(v1 + 144);
  v12 = *(v1 + 145);
  v13 = *(v1 + 152);
  v14 = *(v1 + 160);
  v15 = *(v1 + 168);
  MEMORY[0x24C230FB0](*v1, *(v1 + 8));
  sub_24AE09048();

  sub_24AE09048();
  if (v4 < 0)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
    v5 = v11;
    v6 = v10;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v3)
    {
      sub_24AE09048();
    }

    v5 = v11;
    v6 = v10;
    sub_24ADEFAF8(a1, v4);
    if (v9)
    {
LABEL_8:
      MEMORY[0x24C231780](1);
      sub_24AE09048();
      MEMORY[0x24C231780](v8);
      sub_24AE09048();
      if (v6)
      {
        sub_24AE09858();
        sub_24AE09048();
        if (v5 == 2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_24AE09858();
        if (v5 == 2)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_12;
    }
  }

  MEMORY[0x24C231780](0);
  if (v5 == 2)
  {
LABEL_10:
    MEMORY[0x24C231780](0);
    goto LABEL_13;
  }

LABEL_12:
  MEMORY[0x24C231780](1);
  sub_24AE09858();
LABEL_13:
  MEMORY[0x24C231780](v12);
  sub_24ADF0588(a1, v13);
  MEMORY[0x24C231780](v14);
  MEMORY[0x24C231780](v15);
  sub_24AE09048();

  sub_24AE09048();
}

uint64_t ItemModel.hashValue.getter()
{
  sub_24AE09838();
  ItemModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF04F8()
{
  sub_24AE09838();
  ItemModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF053C(uint64_t a1)
{
  sub_24AE09838();
  ItemModel.hash(into:)(v2);
  return sub_24AE09868();
}

uint64_t ItemModel.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t sub_24ADF0588(__int128 *a1, uint64_t a2)
{
  sub_24AE09868();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  result = sub_24AE08288();
  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_24AE09838();
    sub_24AE08288();
    MEMORY[0x24C230FB0](v13, v14);
    sub_24AE09048();

    v15 = sub_24AE09868();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C231780](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ADF0718(__int128 *a1, uint64_t a2)
{
  sub_24AE09868();
  v21 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  result = sub_24AE08288();
  v9 = 0;
  v10 = 0;
  v19 = v7;
  v20 = v3;
  while (v6)
  {
    v22 = v9;
LABEL_11:
    v13 = *(v21 + 48) + 48 * (__clz(__rbit64(v6)) | (v10 << 6));
    v14 = *(v13 + 16);
    v15 = *(v13 + 40);
    sub_24AE09838();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE09048();
    MEMORY[0x24C231780](v14);
    sub_24AE09048();
    MEMORY[0x24C231780](*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 64;
      do
      {
        v18 = *(v17 - 16);
        sub_24AE08288();
        sub_24AE08288();
        sub_24AE09048();
        MEMORY[0x24C231780](v18);
        sub_24AE09048();

        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v6 &= v6 - 1;
    v11 = sub_24AE09868();

    v9 = v11 ^ v22;
    v7 = v19;
    v3 = v20;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x24C231780](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v22 = v9;
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10FindMyCore9ItemModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v51 = *(a1 + 32);
  v52 = *(a1 + 24);
  v49 = *(a1 + 48);
  v50 = *(a1 + 40);
  v47 = *(a1 + 64);
  v48 = *(a1 + 56);
  v46 = *(a1 + 72);
  v45 = *(a1 + 80);
  v36 = *(a1 + 96);
  v37 = *(a1 + 88);
  v34 = *(a1 + 112);
  v35 = *(a1 + 104);
  v32 = *(a1 + 128);
  v33 = *(a1 + 120);
  v31 = *(a1 + 136);
  v23 = *(a1 + 144);
  v21 = *(a1 + 145);
  v19 = *(a1 + 152);
  v17 = *(a1 + 160);
  v15 = *(a1 + 168);
  v13 = *(a1 + 176);
  v11 = *(a1 + 177);
  v3 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v43 = a2[5];
  v44 = a2[4];
  v41 = a2[7];
  v42 = a2[6];
  v39 = a2[9];
  v40 = a2[8];
  v38 = *(a2 + 80);
  v29 = a2[12];
  v30 = a2[11];
  v27 = a2[14];
  v28 = a2[13];
  v25 = a2[16];
  v26 = a2[15];
  v24 = a2[17];
  v22 = *(a2 + 144);
  v20 = *(a2 + 145);
  v18 = a2[19];
  v16 = a2[20];
  v14 = a2[21];
  v12 = *(a2 + 176);
  v10 = *(a2 + 177);
  MEMORY[0x24C230FB0](*a1, *(a1 + 8));
  v60 = 0x3A315644494142;
  MEMORY[0x24C230FB0](v3, v4);

  if (__PAIR128__(v52, v2) != __PAIR128__(v5, v6) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  v60 = v51;
  v61 = v50;
  v62 = v49;
  v63 = v48;
  v64 = v47;
  v65 = v46;
  LOBYTE(v66) = v45;
  v53 = v44;
  v54 = v43;
  v55 = v42;
  v56 = v41;
  v57 = v40;
  v58 = v39;
  LOBYTE(v59) = v38;
  sub_24ADB7988(v51, v50, v49, v48, v47, v46, v45);
  sub_24ADB7988(v44, v43, v42, v41, v40, v39, v38);
  MyCore9ItemModelV15ImageDefinitionO2eeoiySbAE_AEtFZ_0 = _s10FindMyCore9ItemModelV15ImageDefinitionO2eeoiySbAE_AEtFZ_0(&v60, &v53);
  sub_24ADEFD28(v53, v54, v55, v56, v57, v58, v59);
  sub_24ADEFD28(v60, v61, v62, v63, v64, v65, v66);
  if ((MyCore9ItemModelV15ImageDefinitionO2eeoiySbAE_AEtFZ_0 & 1) == 0)
  {
    return 0;
  }

  v60 = v37;
  v61 = v36;
  v62 = v35;
  v63 = v34;
  v64 = v33;
  v65 = v32;
  v66 = v31;
  v53 = v30;
  v54 = v29;
  v55 = v28;
  v56 = v27;
  v57 = v26;
  v58 = v25;
  v59 = v24;
  sub_24ADC4008(v37, v36, v35, v34, v33, v32, v31);
  sub_24ADC4008(v30, v29, v28, v27, v26, v25, v24);
  MyCore9ItemModelV5OwnerO2eeoiySbAE_AEtFZ_0 = _s10FindMyCore9ItemModelV5OwnerO2eeoiySbAE_AEtFZ_0(&v60, &v53);
  sub_24ADEFE3C(v53, v54, v55, v56, v57, v58, v59);
  sub_24ADEFE3C(v60, v61, v62, v63, v64, v65, v66);
  if (!MyCore9ItemModelV5OwnerO2eeoiySbAE_AEtFZ_0)
  {
    return 0;
  }

  if (v23 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  if (((v21 ^ v20) & 1) != 0 || (sub_24ADFFDD8(v19, v18) & 1) == 0 || v17 != v16 || v15 != v14 || (sub_24ADF63D8(v13, v12) & 1) == 0)
  {
    return 0;
  }

  return sub_24ADF6598(v11, v10);
}

unint64_t sub_24ADF0D94()
{
  result = qword_27EFAA3F0;
  if (!qword_27EFAA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA3F0);
  }

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

uint64_t sub_24ADF0E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
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

uint64_t sub_24ADF0E6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t ItemModel.BAIdentifier.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08928();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ItemModel.BAIdentifier.init(rawValue:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA3F8, &qword_24AE10B38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_24AE08928();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ItemModel.BAIdentifier(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE088F8();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24ADF11DC(v6);
    v15 = 1;
  }

  else
  {
    v16 = *(v8 + 32);
    v16(v10, v6, v7);
    v16(v14, v10, v7);
    sub_24ADF1244(v14, a3);
    v15 = 0;
  }

  return (*(v12 + 56))(a3, v15, 1, v11);
}

uint64_t type metadata accessor for ItemModel.BAIdentifier(uint64_t a1)
{
  result = qword_281519C28;
  if (!qword_281519C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ADF11DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA3F8, &qword_24AE10B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADF1244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemModel.BAIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ItemModel.BAIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AE08928();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ItemModel.BAIdentifier.hash(into:)(uint64_t a1)
{
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_24AE08EB8();
}

uint64_t ItemModel.BAIdentifier.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24AE08EB8();
  return sub_24AE09868();
}

uint64_t sub_24ADF1428()
{
  sub_24AE09838();
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24AE08EB8();
  return sub_24AE09868();
}

uint64_t sub_24ADF14B0(uint64_t a1)
{
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_24AE08EB8();
}

uint64_t sub_24ADF1534(uint64_t a1)
{
  sub_24AE09838();
  sub_24AE08928();
  sub_24ADF1600(&qword_27EFA8EC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24AE08EB8();
  return sub_24AE09868();
}

uint64_t sub_24ADF1600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ADF1670(uint64_t a1)
{
  result = sub_24AE08928();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24ADF1750()
{
  result = qword_27EFAA408;
  if (!qword_27EFAA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA408);
  }

  return result;
}

unint64_t sub_24ADF17A8()
{
  result = qword_27EFAA410;
  if (!qword_27EFAA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA410);
  }

  return result;
}

unint64_t sub_24ADF17FC()
{
  result = qword_27EFAA418;
  if (!qword_27EFAA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA418);
  }

  return result;
}

unint64_t sub_24ADF1854()
{
  result = qword_27EFAA420;
  if (!qword_27EFAA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA420);
  }

  return result;
}

uint64_t _s7BatteryVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7BatteryVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_24ADF1940()
{
  result = qword_27EFAA428;
  if (!qword_27EFAA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA428);
  }

  return result;
}

unint64_t sub_24ADF1998()
{
  result = qword_27EFAA430;
  if (!qword_27EFAA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA430);
  }

  return result;
}

unint64_t sub_24ADF19EC()
{
  result = qword_27EFAA438;
  if (!qword_27EFAA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA438);
  }

  return result;
}

unint64_t sub_24ADF1A44()
{
  result = qword_27EFAA440;
  if (!qword_27EFAA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA440);
  }

  return result;
}

uint64_t ItemModel.DisplayName.value.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.DisplayName.init(name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static ItemModel.DisplayName.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t ItemModel.DisplayName.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADF1B68()
{
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADF1BBC(uint64_t a1)
{
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADF1C04(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t static ItemModel.DisplayName.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t sub_24ADF1C64(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t sub_24ADF1C94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_24AE097C8() ^ 1) & 1;
  }
}

uint64_t sub_24ADF1CDC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_24AE097C8() ^ 1) & 1;
  }
}

uint64_t sub_24ADF1D30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

Swift::Bool __swiftcall ItemModel.DisplayName.contains(search:)(Swift::String search)
{
  v1 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v1 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    return 1;
  }

  sub_24ADA16A8();
  return sub_24AE09468() & 1;
}

unint64_t sub_24ADF1DD0()
{
  result = qword_27EFAA448;
  if (!qword_27EFAA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA448);
  }

  return result;
}

uint64_t ItemModel.ImageDefinition.emoji.getter@<X0>(void *a1@<X8>)
{
  if (v1[6] < 0)
  {
    v3 = *v1;
    result = sub_24AE08288();
  }

  else
  {
    v3 = 0;
    result = 0;
  }

  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t ItemModel.ImageDefinition.serverImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3 < 0)
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    LOBYTE(v3) = 0;
  }

  else
  {
    v5 = v1[4];
    v4 = v1[5];
    v7 = v1[2];
    v6 = v1[3];
    v10 = v1;
    v8 = *v1;
    v9 = v10[1];
    sub_24AE08288();
    sub_24AE08288();
    result = sub_24AE08288();
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  return result;
}

uint64_t ItemModel.ImageDefinition.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (v3 < 0)
  {
    MEMORY[0x24C231780](1);

    return sub_24AE09048();
  }

  else
  {
    v4 = *(v1 + 40);
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v4)
    {
      sub_24AE09048();
    }

    return sub_24ADEFAF8(a1, v3);
  }
}

uint64_t ItemModel.ImageDefinition.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_24AE09838();
  if (v2 < 0)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
  }

  else
  {
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v1)
    {
      sub_24AE09048();
    }

    sub_24ADEFAF8(v4, v2);
  }

  return sub_24AE09868();
}

uint64_t sub_24ADF2104(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (v3 < 0)
  {
    MEMORY[0x24C231780](1);

    return sub_24AE09048();
  }

  else
  {
    v4 = *(v1 + 40);
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v4)
    {
      sub_24AE09048();
    }

    return sub_24ADEFAF8(a1, v3);
  }
}

uint64_t sub_24ADF2210(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_24AE09838();
  if (v3 < 0)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
  }

  else
  {
    MEMORY[0x24C231780](0);
    sub_24AE09048();
    sub_24AE09048();
    sub_24AE09858();
    if (v2)
    {
      sub_24AE09048();
    }

    sub_24ADEFAF8(v5, v3);
  }

  return sub_24AE09868();
}

uint64_t _s10FindMyCore9ItemModelV15ImageDefinitionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v38 = *(a2 + 24);
  v39 = *(a2 + 32);
  v40 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a1 + 48);
  v43 = *a1;
  v44 = v5;
  if ((v8 & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      v47[0] = *a1;
      v47[1] = v3;
      v47[2] = v5;
      v47[3] = v4;
      v47[4] = v6;
      v47[5] = v7;
      v34 = v7;
      v36 = v8;
      v48 = v8;
      v45[0] = v10;
      v45[1] = v9;
      v29 = v9;
      v31 = v11;
      v45[2] = v11;
      v45[3] = v38;
      v45[4] = v39;
      v45[5] = v40;
      v46 = v12;
      v41 = v10;
      v14 = v11;
      v15 = v6;
      v32 = v6;
      v16 = v2;
      sub_24ADB7988(v10, v9, v14, v38, v39, v40, v12);
      sub_24ADB7988(v16, v3, v5, v4, v15, v7, v36);
      sub_24ADB7988(v16, v3, v5, v4, v15, v7, v36);
      sub_24ADB7988(v41, v29, v31, v38, v39, v40, v12);
      MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 = _s10FindMyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0(v47, v45);
      sub_24ADEFD28(v43, v3, v5, v4, v32, v34, v36);
      sub_24ADEFD28(v41, v29, v31, v38, v39, v40, v12);
      sub_24ADEFD28(v41, v29, v31, v38, v39, v40, v12);
      sub_24ADEFD28(v43, v3, v5, v4, v32, v34, v36);
      return MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 & 1;
    }

LABEL_5:
    v18 = *a2;
    v42 = *a2;
    v19 = *(a2 + 8);
    v20 = *(a1 + 32);
    v37 = *(a1 + 48);
    sub_24ADB7988(v2, v3, *(a1 + 16), v4, v6, v7, v8);
    sub_24ADB7988(v18, v19, v11, v38, v39, v40, v12);
    sub_24ADEFD28(v43, v3, v44, v4, v20, v7, v37);
    sub_24ADEFD28(v42, v19, v11, v38, v39, v40, v12);
    MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 = 0;
    return MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 & 1;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v35 = *(a2 + 48);
  v33 = *(a1 + 32);
  if (__PAIR128__(v3, v2) == __PAIR128__(v9, v10))
  {
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = *a1;
    sub_24ADB7988(v2, v3, v5, v4, v6, v22, v8);
    sub_24ADB7988(v24, v3, v11, v38, v39, v40, v35);
    sub_24ADEFD28(v24, v3, v5, v4, v33, v22, v23);
    sub_24ADEFD28(v24, v3, v11, v38, v39, v40, v35);
    MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 = 1;
  }

  else
  {
    v25 = *a2;
    v26 = *(a2 + 8);
    v27 = *(a1 + 32);
    v28 = *a1;
    v30 = sub_24AE097C8();
    sub_24ADB7988(v28, v3, v5, v4, v27, v7, v13);
    sub_24ADB7988(v25, v26, v11, v38, v39, v40, v35);
    sub_24ADEFD28(v43, v3, v5, v4, v33, v7, v13);
    sub_24ADEFD28(v25, v26, v11, v38, v39, v40, v35);
    MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 = (v30 & 1) != 0;
  }

  return MyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0 & 1;
}

unint64_t sub_24ADF2748()
{
  result = qword_27EFAA450;
  if (!qword_27EFAA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA450);
  }

  return result;
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
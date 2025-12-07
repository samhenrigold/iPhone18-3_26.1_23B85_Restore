uint64_t sub_2519468DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25194E4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_25194AB90(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2519469FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25194E4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    sub_25194AB90(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_251946B20()
{
  v1 = (type metadata accessor for PregnancyStripedLinearGauge(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25194E4A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_25194AD08(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));
  v6 = v1[8];
  sub_25194AB90(0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251946C4C()
{
  sub_25194AD9C(255);
  sub_25194B874(255);
  sub_25194C0AC(&qword_27F4684E0, sub_25194AD9C, MEMORY[0x277CDF7D8]);
  sub_25194C0AC(&qword_27F4684E8, sub_25194B874, MEMORY[0x277CE1138]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_251946D24()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251946DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25194E5F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25194E210();
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

uint64_t sub_251946EB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25194E5F0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25194E210();
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

uint64_t PregnancyStripedLinearGaugeStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25194E4A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  KeyPath = swift_getKeyPath();
  v6 = a2 + *(type metadata accessor for PregnancyStripedLinearGauge(0) + 20);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  sub_25194A8F0();
  return sub_25194E310();
}

double sub_251948E0C()
{
  v1 = sub_25194E3F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PregnancyStripedLinearGauge(0) + 20));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_25194E680();
  v8 = sub_25194E4B0();
  sub_25194E2C0();

  sub_25194E3E0();
  swift_getAtKeyPath();
  sub_25194AD08(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_251948F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25194E4A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  KeyPath = swift_getKeyPath();
  v6 = a2 + *(type metadata accessor for PregnancyStripedLinearGauge(0) + 20);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  sub_25194A8F0();
  return sub_25194E310();
}

uint64_t sub_251949020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_25194E5D0();
  a3[1] = v6;
  sub_25194BB34(0);
  sub_2519491DC(a2, a1, a3 + *(v7 + 44));
  v8 = sub_25194E5C0();
  v10 = v9;
  sub_251949920(&v20);
  *&v30 = v8;
  *(&v30 + 1) = v10;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v31 = v20;
  v32 = v21;
  sub_25194AE00(0);
  v12 = (a3 + *(v11 + 36));
  v13 = v39;
  v12[8] = v38;
  v12[9] = v13;
  v12[10] = v40;
  v14 = v35;
  v12[4] = v34;
  v12[5] = v14;
  v15 = v37;
  v12[6] = v36;
  v12[7] = v15;
  v16 = v31;
  *v12 = v30;
  v12[1] = v16;
  v17 = v33;
  v12[2] = v32;
  v12[3] = v17;
  v41[0] = v8;
  v41[1] = v10;
  v48 = v26;
  v49 = v27;
  v50 = v28;
  v51 = v29;
  v44 = v22;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v42 = v20;
  v43 = v21;
  sub_25194BBCC(&v30, &v19, sub_25194B2DC);
  sub_25194BC34(v41, sub_25194B2DC);
}

void sub_2519491DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v75 = a1;
  v70 = a3;
  v3 = sub_25194E5B0();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25194B0F8(0);
  v71 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25194B4A4(0, &qword_27F468408, sub_25194B0F8, MEMORY[0x277CDF688]);
  v73 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v69 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v67 - v13;
  MEMORY[0x28223BE20](v12);
  v74 = v67 - v15;
  v16 = sub_25194E2B0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25194B004(0);
  v21 = v20;
  v22 = MEMORY[0x28223BE20](v20);
  v68 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v67 - v24;
  sub_25194E670();
  v67[1] = sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27F468388 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v16, qword_27F468800);
  (*(v17 + 16))(v19, v26, v16);
  v27 = sub_25194E550();
  v28 = &v25[*(v21 + 36)];
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_25194E440();
  v31 = *(*(v30 - 8) + 104);
  v31(v28, v29, v30);
  sub_25194B064(0);
  *&v28[*(v32 + 36)] = 256;
  *v25 = v27;
  __asm { FMOV            V0.2D, #1.5 }

  *(v25 + 8) = _Q0;
  v31(v5, v29, v30);
  sub_25194BDF4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = objc_opt_self();
  v40 = [v39 bundleForClass_];
  v41 = sub_25194E640();
  v42 = objc_opt_self();
  v43 = [v42 colorNamed:v41 inBundle:v40 compatibleWithTraitCollection:0];

  if (v43)
  {
    v44 = sub_25194E560();
    sub_25194BE40(v5, v8, MEMORY[0x277CE1260]);
    v45 = v71;
    *&v8[*(v71 + 52)] = v44;
    *&v8[*(v45 + 56)] = 256;
    sub_25194E350();
    sub_25194E350();
    sub_251948E0C();
    sub_25194E350();
    sub_25194E5D0();
    sub_25194E340();
    sub_25194BE40(v8, v14, sub_25194B0F8);
    v46 = &v14[*(v73 + 36)];
    v47 = v77;
    *v46 = v76;
    *(v46 + 1) = v47;
    *(v46 + 2) = v78;
    v48 = v14;
    v49 = v74;
    sub_25194BEA8(v48, v74);
    v50 = [v39 bundleForClass_];
    v51 = sub_25194E640();
    v52 = [v42 colorNamed:v51 inBundle:v50 compatibleWithTraitCollection:0];

    if (v52)
    {
      v53 = sub_25194E560();
      sub_25194E350();
      v55 = v54;
      sub_25194E350();
      v57 = v55 - v56;
      sub_25194E490();
      v59 = v58 * v57;
      v60 = v68;
      sub_25194BBCC(v25, v68, sub_25194B004);
      v61 = MEMORY[0x277CDF688];
      v62 = v69;
      sub_25194BCF0(v49, v69, &qword_27F468408, sub_25194B0F8, MEMORY[0x277CDF688]);
      v63 = v70;
      sub_25194BBCC(v60, v70, sub_25194B004);
      sub_25194AF34(0);
      v65 = v64;
      sub_25194BCF0(v62, v63 + *(v64 + 48), &qword_27F468408, sub_25194B0F8, v61);
      v66 = v63 + *(v65 + 64);
      *v66 = v53;
      *(v66 + 8) = 256;
      *(v66 + 16) = v59;
      *(v66 + 24) = 0;

      sub_25194BD60(v49, &qword_27F468408, sub_25194B0F8, v61);
      sub_25194BC34(v25, sub_25194B004);

      sub_25194BD60(v62, &qword_27F468408, sub_25194B0F8, v61);
      sub_25194BC34(v60, sub_25194B004);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 sub_251949920@<Q0>(uint64_t a2@<X8>)
{
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25194E350();
  v4 = v3;
  sub_25194E350();
  v6 = v4 - v5;
  sub_25194E490();
  v8 = v7 * v6;
  sub_25194E350();
  v9 = sub_25194E5D0();
  v11 = v10;
  sub_251949EC4(&v18, v8);
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v27 = v18;
  v28 = v19;
  v36[6] = v24;
  v36[7] = v25;
  v36[8] = v26;
  v36[2] = v20;
  v36[3] = v21;
  v36[4] = v22;
  v36[5] = v23;
  v36[0] = v18;
  v36[1] = v19;
  v12 = MEMORY[0x277CE14B8];
  sub_25194BAC4(&v27, &v17, &qword_27F468458, sub_25194B3F0, MEMORY[0x277CE14B8]);
  sub_25194BC94(v36, &qword_27F468458, sub_25194B3F0, v12);

  *a2 = v9;
  *(a2 + 8) = v11;
  v13 = v34;
  *(a2 + 112) = v33;
  *(a2 + 128) = v13;
  *(a2 + 144) = v35;
  v14 = v30;
  *(a2 + 48) = v29;
  *(a2 + 64) = v14;
  v15 = v32;
  *(a2 + 80) = v31;
  *(a2 + 96) = v15;
  result = v28;
  *(a2 + 16) = v27;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_251949AF8@<X0>(uint64_t a2@<X8>)
{
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_25194E420();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_25194BA2C(0);
  sub_251949BC0((a2 + *(v3 + 44)));
}

uint64_t sub_251949BC0@<X0>(char *a1@<X8>)
{
  v26 = a1;
  sub_25194B9C8(0, &qword_27F4684D0, MEMORY[0x277CDE210], MEMORY[0x277D83D88]);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = sub_25194E470();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_25194E670();
  v25 = sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25194E480();
  sub_25194E460();
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v15 = MEMORY[0x277CDE210];
  v16 = MEMORY[0x277D83D88];
  sub_25194BAC4(v6, v4, &qword_27F4684D0, MEMORY[0x277CDE210], MEMORY[0x277D83D88]);
  v24 = v13;
  v17 = v11;
  v18 = v4;
  v19 = v26;
  v14(v26, v17, v7);
  sub_25194B928(0);
  sub_25194BAC4(v18, &v19[*(v20 + 48)], &qword_27F4684D0, v15, v16);
  sub_25194BC94(v6, &qword_27F4684D0, v15, v16);
  v21 = *(v8 + 8);
  v21(v24, v7);
  sub_25194BC94(v18, &qword_27F4684D0, v15, v16);
  v21(v17, v7);
}

uint64_t sub_251949EC4@<X0>(uint64_t a1@<X8>, double a3@<D1>)
{
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_25194E540();
  v23 = sub_25194E530();
  type metadata accessor for PregnancyStripedLinearGauge(0);
  sub_25194AB90(0);
  sub_25194E320();
  sub_25194E2F0();
  v5 = *&v52;
  v6 = DWORD2(v52);
  v7 = HIDWORD(v52);
  v8 = v53;
  v9 = v54;
  v10 = sub_25194E5C0();
  v12 = v11;
  sub_25194E320();
  sub_25194E5C0();
  sub_25194E340();
  sub_25194E320();
  v13 = a3 + v36 * -0.5;
  v31[0] = v52;
  v31[1] = v53;
  *&v32 = v54;
  *(&v32 + 1) = v23;
  LOWORD(v33) = 256;
  *(&v33 + 2) = v26;
  WORD3(v33) = v27;
  *(&v33 + 1) = v10;
  *v34 = v12;
  *&v34[40] = v30;
  v15 = v29;
  v14 = v30;
  *&v34[24] = v29;
  v16 = v28;
  *&v34[8] = v28;
  v17 = v53;
  *(a1 + 8) = v52;
  v18 = *&v34[16];
  *(a1 + 72) = *v34;
  v19 = v32;
  *(a1 + 56) = v33;
  *&v34[56] = v13;
  *(a1 + 40) = v19;
  *(a1 + 24) = v17;
  v20 = *&v34[32];
  *(a1 + 120) = *&v34[48];
  *(a1 + 104) = v20;
  v35 = 0;
  *a1 = v24;
  *(a1 + 136) = 0;
  *(a1 + 88) = v18;
  v36 = v5;
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v23;
  v42 = 256;
  v43 = v26;
  v44 = v27;
  v45 = v10;
  v46 = v12;
  v49 = v14;
  v48 = v15;
  v47 = v16;
  v50 = v13;
  v51 = 0;

  v21 = MEMORY[0x277CDF758];
  sub_25194BCF0(v31, v25, &qword_27F468468, sub_25194B47C, MEMORY[0x277CDF758]);
  sub_25194BD60(&v36, &qword_27F468468, sub_25194B47C, v21);
}

uint64_t sub_25194A1B4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_25194BBCC(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PregnancyStripedLinearGauge);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_25194BE40(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for PregnancyStripedLinearGauge);
  v9 = sub_25194AD14;
  v10 = v5;
  v8 = v1;
  sub_25194AD9C(0);
  sub_25194B874(0);
  sub_25194C0AC(&qword_27F4684E0, sub_25194AD9C, MEMORY[0x277CDF7D8]);
  sub_25194C0AC(&qword_27F4684E8, sub_25194B874, MEMORY[0x277CE1138]);
  sub_25194E520();
}

uint64_t sub_25194A394(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v10 = sub_25194E3B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25194E670();
  sub_25194E660();
  sub_25194E650();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v15 = ceil((a3 + a4) / (a5 + a6));
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  if (v15 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v16)
  {
    v17 = 0;
    v18 = (v11 + 8);
    do
    {
      sub_25194E4E0();
      sub_25194E4C0();
      sub_25194E4D0();
      v22[0] = *&v19[8];
      v22[1] = v20;
      v23 = v21;
      sub_25194E3A0();
      sub_25194E390();
      (*v18)(v13, v10);
      sub_25194C058(v22);
      ++v17;
    }

    while (v16 != v17);
  }
}

uint64_t sub_25194A624()
{
  v1 = sub_25194E430();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v7;
  (*(v2 + 104))(v4, *MEMORY[0x277CE00F0], v1);

  return sub_25194E570();
}

uint64_t sub_25194A768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25194BF30();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double EnvironmentValues.pregnancyStripedFillProgress.getter()
{
  sub_25194A944();
  sub_25194E400();
  return v1;
}

double sub_25194A808@<D0>(double *a1@<X8>)
{
  sub_25194A944();
  sub_25194E400();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for PregnancyStripedLinearGauge(uint64_t a1)
{
  result = qword_27F4683B0;
  if (!qword_27F4683B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25194A8F0()
{
  result = qword_27F468390;
  if (!qword_27F468390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468390);
  }

  return result;
}

unint64_t sub_25194A944()
{
  result = qword_27F468398;
  if (!qword_27F468398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468398);
  }

  return result;
}

uint64_t (*EnvironmentValues.pregnancyStripedFillProgress.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_25194A944();
  sub_25194E400();
  return sub_25194AA34;
}

uint64_t sub_25194AAA0(unsigned int *a1, int a2)
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

_WORD *sub_25194AAF0(_WORD *result, int a2, int a3)
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

void sub_25194AB90(uint64_t a1)
{
  if (!qword_27F4683A8)
  {
    sub_25194A8F0();
    v1 = sub_25194E330();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4683A8);
    }
  }
}

void sub_25194AC00(uint64_t a1)
{
  sub_25194E4A0();
  if (v1 <= 0x3F)
  {
    sub_25194AC9C();
    if (v2 <= 0x3F)
    {
      sub_25194AB90(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25194AC9C()
{
  if (!qword_27F4683C0)
  {
    v0 = sub_25194E2E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4683C0);
    }
  }
}

uint64_t sub_25194AD08(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_25194AD14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for PregnancyStripedLinearGauge(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251949020(a1, v6, a2);
}

void sub_25194AD9C(uint64_t a1)
{
  if (!qword_27F4683C8)
  {
    sub_25194AE00(255);
    sub_25194B740();
    v1 = sub_25194E380();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4683C8);
    }
  }
}

void sub_25194AE00(uint64_t a1)
{
  if (!qword_27F4683D0)
  {
    sub_25194AE94(255, &qword_27F4683D8, &qword_27F4683E0, sub_25194AF34, &qword_27F468430);
    sub_25194B2DC(255);
    v1 = sub_25194E3C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4683D0);
    }
  }
}

void sub_25194AE94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_25194B9C8(255, a3, a4, MEMORY[0x277CE14B8]);
    sub_25194B278(a5, a3, a4);
    v9 = sub_25194E5A0();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_25194AF34(uint64_t a1)
{
  if (!qword_27F4683E8)
  {
    sub_25194B004(255);
    sub_25194B4A4(255, &qword_27F468408, sub_25194B0F8, MEMORY[0x277CDF688]);
    sub_25194B4A4(255, &qword_27F468418, sub_25194B1A8, MEMORY[0x277CDF758]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4683E8);
    }
  }
}

void sub_25194B004(uint64_t a1)
{
  if (!qword_27F4683F0)
  {
    sub_25194B064(255);
    v1 = sub_25194E3C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4683F0);
    }
  }
}

void sub_25194B064(uint64_t a1)
{
  if (!qword_27F4683F8)
  {
    sub_25194E5B0();
    sub_25194C0AC(&qword_27F468400, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    v1 = sub_25194E300();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4683F8);
    }
  }
}

void sub_25194B0F8(uint64_t a1)
{
  if (!qword_27F468410)
  {
    sub_25194E5B0();
    sub_25194C0AC(&qword_27F468400, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    v1 = sub_25194E2D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F468410);
    }
  }
}

void sub_25194B1A8(uint64_t a1)
{
  if (!qword_27F468420)
  {
    sub_25194B224();
    v1 = sub_25194E2D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F468420);
    }
  }
}

unint64_t sub_25194B224()
{
  result = qword_27F468428;
  if (!qword_27F468428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468428);
  }

  return result;
}

uint64_t sub_25194B278(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25194B9C8(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25194B2DC(uint64_t a1)
{
  if (!qword_27F468438)
  {
    sub_25194B4A4(255, &qword_27F468440, sub_25194B364, MEMORY[0x277CE06B8]);
    sub_25194B598();
    v1 = sub_25194E450();
    if (!v2)
    {
      atomic_store(v1, &qword_27F468438);
    }
  }
}

void sub_25194B364(uint64_t a1)
{
  if (!qword_27F468448)
  {
    sub_25194AE94(255, &qword_27F468450, &qword_27F468458, sub_25194B3F0, &qword_27F468480);
    v1 = sub_25194E3C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F468448);
    }
  }
}

void sub_25194B3F0(uint64_t a1)
{
  if (!qword_27F468460)
  {
    sub_25194B4A4(255, &qword_27F468468, sub_25194B47C, MEMORY[0x277CDF758]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F468460);
    }
  }
}

void sub_25194B4A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_25194E3C0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25194B508(uint64_t a1)
{
  if (!qword_27F468478)
  {
    sub_25194B224();
    v1 = sub_25194E3D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F468478);
    }
  }
}

unint64_t sub_25194B598()
{
  result = qword_27F468488;
  if (!qword_27F468488)
  {
    sub_25194B4A4(255, &qword_27F468440, sub_25194B364, MEMORY[0x277CE06B8]);
    sub_25194B63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468488);
  }

  return result;
}

unint64_t sub_25194B63C()
{
  result = qword_27F468490;
  if (!qword_27F468490)
  {
    sub_25194B364(255);
    sub_25194B6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468490);
  }

  return result;
}

unint64_t sub_25194B6BC()
{
  result = qword_27F468498;
  if (!qword_27F468498)
  {
    sub_25194AE94(255, &qword_27F468450, &qword_27F468458, sub_25194B3F0, &qword_27F468480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468498);
  }

  return result;
}

unint64_t sub_25194B740()
{
  result = qword_27F4684A0;
  if (!qword_27F4684A0)
  {
    sub_25194AE00(255);
    sub_25194B7F0();
    sub_25194C0AC(&qword_27F4684B0, sub_25194B2DC, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4684A0);
  }

  return result;
}

unint64_t sub_25194B7F0()
{
  result = qword_27F4684A8;
  if (!qword_27F4684A8)
  {
    sub_25194AE94(255, &qword_27F4683D8, &qword_27F4683E0, sub_25194AF34, &qword_27F468430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4684A8);
  }

  return result;
}

void sub_25194B874(uint64_t a1)
{
  if (!qword_27F4684B8)
  {
    sub_25194B9C8(255, &qword_27F4684C0, sub_25194B928, MEMORY[0x277CE14B8]);
    sub_25194B278(&qword_27F4684D8, &qword_27F4684C0, sub_25194B928);
    v1 = sub_25194E590();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4684B8);
    }
  }
}

void sub_25194B928(uint64_t a1)
{
  if (!qword_27F4684C8)
  {
    sub_25194E470();
    sub_25194B9C8(255, &qword_27F4684D0, MEMORY[0x277CDE210], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4684C8);
    }
  }
}

void sub_25194B9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25194BA2C(uint64_t a1)
{
  if (!qword_27F4684F0)
  {
    sub_25194B9C8(255, &qword_27F4684C0, sub_25194B928, MEMORY[0x277CE14B8]);
    v1 = sub_25194E360();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4684F0);
    }
  }
}

uint64_t sub_25194BAC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_25194B9C8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_25194BB34(uint64_t a1)
{
  if (!qword_27F4684F8)
  {
    sub_25194B9C8(255, &qword_27F4683E0, sub_25194AF34, MEMORY[0x277CE14B8]);
    v1 = sub_25194E360();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4684F8);
    }
  }
}

uint64_t sub_25194BBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25194BC34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25194BC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_25194B9C8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_25194BCF0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_25194B4A4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_25194BD60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_25194B4A4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25194BDF4()
{
  result = qword_27F468500;
  if (!qword_27F468500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F468500);
  }

  return result;
}

uint64_t sub_25194BE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25194BEA8(uint64_t a1, uint64_t a2)
{
  sub_25194B4A4(0, &qword_27F468408, sub_25194B0F8, MEMORY[0x277CDF688]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25194BF30()
{
  result = qword_27F468508;
  if (!qword_27F468508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F468508);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25194BF98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25194BFE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25194C0AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25194C0F4()
{
  if (!qword_27F468518)
  {
    v0 = sub_25194E580();
    if (!v1)
    {
      atomic_store(v0, &qword_27F468518);
    }
  }
}

void sub_25194C188(uint64_t a1)
{
  sub_25194BDF4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_25194E640();
  v4 = [objc_opt_self() colorNamed:v3 inBundle:v2 compatibleWithTraitCollection:0];

  if (!v4)
  {
    __break(1u);
  }
}

void static UIColor.pregnancyDarkGreen.getter()
{
  sub_25194BDF4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_25194E640();
  v3 = [objc_opt_self() colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (!v3)
  {
    __break(1u);
  }
}

void static UIColor.pregnancyGreenPrediction.getter()
{
  sub_25194BDF4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_25194E640();
  v3 = [objc_opt_self() colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (v3)
  {
    [v3 colorWithAlphaComponent_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t PregnancyModeTimelineViewModel.currentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PregnancyModeTimelineViewModel(0) + 20);
  v4 = sub_25194E210();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PregnancyModeTimelineViewModel(uint64_t a1)
{
  result = qword_2811124F0;
  if (!qword_2811124F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PregnancyModeTimelineViewModel.pregnancySample.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregnancyModeTimelineViewModel(0) + 24));

  return v1;
}

uint64_t PregnancyModeTimelineViewModel.pregnancyStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PregnancyModeTimelineViewModel(0) + 28);
  v4 = sub_25194E210();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PregnancyModeTimelineViewModel.estimatedDueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PregnancyModeTimelineViewModel(0) + 32);
  v4 = sub_25194E210();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PregnancyModeTimelineViewModel.init(currentDay:pregnancySample:estimatedDueDate:today:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a4;
  v95 = a1;
  v96 = a3;
  sub_25194D030(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v79 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = v77 - v11;
  v93 = sub_25194E220();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_25194E290();
  v94 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25194E210();
  v85 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v78 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v82 = v77 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v77 - v22;
  v24 = sub_25194E5F0();
  v88 = *(v24 - 8);
  v89 = v24;
  (*(v88 + 16))(a5, a1);
  v25 = type metadata accessor for PregnancyModeTimelineViewModel(0);
  v26 = v25[8];
  v92 = v17;
  v27 = *(v17 + 16);
  v27(a5 + v26, v96, v16);
  *(a5 + v25[6]) = a2;
  v28 = [a2 startDate];
  v77[1] = v25[7];
  sub_25194E1F0();

  v29 = v91;
  v30 = v93;
  (*(v91 + 104))(v13, *MEMORY[0x277CC9830], v93);
  sub_25194E230();
  (*(v29 + 8))(v13, v30);
  sub_25194E5E0();
  v31 = v94 + 8;
  v32 = *(v94 + 8);
  v33 = v86;
  v32(v15, v86);
  v34 = v25[5];
  v35 = v31;
  v90 = v25;
  v91 = a5;
  v36 = v87;
  v37 = v85;
  v80 = v27;
  v81 = v17 + 16;
  v27(a5 + v34, v23, v85);
  v38 = v37;
  sub_25194E270();
  v84 = sub_25194E260();
  v39 = v33;
  v40 = v32;
  v32(v15, v39);
  v93 = v23;
  v41 = v39;
  if ((sub_25194E1C0() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25194E270();
  v42 = v83;
  sub_25194D088(v83);
  v32(v15, v39);
  v43 = v92;
  v44 = *(v92 + 48);
  v45 = v44(v42, 1, v38);
  v94 = v35;
  if (v45 == 1)
  {
    v46 = v43;
    v47 = v82;
    v80(v82, v36, v38);
    v48 = v47;
    v43 = v46;
    if (v44(v42, 1, v38) != 1)
    {
      sub_25194D394(v42);
    }
  }

  else
  {
    v48 = v82;
    (*(v43 + 32))(v82, v42, v38);
  }

  sub_25194DE84(&qword_27F468528, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v49 = v48;
  v50 = sub_25194E610();
  v51 = *(v43 + 8);
  v51(v49, v38);
  if (v50)
  {
    v51(v36, v38);
    v51(v96, v38);
    (*(v88 + 8))(v95, v89);
    result = (v51)(v93, v38);
    v53 = 0.92;
    v54 = 0.945;
    v55 = v91;
  }

  else
  {
LABEL_8:
    v56 = v38;
    v57 = v92;
    sub_25194E270();
    v58 = v93;
    v59 = sub_25194E260();
    v40(v15, v41);
    if (v59 & v84)
    {
      v60 = *(v57 + 8);
      v60(v36, v56);
      v60(v96, v56);
      (*(v88 + 8))(v95, v89);
      result = (v60)(v58, v56);
      v54 = 1.0;
      v53 = 1.0;
      v55 = v91;
    }

    else
    {
      sub_25194E270();
      v61 = v41;
      v62 = v79;
      sub_25194D088(v79);
      v40(v15, v61);
      v63 = *(v57 + 48);
      v64 = v56;
      if (v63(v62, 1, v56) == 1)
      {
        v65 = v78;
        v66 = v36;
        v80(v78, v36, v56);
        v67 = v63(v62, 1, v56);
        v55 = v91;
        if (v67 != 1)
        {
          sub_25194D394(v62);
        }
      }

      else
      {
        v66 = v36;
        v65 = v78;
        (*(v57 + 32))(v78, v62, v56);
        v55 = v91;
      }

      v68 = sub_25194E1D0();
      v69 = *(v57 + 8);
      v69(v65, v64);
      v70 = v93;
      if (v68 & 1) != 0 && (sub_25194DE84(&qword_27F468528, MEMORY[0x277CC9578], MEMORY[0x277CC9590]), (sub_25194E610()))
      {
        v69(v66, v64);
        v69(v96, v64);
        (*(v88 + 8))(v95, v89);
        result = (v69)(v70, v64);
        v53 = 0.92;
        v54 = 0.945;
      }

      else
      {
        sub_25194DE84(&qword_27F468528, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if (sub_25194E620())
        {
          v69(v66, v64);
          v69(v96, v64);
          (*(v88 + 8))(v95, v89);
          result = (v69)(v70, v64);
          v54 = 0.0;
          v53 = 0.0;
        }

        else
        {
          v71 = v96;
          sub_25194E1B0();
          v73 = v72;
          sub_25194E1B0();
          v75 = v74;
          v69(v66, v64);
          v69(v71, v64);
          (*(v88 + 8))(v95, v89);
          result = (v69)(v70, v64);
          v54 = v75 / v73;
          if (v75 / v73 <= 0.003)
          {
            v54 = 0.003;
          }

          if (v54 > 1.0)
          {
            v54 = 1.0;
          }

          v53 = v54;
        }
      }
    }
  }

  v76 = v90;
  *(v55 + v90[9]) = v54;
  *(v55 + v76[10]) = v53;
  return result;
}

void sub_25194D030(uint64_t a1)
{
  if (!qword_27F468520)
  {
    sub_25194E210();
    v1 = sub_25194E6B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F468520);
    }
  }
}

uint64_t sub_25194D088@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_25194E280();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25194D030(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25194E210();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v21 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = *MEMORY[0x277CC9968];
  v20 = *(v2 + 104);
  v20(v4, v14, v1);
  sub_25194E250();
  v15 = *(v2 + 8);
  v22 = v1;
  v15(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25194D394(v7);
    return (*(v9 + 56))(v23, 1, 1, v8);
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    v17 = v21;
    sub_25194E240();
    v18 = v22;
    v20(v4, *MEMORY[0x277CC99A8], v22);
    sub_25194E250();
    v15(v4, v18);
    v19 = *(v9 + 8);
    v19(v17, v8);
    return (v19)(v13, v8);
  }
}

uint64_t sub_25194D394(uint64_t a1)
{
  sub_25194D030(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PregnancyModeTimelineViewModel.startDateShorthandText.getter()
{
  v20 = sub_25194E170();
  v0 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25194E190();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25194E1A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v19 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  v19[1] = *(type metadata accessor for PregnancyModeTimelineViewModel(0) + 28);
  MEMORY[0x253087420]();
  sub_25194E180();
  sub_25194E150();
  (*(v4 + 8))(v6, v3);
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_25194E160();
  sub_25194E140();
  (*(v0 + 8))(v2, v20);
  v17(v14, v7);
  sub_25194DE84(&qword_27F468530, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_25194E200();
  v17(v16, v7);
  return v21;
}

uint64_t PregnancyModeTimelineViewModel.estimatedDueDateShorthandText.getter()
{
  v20 = sub_25194E170();
  v0 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25194E190();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25194E1A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v19 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  v19[1] = *(type metadata accessor for PregnancyModeTimelineViewModel(0) + 32);
  MEMORY[0x253087420]();
  sub_25194E180();
  sub_25194E150();
  (*(v4 + 8))(v6, v3);
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_25194E160();
  sub_25194E140();
  (*(v0 + 8))(v2, v20);
  v17(v14, v7);
  sub_25194DE84(&qword_27F468530, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_25194E200();
  v17(v16, v7);
  return v21;
}

uint64_t PregnancyModeTimelineViewModel.hash(into:)(uint64_t a1)
{
  sub_25194E5F0();
  sub_25194DE84(&qword_27F468538, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  sub_25194E600();
  v2 = type metadata accessor for PregnancyModeTimelineViewModel(0);
  sub_25194E210();
  sub_25194DE84(&qword_27F468540, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25194E600();
  sub_25194E6A0();
  sub_25194E600();
  sub_25194E600();
  v3 = *(v1 + *(v2 + 36));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x2530879C0](*&v3);
  v4 = *(v1 + *(v2 + 40));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x2530879C0](*&v4);
}

uint64_t PregnancyModeTimelineViewModel.hashValue.getter()
{
  sub_25194E6C0();
  PregnancyModeTimelineViewModel.hash(into:)(v1);
  return sub_25194E6E0();
}

uint64_t sub_25194DB9C()
{
  sub_25194E6C0();
  PregnancyModeTimelineViewModel.hash(into:)(v1);
  return sub_25194E6E0();
}

uint64_t sub_25194DBE0(uint64_t a1)
{
  sub_25194E6C0();
  PregnancyModeTimelineViewModel.hash(into:)(v2);
  return sub_25194E6E0();
}

BOOL _s23HealthMenstrualCyclesUI30PregnancyModeTimelineViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_25194E5F0();
  sub_25194DE84(&qword_27F468550, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  if (sub_25194E630() & 1) != 0 && (v4 = type metadata accessor for PregnancyModeTimelineViewModel(0), (sub_25194E1E0()) && (sub_25194DECC(0, &qword_27F468558, 0x277D82BB8), (sub_25194E690()) && (sub_25194E1E0() & 1) != 0 && (sub_25194E1E0() & 1) != 0 && *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36)))
  {
    return *(a1 + *(v4 + 40)) == *(a2 + *(v4 + 40));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25194DDB8(uint64_t a1)
{
  result = sub_25194E5F0();
  if (v2 <= 0x3F)
  {
    result = sub_25194E210();
    if (v3 <= 0x3F)
    {
      result = sub_25194DECC(319, &qword_2811124E8, 0x277CCD0B0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25194DE84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25194DECC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_25194DF48()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F468560 = result;
  return result;
}

uint64_t sub_25194DFA0()
{
  v0 = sub_25194E2B0();
  __swift_allocate_value_buffer(v0, qword_27F468800);
  __swift_project_value_buffer(v0, qword_27F468800);
  if (qword_27F468380 != -1)
  {
    swift_once();
  }

  v1 = qword_27F468560;
  return sub_25194E2A0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}
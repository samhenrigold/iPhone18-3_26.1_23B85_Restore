double sub_51D80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_5697C();
  v33 = 1;
  sub_51F44(a1, a2, a3, &v20);
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v46[8] = v28;
  v46[9] = v29;
  v46[10] = v30;
  v46[11] = v31;
  v46[4] = v24;
  v46[5] = v25;
  v46[6] = v26;
  v46[7] = v27;
  v46[0] = v20;
  v46[1] = v21;
  v46[2] = v22;
  v46[3] = v23;
  sub_2E28(&v34, &v19, &qword_73608, &qword_5B230);
  sub_2E90(v46, &qword_73608, &qword_5B230);
  *&v32[135] = v42;
  *&v32[151] = v43;
  *&v32[167] = v44;
  *&v32[183] = v45;
  *&v32[71] = v38;
  *&v32[87] = v39;
  *&v32[103] = v40;
  *&v32[119] = v41;
  *&v32[7] = v34;
  *&v32[23] = v35;
  *&v32[39] = v36;
  *&v32[55] = v37;
  LOBYTE(a2) = v33;
  v9 = sub_56D3C();
  KeyPath = swift_getKeyPath();
  v11 = *&v32[128];
  *(a4 + 161) = *&v32[144];
  v12 = *&v32[176];
  *(a4 + 177) = *&v32[160];
  *(a4 + 193) = v12;
  v13 = *&v32[64];
  *(a4 + 97) = *&v32[80];
  v14 = *&v32[112];
  *(a4 + 113) = *&v32[96];
  *(a4 + 129) = v14;
  *(a4 + 145) = v11;
  v15 = *v32;
  *(a4 + 33) = *&v32[16];
  result = *&v32[32];
  v17 = *&v32[48];
  *(a4 + 49) = *&v32[32];
  *(a4 + 65) = v17;
  *(a4 + 81) = v13;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = a2;
  v18 = *&v32[191];
  *(a4 + 17) = v15;
  *(a4 + 208) = v18;
  *(a4 + 216) = KeyPath;
  *(a4 + 224) = v9;
  return result;
}

uint64_t sub_51F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v7 = sub_573DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_573EC();
  v11 = sub_52388(a1, a2);
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v74 = v11;
  v75 = v13;
  v48 = sub_2B4C();
  v14 = sub_56E0C();
  v16 = v15;
  LOBYTE(a1) = v17;
  v18 = sub_56DCC();
  v20 = v19;
  LOBYTE(v8) = v21;
  sub_21FDC(v14, v16, a1 & 1);

  sub_56FCC();
  v22 = sub_56DAC();
  v51 = v23;
  v52 = v22;
  v50 = v24;
  v53 = v25;

  sub_21FDC(v18, v20, v8 & 1);

  v74 = sub_34EC();
  v75 = v26;
  v27 = sub_56E0C();
  v29 = v28;
  LOBYTE(a1) = v30;
  sub_56FDC();
  v31 = sub_56DAC();
  v49 = v32;
  LOBYTE(v8) = v33;
  v35 = v34;

  sub_21FDC(v27, v29, a1 & 1);

  sub_571FC();
  sub_567CC();
  v87 = v8 & 1;
  LOBYTE(v27) = v50 & 1;
  v57 = v50 & 1;
  v56 = 1;
  v36 = v49;
  *&v65 = v31;
  *(&v65 + 1) = v49;
  LOBYTE(v66) = v8 & 1;
  *(&v66 + 1) = *v86;
  DWORD1(v66) = *&v86[3];
  *(&v66 + 1) = v35;
  v71 = v62;
  v72 = v63;
  v73 = v64;
  v67 = v58;
  v68 = v59;
  v38 = v58;
  v37 = v59;
  v69 = v60;
  v70 = v61;
  v39 = v64;
  *&v55[7] = v65;
  *&v55[71] = v60;
  *&v55[55] = v59;
  *&v55[39] = v58;
  *&v55[23] = v66;
  *&v55[135] = v64;
  *&v55[119] = v63;
  *&v55[103] = v62;
  *&v55[87] = v61;
  v40 = v50 & 1;
  v42 = v51;
  v41 = v52;
  *a4 = v52;
  *(a4 + 8) = v42;
  *(a4 + 16) = v40;
  *(a4 + 24) = v53;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v43 = *&v55[112];
  *(a4 + 137) = *&v55[96];
  *(a4 + 153) = v43;
  *(a4 + 169) = *&v55[128];
  *(a4 + 184) = *&v55[143];
  v44 = *&v55[48];
  *(a4 + 73) = *&v55[32];
  *(a4 + 89) = v44;
  v45 = *&v55[80];
  *(a4 + 105) = *&v55[64];
  *(a4 + 121) = v45;
  v46 = *&v55[16];
  *(a4 + 41) = *v55;
  *(a4 + 57) = v46;
  v74 = v31;
  v75 = v36;
  v76 = v8 & 1;
  *v77 = *v86;
  *&v77[3] = *&v86[3];
  v78 = v35;
  v83 = v62;
  v84 = v63;
  v85 = v39;
  v79 = v38;
  v80 = v37;
  v81 = v60;
  v82 = v61;
  sub_2A33C(v41, v42, v27);

  sub_2E28(&v65, &v54, &qword_72150, &qword_59788);
  sub_2E90(&v74, &qword_72150, &qword_59788);
  sub_21FDC(v41, v42, v27);
}

uint64_t sub_52388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_561CC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_5773C();
  __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v10 = sub_573DC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v3, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for _CommunicationHandle.Kind.phoneNumber(_:))
  {
    sub_576DC();
    sub_B038();
    if (!sub_5796C())
    {
      v16 = [objc_opt_self() mainBundle];
    }
  }

  else if (v15 == enum case for _CommunicationHandle.Kind.emailAddress(_:))
  {
    sub_576DC();
    sub_B038();
    if (!sub_5796C())
    {
      v17 = [objc_opt_self() mainBundle];
    }
  }

  else
  {
    if (v15 != enum case for _CommunicationHandle.Kind.custom(_:))
    {
      (*(v11 + 8))(v14, v10);
    }

    if (a2)
    {

      return a1;
    }

    sub_576DC();
    sub_B038();
    if (!sub_5796C())
    {
      v19 = [objc_opt_self() mainBundle];
    }
  }

  sub_561BC();
  return sub_5779C();
}

uint64_t sub_52734()
{
  v0 = sub_2AFC(&qword_736F0, &qword_5B448);
  __chkstk_darwin(v0);
  v2 = (&v18 - v1);
  v3 = sub_5702C();
  v4 = (v2 + *(sub_2AFC(&qword_727F8, &qword_59F08) + 36));
  v5 = *(sub_2AFC(&qword_71678, &qword_58970) + 28);
  v6 = enum case for Image.Scale.large(_:);
  v7 = sub_5704C();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = swift_getKeyPath();
  *v2 = v3;
  v8 = (v2 + *(sub_2AFC(&qword_73708, &qword_5B450) + 36));
  v9 = *(sub_2AFC(&qword_73720, &qword_5B458) + 28);
  sub_56A3C();
  v10 = sub_56A4C();
  (*(*(v10 - 8) + 56))(v8 + v9, 0, 1, v10);
  *v8 = swift_getKeyPath();
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  v13 = sub_56F5C();
  v14 = [v11 secondarySystemFillColor];
  v15 = sub_56F5C();
  v16 = (v2 + *(v0 + 36));
  *v16 = v13;
  v16[1] = v15;
  sub_56D0C();
  sub_5499C();
  sub_56E3C();
  return sub_2E90(v2, &qword_736F0, &qword_5B448);
}

uint64_t sub_5299C()
{
  v1 = sub_567AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2AFC(&qword_736E0, &qword_5B438);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v9 = *v0;
  v8 = v0[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  sub_2AFC(&qword_736E8, &qword_5B440);
  v11 = sub_2C70(&qword_736F0, &qword_5B448);
  v12 = sub_5499C();
  v19[0] = v11;
  v19[1] = v12;
  swift_getOpaqueTypeConformance2();
  sub_570DC();
  LOBYTE(v8) = sub_56CBC();
  sub_5668C();
  v13 = &v7[*(v5 + 36)];
  *v13 = v8;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_5679C();
  sub_54BC4();
  sub_5493C();
  sub_56E4C();
  (*(v2 + 8))(v4, v1);
  return sub_2E90(v7, &qword_736E0, &qword_5B438);
}

uint64_t sub_52BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5606C();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_56DFC();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_52CDC@<X0>(uint64_t *a1@<X8>)
{

  result = sub_5702C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for PersonInformationEditContentView(uint64_t a1)
{
  result = qword_73538;
  if (!qword_73538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_52D90()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_52DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2AFC(&qword_734D8, &qword_5AFC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_52EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2AFC(&qword_734D8, &qword_5AFC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_52FA4(uint64_t a1)
{
  sub_530A0(319);
  if (v1 <= 0x3F)
  {
    sub_5315C(319, &qword_71E20, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_530F8(319);
      if (v3 <= 0x3F)
      {
        sub_5315C(319, &unk_71E48, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_530A0(uint64_t a1)
{
  if (!qword_73548)
  {
    sub_5670C();
    v1 = sub_5669C();
    if (!v2)
    {
      atomic_store(v1, &qword_73548);
    }
  }
}

void sub_530F8(uint64_t a1)
{
  if (!qword_73550)
  {
    sub_2C70(&qword_72D70, &qword_5AF60);
    v1 = sub_5715C();
    if (!v2)
    {
      atomic_store(v1, &qword_73550);
    }
  }
}

void sub_5315C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_531AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_531FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_53250(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_53268(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_53300()
{
  result = qword_735C0;
  if (!qword_735C0)
  {
    sub_2C70(&qword_735B8, &qword_5B098);
    sub_3260(&qword_735C8, &qword_735D0, &qword_5B0A0, &unk_59D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_735C0);
  }

  return result;
}

unint64_t sub_533B0()
{
  result = qword_735E0;
  if (!qword_735E0)
  {
    sub_2C70(&qword_735B0, &qword_5B090);
    sub_2C70(&qword_735A8, &qword_5B088);
    sub_2C70(&qword_735A0, &qword_5B080);
    sub_2C70(&qword_73598, &qword_5B078);
    sub_3260(&qword_735D8, &qword_73598, &qword_5B078, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_735E0);
  }

  return result;
}

uint64_t sub_53520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonInformationEditContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_53584()
{
  v1 = *(type metadata accessor for PersonInformationEditContentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_2AFC(&qword_734D0, &unk_5AFB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_5670C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_536E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonInformationEditContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_53744@<D0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for PersonInformationEditContentView(0) - 8);
  sub_50264(v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), *a1, v13);
  v6 = v21;
  a2[8] = v20;
  a2[9] = v6;
  v7 = v23;
  a2[10] = v22;
  a2[11] = v7;
  v8 = v17;
  a2[4] = v16;
  a2[5] = v8;
  v9 = v19;
  a2[6] = v18;
  a2[7] = v9;
  v10 = v13[1];
  *a2 = v13[0];
  a2[1] = v10;
  result = *&v14;
  v12 = v15;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_5382C()
{
  v1 = *(type metadata accessor for PersonInformationEditContentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_2AFC(&qword_734D0, &unk_5AFB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_5670C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_5398C(void *a1)
{
  v3 = *(type metadata accessor for PersonInformationEditContentView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_508A4(a1, v1 + v4, v5);
}

uint64_t sub_53A3C(uint64_t a1)
{
  v2 = sub_2AFC(&qword_73750, &qword_5B4D0);
  __chkstk_darwin(v2 - 8);
  sub_2E28(a1, &v5 - v3, &qword_73750, &qword_5B4D0);
  return sub_568AC();
}

__n128 sub_53AE4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_5707C();
  type metadata accessor for CGRect(0);
  sub_5707C();
  result = v21;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v21.n128_u8[0];
  *(a9 + 72) = v21.n128_u64[1];
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = v21;
  *(a9 + 112) = v22;
  *(a9 + 128) = v23;
  return result;
}

void *sub_53BC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PersonInformationEditContentView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_4F8C0(v1 + v4, v5, a1);
}

void *sub_53C60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PersonInformationEditContentView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_4F5AC(v1 + v4, v5, a1);
}

uint64_t sub_53D00()
{
  v1 = *(type metadata accessor for PersonInformationEditContentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  sub_2AFC(&qword_734D0, &unk_5AFB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_5670C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_53E68(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PersonInformationEditContentView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return a2(a1, v7, v8, v2 + v5, v6);
}

__n128 sub_53F1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_53F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_53F78(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 sub_53FC8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_53FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_54044(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_540B4()
{
  sub_2C70(&qword_735B0, &qword_5B090);
  sub_533B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5415C@<X0>(void (**a1)(void *a1)@<X8>)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 128);
  *(v3 + 112) = *(v1 + 112);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v1 + 144);
  v5 = *(v1 + 64);
  *(v3 + 48) = *(v1 + 48);
  *(v3 + 64) = v5;
  v6 = *(v1 + 96);
  *(v3 + 80) = *(v1 + 80);
  *(v3 + 96) = v6;
  v7 = *(v1 + 32);
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = v7;
  *a1 = sub_5426C;
  a1[1] = v3;
  return sub_541E0(v1 + 16, v9);
}

unint64_t sub_54218()
{
  result = qword_73628;
  if (!qword_73628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73628);
  }

  return result;
}

unint64_t sub_54294()
{
  result = qword_73650;
  if (!qword_73650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73650);
  }

  return result;
}

unint64_t sub_542E8()
{
  result = qword_73658;
  if (!qword_73658)
  {
    sub_2C70(&qword_73648, &qword_5B2D0);
    sub_543A0();
    sub_3260(&qword_73668, &qword_73670, &qword_5B2D8, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73658);
  }

  return result;
}

unint64_t sub_543A0()
{
  result = qword_73660;
  if (!qword_73660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73660);
  }

  return result;
}

uint64_t sub_543F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    v7 = vars8;
  }
}

uint64_t sub_54440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {
  }

  return result;
}

uint64_t sub_54500()
{

  return _swift_deallocObject(v0, 152, 7);
}

unint64_t sub_545A4()
{
  result = qword_73688;
  if (!qword_73688)
  {
    sub_2C70(&qword_73690, &qword_5B330);
    sub_3260(&qword_73698, &qword_736A0, &unk_5B338, &protocol conformance descriptor for HStack<A>);
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73688);
  }

  return result;
}

uint64_t sub_54688()
{
  sub_2C70(&qword_73610, &qword_5B270);
  sub_3260(&qword_73620, &qword_73610, &qword_5B270, &protocol conformance descriptor for HStack<A>);
  sub_54218();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5476C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_547CC()
{
  result = qword_736B8;
  if (!qword_736B8)
  {
    sub_2C70(&qword_736B0, &unk_5B3F0);
    sub_3260(&qword_716E0, &qword_716E8, &qword_5B6C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_736B8);
  }

  return result;
}

unint64_t sub_54884()
{
  result = qword_736C0;
  if (!qword_736C0)
  {
    sub_2C70(&qword_736A8, &qword_5B3E8);
    sub_3260(&qword_736C8, &qword_736D0, &qword_5B400, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_736C0);
  }

  return result;
}

unint64_t sub_5493C()
{
  result = qword_736D8;
  if (!qword_736D8)
  {
    sub_567AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_736D8);
  }

  return result;
}

unint64_t sub_5499C()
{
  result = qword_736F8;
  if (!qword_736F8)
  {
    sub_2C70(&qword_736F0, &qword_5B448);
    sub_54A54();
    sub_3260(&qword_73728, &qword_73730, &qword_5B460, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_736F8);
  }

  return result;
}

unint64_t sub_54A54()
{
  result = qword_73700;
  if (!qword_73700)
  {
    sub_2C70(&qword_73708, &qword_5B450);
    sub_54B0C();
    sub_3260(&qword_73718, &qword_73720, &qword_5B458, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73700);
  }

  return result;
}

unint64_t sub_54B0C()
{
  result = qword_73710;
  if (!qword_73710)
  {
    sub_2C70(&qword_727F8, &qword_59F08);
    sub_3260(&qword_71760, &qword_71678, &qword_58970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73710);
  }

  return result;
}

unint64_t sub_54BC4()
{
  result = qword_73738;
  if (!qword_73738)
  {
    sub_2C70(&qword_736E0, &qword_5B438);
    sub_3260(&qword_73740, &qword_73748, &qword_5B468, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73738);
  }

  return result;
}

uint64_t sub_54CFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  sub_2C70(a2, a3);
  sub_567AC();
  a4();
  sub_5493C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for RenderingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RenderingError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_54F28(char a1)
{
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  v17._countAndFlagsBits = 0x800000000005D0E0;
  v20._countAndFlagsBits = 0xD000000000000019;
  v20._object = 0x800000000005D0E0;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v5.super.isa = v4;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v6 = sub_55EFC(v20, v22, v5, v23, 0xD000000000000019, v17);

  v19 = v6;
  v7 = [v3 bundleForClass:ObjCClassFromMetadata];
  if (a1)
  {
    if (a1 == 1)
    {
      v8._object = 0x800000000005D120;
      v18._countAndFlagsBits = 0x800000000005D120;
      v8._countAndFlagsBits = 0xD00000000000001CLL;
      v9 = 0xD00000000000001CLL;
    }

    else
    {
      v8._object = 0x800000000005D100;
      v18._countAndFlagsBits = 0x800000000005D100;
      v8._countAndFlagsBits = 0xD00000000000001ELL;
      v9 = 0xD00000000000001ELL;
    }

    v10.value._countAndFlagsBits = 0;
    v10.value._object = 0;
    v11.super.isa = v7;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
  }

  else
  {
    v8._object = 0x800000000005D140;
    v18._countAndFlagsBits = 0x800000000005D140;
    v8._countAndFlagsBits = 0xD000000000000018;
    v10.value._countAndFlagsBits = 0;
    v10.value._object = 0;
    v11.super.isa = v7;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v9 = 0xD000000000000018;
  }

  v13 = sub_55EFC(v8, v10, v11, v12, v9, v18);
  v15 = v14;

  v21._countAndFlagsBits = v13;
  v21._object = v15;
  sub_577DC(v21);

  return v19;
}

unint64_t sub_550F8()
{
  result = qword_73758;
  if (!qword_73758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73758);
  }

  return result;
}

uint64_t sub_5514C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_55194(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double sub_55200@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = sub_5697C();
  LOBYTE(v53[0]) = 1;
  sub_554E8(v42);
  v36 = v42[1];
  v37 = v42[0];
  v6 = v43;
  v38 = v45;
  v39 = v44;
  v7 = v46;
  v41 = v47;
  LOBYTE(v42[0]) = v43;
  LOBYTE(v52[0]) = v46;
  v34 = v53[0];
  sub_56CDC();
  sub_56D0C();
  v35 = sub_56D2C();

  KeyPath = swift_getKeyPath();
  v32 = sub_56FDC();
  v31 = swift_getKeyPath();
  v8 = sub_56CCC();
  sub_5668C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v53[0]) = 0;
  v17 = sub_56C9C();
  LOBYTE(v42[0]) = 1;
  v18 = [objc_opt_self() quaternarySystemFillColor];
  v19 = sub_56FEC();
  v20 = sub_56CAC();
  v21 = (a5 + *(sub_2AFC(&qword_73768, &qword_5B680) + 36));
  v22 = *(sub_567BC() + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_56A0C();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #12.0 }

  *v21 = _Q0;
  *&v21[*(sub_2AFC(&qword_71668, &qword_58960) + 36)] = 256;
  *a5 = v40;
  *(a5 + 8) = 0;
  *(a5 + 16) = v34;
  *(a5 + 17) = v42[0];
  *(a5 + 20) = *(v42 + 3);
  *(a5 + 24) = v37;
  *(a5 + 32) = v36;
  *(a5 + 40) = v6;
  *(a5 + 41) = v53[0];
  *(a5 + 44) = *(v53 + 3);
  *(a5 + 48) = v39;
  *(a5 + 56) = v38;
  *(a5 + 64) = v7;
  *(a5 + 68) = *(v52 + 3);
  *(a5 + 65) = v52[0];
  *(a5 + 72) = v41;
  *(a5 + 80) = KeyPath;
  *(a5 + 88) = v35;
  *(a5 + 96) = v31;
  *(a5 + 104) = v32;
  *(a5 + 112) = v8;
  *(a5 + 116) = *&v51[3];
  *(a5 + 113) = *v51;
  *(a5 + 120) = v10;
  *(a5 + 128) = v12;
  *(a5 + 136) = v14;
  *(a5 + 144) = v16;
  *(a5 + 152) = 0;
  *(a5 + 153) = *v50;
  *(a5 + 156) = *&v50[3];
  *(a5 + 160) = v17;
  *(a5 + 161) = *v49;
  *(a5 + 164) = *&v49[3];
  result = 0.0;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 1;
  *(a5 + 201) = *v48;
  *(a5 + 204) = *&v48[3];
  *(a5 + 208) = v19;
  *(a5 + 216) = v20;
  return result;
}

uint64_t sub_554E8@<X0>(uint64_t a3@<X8>)
{
  sub_2B4C();

  v4 = sub_56E0C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_5702C();
  *a3 = v4;
  *(a3 + 8) = v6;
  v8 &= 1u;
  *(a3 + 16) = v8;
  *(a3 + 24) = v10;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v11;
  sub_2A33C(v4, v6, v8);

  sub_21FDC(v4, v6, v8);
}

uint64_t sub_555CC@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v16[0] = sub_567AC();
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2AFC(&qword_73760, &qword_5B678);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  v13[5] = v12;
  v16[4] = v9;
  v16[5] = v10;
  v16[6] = v11;
  v16[7] = v12;

  sub_2AFC(&qword_73768, &qword_5B680);
  sub_558AC();
  sub_570DC();
  sub_5679C();
  sub_3260(&qword_737D8, &qword_73760, &qword_5B678, &protocol conformance descriptor for Button<A>);
  sub_5493C();
  v14 = v16[0];
  sub_56E4C();
  (*(v2 + 8))(v4, v14);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_55838()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_558AC()
{
  result = qword_73770;
  if (!qword_73770)
  {
    sub_2C70(&qword_73768, &qword_5B680);
    sub_55964();
    sub_3260(&qword_71758, &qword_71668, &qword_58960, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73770);
  }

  return result;
}

unint64_t sub_55964()
{
  result = qword_73778;
  if (!qword_73778)
  {
    sub_2C70(&qword_73780, &qword_5B688);
    sub_55A78(&qword_73788, &qword_73790, &qword_5B690, sub_55A48);
    sub_3260(&qword_71748, &qword_71750, &qword_58A88, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73778);
  }

  return result;
}

uint64_t sub_55A78(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2C70(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_55AFC()
{
  result = qword_737A8;
  if (!qword_737A8)
  {
    sub_2C70(&qword_737B0, &qword_5B6A0);
    sub_55BB4();
    sub_3260(&qword_716E0, &qword_716E8, &qword_5B6C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737A8);
  }

  return result;
}

unint64_t sub_55BB4()
{
  result = qword_737B8;
  if (!qword_737B8)
  {
    sub_2C70(&qword_737C0, &qword_5B6A8);
    sub_3260(&qword_737C8, &qword_737D0, &unk_5B6B0, &protocol conformance descriptor for HStack<A>);
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737B8);
  }

  return result;
}

uint64_t sub_55CA8()
{
  sub_2C70(&qword_73760, &qword_5B678);
  sub_567AC();
  sub_3260(&qword_737D8, &qword_73760, &qword_5B678, &protocol conformance descriptor for Button<A>);
  sub_5493C();
  return swift_getOpaqueTypeConformance2();
}
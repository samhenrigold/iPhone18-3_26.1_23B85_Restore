uint64_t sub_217BBE6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = type metadata accessor for ArticleEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v69);
  v75 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF3C8(0);
  v79 = v5;
  v70 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v77 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF4F0(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v65 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = v59 - v10;
  v11 = sub_217D891CC();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v64 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = v59 - v14;
  v71 = sub_217D8928C();
  v74 = *(v71 - 8);
  v15 = MEMORY[0x28223BE20](v71);
  v67 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v59 - v17;
  v19 = type metadata accessor for HeadlineExposureEvent.Model(0);
  MEMORY[0x28223BE20](v19);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF45C(0);
  v23 = v22;
  v76 = *(v22 - 1);
  MEMORY[0x28223BE20](v22);
  v25 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_217D881AC();
  v80 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = v59 - v27;
  v29 = a1;
  v30 = sub_217D8816C();
  v31 = sub_217D887BC();
  v59[1] = v19;
  v61 = v21;
  v62 = v31;
  v63 = v32;
  v33 = v78;
  v34 = v79;

  v35 = v80;
  (*(v80 + 16))(v28, v29, v26);
  if (!swift_dynamicCast())
  {
    v36 = v34;
    if (!swift_dynamicCast())
    {
      sub_217AE010C(v62, v63);
      return (*(v35 + 8))(v28, v26);
    }

    v60 = v28;
    sub_217BBF5A8(&qword_2811C0968, type metadata accessor for ArticleEngagementEvent.Model, &protocol conformance descriptor for ArticleEngagementEvent.Model);
    v37 = v75;
    v38 = v69;
    sub_217D88A1C();
    LOBYTE(v81) = *(v37 + *(v38 + 20) + 17);
    v46 = ViewAction.rawValue.getter();
    if (v46 == 0x656E696C64616568 && v47 == 0xEB00000000706154)
    {

      v48 = v74;
      v49 = v67;
    }

    else
    {
      v52 = sub_217D89D4C();

      v48 = v74;
      v49 = v67;
      if ((v52 & 1) == 0)
      {
        sub_217AE010C(v62, v63);
LABEL_19:
        sub_217BBF548(v75, type metadata accessor for ArticleEngagementEvent.Model);
        (*(v70 + 8))(v77, v36);
        return (*(v80 + 8))(v60, v26);
      }
    }

    v53 = v71;
    (*(v48 + 104))(v49, *MEMORY[0x277D338F8], v71);
    __swift_project_boxed_opaque_existential_1(v33 + 2, v33[5]);
    v54 = v65;
    sub_217D8931C();
    v56 = v72;
    v55 = v73;
    if ((*(v72 + 48))(v54, 1, v73) == 1)
    {
      (*(v48 + 8))(v49, v53);
      sub_217AE010C(v62, v63);
      sub_217BBF548(v54, sub_217BBF4F0);
    }

    else
    {
      v57 = v64;
      (*(v56 + 32))(v64, v54, v55);
      v58 = v33[5];
      v76 = v33[6];
      __swift_project_boxed_opaque_existential_1(v33 + 2, v58);
      sub_217D8932C();
      sub_217AE010C(v62, v63);
      (*(v56 + 8))(v57, v55);
      (*(v48 + 8))(v49, v53);
    }

    v36 = v79;
    goto LABEL_19;
  }

  v79 = v25;
  v60 = v28;
  sub_217BBF5A8(&qword_2811C11B8, type metadata accessor for HeadlineExposureEvent.Model, &protocol conformance descriptor for HeadlineExposureEvent.Model);
  sub_217D88A1C();
  v75 = v26;
  v77 = v23;
  v40 = v74;
  v41 = v18;
  v42 = v71;
  (*(v74 + 104))(v18, *MEMORY[0x277D33900], v71);
  __swift_project_boxed_opaque_existential_1(v33 + 2, v33[5]);
  v43 = v68;
  sub_217D8931C();
  v45 = v72;
  v44 = v73;
  if ((*(v72 + 48))(v43, 1, v73) == 1)
  {
    (*(v40 + 8))(v41, v42);
    sub_217AE010C(v62, v63);
    sub_217BBF548(v43, sub_217BBF4F0);
  }

  else
  {
    v50 = v66;
    (*(v45 + 32))(v66, v43, v44);
    __swift_project_boxed_opaque_existential_1(v33 + 2, v33[5]);
    sub_217D8932C();
    sub_217AE010C(v62, v63);
    (*(v45 + 8))(v50, v44);
    (*(v40 + 8))(v41, v42);
  }

  v51 = v76;
  sub_217BBF548(v61, type metadata accessor for HeadlineExposureEvent.Model);
  (*(v51 + 8))(v79, v77);
  return (*(v80 + 8))(v60, v75);
}

uint64_t sub_217BBF250()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_217BBF3C8(uint64_t a1)
{
  if (!qword_2811C88B8)
  {
    type metadata accessor for ArticleEngagementEvent(255);
    sub_217BBF5A8(qword_2811C08B8, type metadata accessor for ArticleEngagementEvent, &protocol conformance descriptor for ArticleEngagementEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88B8);
    }
  }
}

void sub_217BBF45C(uint64_t a1)
{
  if (!qword_2811C88C0)
  {
    type metadata accessor for HeadlineExposureEvent(255);
    sub_217BBF5A8(qword_2811C10C8, type metadata accessor for HeadlineExposureEvent, &protocol conformance descriptor for HeadlineExposureEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88C0);
    }
  }
}

void sub_217BBF4F0(uint64_t a1)
{
  if (!qword_2811BCEC8)
  {
    sub_217D891CC();
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811BCEC8);
    }
  }
}

uint64_t sub_217BBF548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217BBF5A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217BBF6B8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA13D0);
  __swift_project_value_buffer(v0, qword_27CBA13D0);
  return sub_217D8866C();
}

uint64_t FeedGroupLayoutFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedGroupLayoutFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 20);
  sub_217A605CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 20);
  sub_217A605CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.subgroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 24);
  sub_217A605CC(0, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0, &type metadata for FormatSubgroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217BBFA6C()
{
  result = qword_2811C3518;
  if (!qword_2811C3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3518);
  }

  return result;
}

unint64_t sub_217BBFAC0()
{
  result = qword_2811C3520;
  if (!qword_2811C3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3520);
  }

  return result;
}

uint64_t FeedGroupLayoutFailureEvent.subgroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 24);
  sub_217A605CC(0, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0, &type metadata for FormatSubgroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 28);
  sub_217A605CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutFailureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 28);
  sub_217A605CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 32);
  sub_217A605CC(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 32);
  sub_217A605CC(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.diagnosticsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 36);
  sub_217A605CC(0, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C, &type metadata for FeedGroupLayoutFailureDiagnosticsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutFailureEvent.diagnosticsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutFailureEvent(0) + 36);
  sub_217A605CC(0, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C, &type metadata for FeedGroupLayoutFailureDiagnosticsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedGroupLayoutFailureEvent(0);
  v5 = v4[5];
  sub_217A605CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A605CC(0, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0, &type metadata for FormatSubgroupData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A605CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217A605CC(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217A605CC(0, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C, &type metadata for FeedGroupLayoutFailureDiagnosticsData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v12, v15);
}

uint64_t FeedGroupLayoutFailureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedGroupLayoutFailureEvent.Model.subgroupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 24));
  v5 = v3[5];
  v15 = v3[4];
  v4 = v15;
  v16 = v5;
  v17 = v3[6];
  v6 = v17;
  v7 = v3[3];
  v13 = v3[2];
  v8 = v13;
  v14 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  a1[1] = v9;
  a1[4] = v4;
  a1[5] = v5;
  a1[2] = v8;
  a1[3] = v7;
  a1[6] = v6;
  return sub_217BC0508(v12, &v11);
}

uint64_t FeedGroupLayoutFailureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

void FeedGroupLayoutFailureEvent.Model.errorData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217BC060C(v4, v5, v6, v7, v8);
}

void sub_217BC060C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
  }
}

uint64_t FeedGroupLayoutFailureEvent.Model.diagnosticsData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutFailureEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 FeedGroupLayoutFailureEvent.Model.init(eventData:feedData:subgroupData:viewData:errorData:diagnosticsData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 8);
  v32 = *a6;
  v30 = *(a5 + 32);
  v31 = a6[1];
  v17 = sub_217D8899C();
  v28 = *(a5 + 16);
  v29 = *a5;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  v20 = (a7 + v18[6]);
  v21 = a3[5];
  v20[4] = a3[4];
  v20[5] = v21;
  v20[6] = a3[6];
  v22 = a3[1];
  *v20 = *a3;
  v20[1] = v22;
  v23 = a3[3];
  v20[2] = a3[2];
  v20[3] = v23;
  v24 = a7 + v18[7];
  *v24 = v14;
  *(v24 + 8) = v15;
  *(v24 + 16) = v16;
  v25 = a7 + v18[8];
  result = v29;
  *v25 = v29;
  *(v25 + 16) = v28;
  *(v25 + 32) = v30;
  v27 = (a7 + v18[9]);
  *v27 = v32;
  v27[1] = v31;
  return result;
}

uint64_t sub_217BC07D4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0x746144726F727265;
  if (v1 != 4)
  {
    v4 = 0x74736F6E67616964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614464656566;
  if (v1 != 1)
  {
    v5 = 0x70756F7267627573;
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

uint64_t sub_217BC08A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BC1DC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BC08CC(uint64_t a1)
{
  v2 = sub_217BC0D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BC0908(uint64_t a1)
{
  v2 = sub_217BC0D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BC14A4(0, &qword_27CBA13F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BC0D6C();
  sub_217D89E7C();
  LOBYTE(v47[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v53[0] = *v11;
    v54 = v12;
    v55 = v13;
    v58 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[3];
    v16 = v14[5];
    v50 = v14[4];
    v51 = v16;
    v17 = v14[5];
    v52 = v14[6];
    v18 = v14[1];
    v47[0] = *v14;
    v47[1] = v18;
    v19 = v14[3];
    v21 = *v14;
    v20 = v14[1];
    v48 = v14[2];
    v49 = v19;
    v44 = v50;
    v45 = v17;
    v46 = v14[6];
    v40 = v21;
    v41 = v20;
    v42 = v48;
    v43 = v15;
    v57 = 2;
    sub_217BC0508(v47, v39);
    sub_217BBFAC0();
    sub_217D89CAC();
    v39[4] = v44;
    v39[5] = v45;
    v39[6] = v46;
    v39[0] = v40;
    v39[1] = v41;
    v39[2] = v42;
    v39[3] = v43;
    sub_217B93D54(v39);
    v23 = v3 + v10[7];
    v24 = *v23;
    v25 = *(v23 + 8);
    LOWORD(v23) = *(v23 + 16);
    v34 = v24;
    v35 = v25;
    LOWORD(v36) = v23;
    v56 = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v26 = (v3 + v10[8]);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    v30 = v26[4];
    v34 = *v26;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v56 = 4;
    sub_217BC060C(v34, v27, v28, v29, v30);
    sub_217A60BE4();
    sub_217D89C3C();
    sub_217BC0DC0(v34, v35, v36, v37, v38);
    v31 = (v3 + v10[9]);
    v32 = v31[1];
    v34 = *v31;
    v35 = v32;
    v56 = 5;
    sub_217B5EA1C();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BC0D6C()
{
  result = qword_27CBA1400;
  if (!qword_27CBA1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1400);
  }

  return result;
}

void sub_217BC0DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
  }
}

void FeedGroupLayoutFailureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BC14A4(0, &qword_27CBA1408, MEMORY[0x277D844C8]);
  v31 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BC0D6C();
  v32 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v29;
    v13 = v11;
    v36[0] = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v14 = v30;
    v15 = v31;
    sub_217D89BCC();
    (*(v28 + 32))(v13, v14, v4);
    LOBYTE(v33) = 1;
    sub_217A5B978();
    sub_217D89BCC();
    v16 = v13 + v9[5];
    *v16 = v36[0];
    *(v16 + 8) = *&v36[8];
    v43 = 2;
    sub_217BBFA6C();
    v30 = 0;
    sub_217D89BCC();
    v17 = (v13 + v9[6]);
    v18 = v40;
    v17[4] = v39;
    v17[5] = v18;
    v17[6] = v41;
    v19 = *&v36[16];
    *v17 = *v36;
    v17[1] = v19;
    v20 = v38;
    v17[2] = v37;
    v17[3] = v20;
    v42 = 3;
    sub_217A5E738();
    sub_217D89BCC();
    v21 = *(&v33 + 1);
    v22 = v34;
    v23 = v13 + v9[7];
    *v23 = v33;
    *(v23 + 8) = v21;
    *(v23 + 16) = v22;
    v42 = 4;
    sub_217A60B90();
    sub_217D89B5C();
    v24 = v35;
    v25 = v13 + v9[8];
    v26 = v34;
    *v25 = v33;
    *(v25 + 16) = v26;
    *(v25 + 32) = v24;
    v42 = 5;
    sub_217B5E9C4();
    sub_217D89B5C();
    (*(v12 + 8))(v32, v15);
    *(v13 + v9[9]) = v33;
    sub_217BC1508(v13, v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217BC156C(v13);
  }
}

void sub_217BC14A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BC0D6C();
    v7 = a3(a1, &type metadata for FeedGroupLayoutFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BC1508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BC156C(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupLayoutFailureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BC16A0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A605CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A605CC(0, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0, &type metadata for FormatSubgroupData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A605CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217A605CC(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217A605CC(0, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C, &type metadata for FeedGroupLayoutFailureDiagnosticsData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v13, v16);
}

void sub_217BC19AC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A605CC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A605CC(319, &qword_27CBA13E8, sub_217BBFA6C, sub_217BBFAC0, &type metadata for FormatSubgroupData);
      if (v3 <= 0x3F)
      {
        sub_217A605CC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217A605CC(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
          if (v5 <= 0x3F)
          {
            sub_217A605CC(319, &qword_27CBA13F0, sub_217B5E9C4, sub_217B5EA1C, &type metadata for FeedGroupLayoutFailureDiagnosticsData);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_217BC1BD0(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CBA1430, &type metadata for ErrorData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CBA1438, &type metadata for FeedGroupLayoutFailureDiagnosticsData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BC1CBC()
{
  result = qword_27CBA1440;
  if (!qword_27CBA1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1440);
  }

  return result;
}

unint64_t sub_217BC1D14()
{
  result = qword_27CBA1448;
  if (!qword_27CBA1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1448);
  }

  return result;
}

unint64_t sub_217BC1D6C()
{
  result = qword_27CBA1450;
  if (!qword_27CBA1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1450);
  }

  return result;
}

uint64_t sub_217BC1DC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F7267627573 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEF61746144736369)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

NewsAnalytics::NotificationSubscribedType_optional __swiftcall NotificationSubscribedType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationSubscribedType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7374726F7073;
  if (v1 != 5)
  {
    v3 = 0x73656C7A7A7570;
  }

  v4 = 0x6E6974656B72616DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C656E6E616863;
  if (v1 != 1)
  {
    v5 = 0x657573734977656ELL;
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

unint64_t sub_217BC2124()
{
  result = qword_27CBA1458;
  if (!qword_27CBA1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1458);
  }

  return result;
}

uint64_t sub_217BC2184(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217BC22AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x7374726F7073;
  if (v2 != 5)
  {
    v6 = 0x73656C7A7A7570;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6974656B72616DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000217DCB160;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v10 = 0x657573734977656ELL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_217BC2450()
{
  result = qword_27CBA1460;
  if (!qword_27CBA1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1460);
  }

  return result;
}

uint64_t sub_217BC24A4()
{
  sub_217A55A08(0, &qword_2811BCF18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_217D88DDC();
}

uint64_t sub_217BC2520(uint64_t a1)
{
  v312 = *MEMORY[0x277D85DE8];
  v259 = type metadata accessor for SportsSessionEndEvent.Model(0);
  MEMORY[0x28223BE20](v259);
  v260 = &v235 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BC7F34(0);
  v4 = v3;
  v255 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v254 = &v235 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_217BC7E50(0, &qword_27CBA1478, MEMORY[0x277CEACA0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v256 = &v235 - v8;
  v9 = sub_217D889CC();
  v261 = *(v9 - 8);
  v262 = v9;
  MEMORY[0x28223BE20](v9);
  v265 = &v235 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217D87CCC();
  v269 = *(v11 - 8);
  v270 = v11;
  MEMORY[0x28223BE20](v11);
  v268 = &v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_217D8899C();
  v274 = *(v289 - 8);
  v13 = MEMORY[0x28223BE20](v289);
  v266 = &v235 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v264 = &v235 - v15;
  v257 = type metadata accessor for AppSessionEndEvent.Model(0);
  MEMORY[0x28223BE20](v257);
  v258 = &v235 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_217D8806C();
  v272 = *(v281 - 8);
  v17 = MEMORY[0x28223BE20](v281);
  v279 = &v235 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v271 = &v235 - v19;
  v288 = sub_217D8800C();
  v273 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v287 = &v235 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BC7E50(0, &qword_2811C8400, MEMORY[0x277CEAEB0], v6);
  MEMORY[0x28223BE20](v21 - 8);
  v286 = &v235 - v22;
  sub_217BC7E50(0, &unk_2811C8A30, MEMORY[0x277CEAC78], v6);
  MEMORY[0x28223BE20](v23 - 8);
  v295 = &v235 - v24;
  sub_217BC7E50(0, &qword_2811C8C80, MEMORY[0x277CC9578], v6);
  MEMORY[0x28223BE20](v25 - 8);
  v290 = &v235 - v26;
  v294 = sub_217D87C9C();
  v291 = *(v294 - 1);
  MEMORY[0x28223BE20](v294);
  *&v292 = &v235 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_217D8797C();
  v276 = *(v28 - 8);
  v277 = v28;
  MEMORY[0x28223BE20](v28);
  v275 = (&v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217BC7FC8(0);
  v278 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v263 = &v235 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v267 = &v235 - v34;
  MEMORY[0x28223BE20](v33);
  v280 = &v235 - v35;
  *&v293 = sub_217D8808C();
  v285 = *(v293 - 8);
  v36 = MEMORY[0x28223BE20](v293);
  v282 = &v235 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v283 = &v235 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v235 - v40;
  v284 = type metadata accessor for Session(0);
  MEMORY[0x28223BE20](v284);
  v43 = &v235 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_217D889FC();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = (&v235 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v296 = a1;
  v48 = sub_217D887EC();
  if (v48 != 6 && v48)
  {
    return MEMORY[0x277D84F90];
  }

  v253 = v4;
  sub_217D8884C();
  if (v49)
  {

    return MEMORY[0x277D84F90];
  }

  v251 = v43;
  sub_217D88A3C();
  swift_allocObject();
  v51 = sub_217D88A2C();
  *v47 = sub_217BC5340;
  v47[1] = 0;
  (*(v45 + 104))(v47, *MEMORY[0x277D6C9B0], v44);
  sub_217D88A0C();
  v52 = objc_opt_self();
  sub_217D8883C();
  sub_217BC8030();
  v53 = sub_217D896CC();

  *v301 = 0;
  v54 = [v52 dataWithJSONObject:v53 options:0 error:v301];

  v55 = *v301;
  if (!v54)
  {
    v60 = v55;
    sub_217D87B2C();

    swift_willThrow();
  }

  v56 = sub_217D87C0C();
  v58 = v57;

  sub_217BC7E50(0, &qword_2811BCE68, MEMORY[0x277CEAC80], MEMORY[0x277D83940]);
  sub_217BC8094();
  v59 = v297;
  sub_217D88A1C();
  if (v59)
  {
    sub_217AE010C(v56, v58);
  }

  v241 = v58;
  v242 = v56;
  v243 = v51;
  v61 = *v301;
  sub_217D887FC();
  v62 = sub_217D8947C();

  *v301 = 0;
  v63 = [v52 dataWithJSONObject:v62 options:0 error:v301];

  v64 = *v301;
  if (!v63)
  {
    v68 = v64;

    sub_217D87B2C();

    swift_willThrow();
    sub_217AE010C(v242, v241);
  }

  v240 = v61;
  v65 = sub_217D87C0C();
  v67 = v66;

  sub_217BC816C(&qword_2811BD390, type metadata accessor for Session, &unk_217DAED40);
  sub_217D88A1C();
  v236 = v65;
  v237 = v67;
  v297 = 0;
  v69 = *(v240 + 16);
  v70 = MEMORY[0x277D84F90];
  v238 = v69;
  if (v69)
  {
    v249 = *(v285 + 16);
    v250 = v285 + 16;
    v71 = v240 + ((*(v285 + 80) + 32) & ~*(v285 + 80));
    v72 = *(v285 + 72);
    v247 = (v285 + 8);
    v248 = v72;
    v73 = v290;
    v245 = (v273 + 1);
    v246 = (v291 + 56);
    v244 = (v274 + 48);
    v239 = (v274 + 8);
    v252 = (v291 + 32);
    v74 = v293;
    while (1)
    {
      v273 = v70;
      v249(v41, v71, v74);
      sub_217D8803C();
      v76 = v295;
      v77 = sub_217D8802C();
      v78 = v74;
      v79 = *(v77 - 8);
      if ((*(v79 + 48))(v76, 1, v77) != 1)
      {
        break;
      }

      sub_217BC81B4(v76, &unk_2811C8A30, MEMORY[0x277CEAC78], MEMORY[0x277D83D88], sub_217BC7E50);
      v80 = v287;
      sub_217D8804C();
      v81 = v286;
      sub_217D87FFC();
      (*v245)(v80, v288);
      v82 = v289;
      if ((*v244)(v81, 1, v289) != 1)
      {
        sub_217D8896C();
        (*v247)(v41, v293);
        (*v239)(v81, v82);
LABEL_22:
        v83 = v294;
        (*v246)(v73, 0, 1, v294);
        v84 = *v252;
        (*v252)(v292, v73, v83);
        v70 = v273;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_217B5B1F0(0, v70[2] + 1, 1, v70);
        }

        v86 = v70[2];
        v85 = v70[3];
        if (v86 >= v85 >> 1)
        {
          v70 = sub_217B5B1F0((v85 > 1), v86 + 1, 1, v70);
        }

        v70[2] = v86 + 1;
        v84(v70 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v86, v292, v294);
        v74 = v293;
        goto LABEL_17;
      }

      v74 = v293;
      (*v247)(v41, v293);
      v75 = MEMORY[0x277D83D88];
      sub_217BC81B4(v81, &qword_2811C8400, MEMORY[0x277CEAEB0], MEMORY[0x277D83D88], sub_217BC7E50);
      (*v246)(v73, 1, 1, v294);
      sub_217BC81B4(v73, &qword_2811C8C80, MEMORY[0x277CC9578], v75, sub_217BC7E50);
      v70 = v273;
LABEL_17:
      v71 += v248;
      if (!--v69)
      {
        goto LABEL_27;
      }
    }

    sub_217D8801C();
    (*(v79 + 8))(v76, v77);
    v73 = v290;
    sub_217D87C5C();
    (*v247)(v41, v78);
    goto LABEL_22;
  }

LABEL_27:
  v87 = v280;
  sub_217BC5408(v280, v280 + *(v278 + 48), v296, v70);

  sub_217D879BC();
  swift_allocObject();
  v88 = sub_217D879AC();
  v90 = v275;
  v89 = v276;
  *v275 = sub_217BC5EB8;
  v90[1] = 0;
  (*(v89 + 104))(v90, *MEMORY[0x277CC8770], v277);
  sub_217D8798C();
  v91 = sub_217D887EC();
  if (v91 <= 5)
  {
    v92 = v251;
    v93 = v241;
    if ((v91 - 1) >= 5 && !v91)
    {
      v295 = v88;
      v94 = 0;
      v95 = (v285 + 16);
      v96 = v271;
      v97 = (v272 + 8);
      v98 = (v285 + 8);
      while (v238 != v94)
      {
        if (v94 >= *(v240 + 16))
        {
          goto LABEL_73;
        }

        (*(v285 + 16))(v283, v240 + ((*(v285 + 80) + 32) & ~*(v285 + 80)) + *(v285 + 72) * v94, v293);
        sub_217D8807C();
        v100 = sub_217D8805C();
        v102 = v101;
        (*v97)(v96, v281);
        if (v100 == 0xD000000000000012 && 0x8000000217DCF320 == v102)
        {

          (*v98)(v283, v293);
          goto LABEL_46;
        }

        ++v94;
        v99 = sub_217D89D4C();

        (*v98)(v283, v293);
        if (v99)
        {
          goto LABEL_46;
        }
      }

      LODWORD(v286) = sub_217D8882C();
      if (v286)
      {
        v127 = 7;
      }

      else
      {
        v127 = 4;
      }

      LODWORD(v287) = v127;
      v128 = v268;
      sub_217D87CBC();
      sub_217D87CAC();
      *&v293 = v129;
      (*(v269 + 8))(v128, v270);
      v130 = v280;
      v131 = v267;
      sub_217BC8214(v280, v267);
      v132 = v278;
      *&v292 = *v251;

      sub_217D8897C();
      v133 = *(v291 + 8);
      v134 = v294;
      v133(v131, v294);
      sub_217BC8214(v130, v131);
      *&v293 = *(v132 + 48);
      v135 = v263;
      sub_217BC8214(v130, v263);
      sub_217D889BC();
      v133(v135, v134);
      v133(v131 + v293, v134);
      v136 = v284;
      v137 = v251 + *(v284 + 36);
      v139 = *v137;
      v138 = *(v137 + 1);
      v140 = *(v137 + 2);
      *&v292 = *(v137 + 3);
      v141 = *(v137 + 4);
      *&v293 = *(v137 + 5);
      v142 = v137[48];
      sub_217D887FC();
      if (v140 == 1)
      {
        *v301 = 0;
        *&v301[8] = 0xE000000000000000;
        sub_217D899FC();

        *v301 = 0xD00000000000003FLL;
        *&v301[8] = 0x8000000217DCF2E0;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v143 = v280;
        v144 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v144);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v145 = sub_217D8949C();
        v147 = v146;

        MEMORY[0x21CEACC70](v145, v147);

        v148 = *v301;
        v149 = *&v301[8];
        sub_217BC8278();
        swift_allocError();
        *v150 = v148;
        v150[1] = v149;
        swift_willThrow();

        sub_217AE010C(v236, v237);
        sub_217AE010C(v242, v241);

        (*(v261 + 8))(v265, v262);
        (*(v274 + 8))(v264, v289);
        v151 = v143;
LABEL_62:
        sub_217BC85C4(v151, sub_217BC7FC8);
        v126 = v251;
        return sub_217BC85C4(v126, type metadata accessor for Session);
      }

      v279 = v139;
      *&v308 = v139;
      *(&v308 + 1) = v138;
      v281 = v138;
      v282 = v140;
      v158 = v292;
      *&v309 = v140;
      *(&v309 + 1) = v292;
      v285 = v141;
      *&v310 = v141;
      *(&v310 + 1) = v293;
      LODWORD(v283) = v142;
      v311 = v142;
      sub_217ACC004(&v308, v301);

      v159 = (v251 + v136[14]);
      v160 = v159[1];
      v278 = *v159;
      v161 = v159[2];
      v162 = v159[3];
      v163 = v159[5];
      v288 = v159[4];
      v164 = v159[6];
      v290 = v163;
      v291 = v164;
      sub_217D887FC();
      if (!v160)
      {
        *v301 = 0;
        *&v301[8] = 0xE000000000000000;
        sub_217D899FC();

        *v301 = 0xD00000000000002ELL;
        *&v301[8] = 0x8000000217DCF340;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v184 = v280;
        v185 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v185);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v186 = sub_217D8949C();
        v188 = v187;

        MEMORY[0x21CEACC70](v186, v188);

        v189 = *v301;
        v190 = *&v301[8];
        sub_217BC8278();
        swift_allocError();
        *v191 = v189;
        v191[1] = v190;
        swift_willThrow();

        sub_217AE010C(v236, v237);
        sub_217AE010C(v242, v241);

        sub_217BC84CC(v279, v281, v282, v158, v285, v293);
        (*(v261 + 8))(v265, v262);
        (*(v274 + 8))(v264, v289);
        v151 = v184;
        goto LABEL_62;
      }

      v165 = v278;
      *&v304 = v278;
      *(&v304 + 1) = v160;
      v275 = v160;
      v276 = v161;
      *&v305 = v161;
      *(&v305 + 1) = v162;
      v277 = v162;
      *&v306 = v288;
      *(&v306 + 1) = v290;
      v307 = v291;
      sub_217B9E08C(&v304, v301);

      v166 = v251;
      v167 = (v251 + v136[17]);
      v168 = *v167;
      v169 = v167[1];
      sub_217D887FC();
      if (!v168)
      {
        *v301 = 0;
        *&v301[8] = 0xE000000000000000;
        sub_217D899FC();

        *v301 = 0xD000000000000036;
        *&v301[8] = 0x8000000217DCF370;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v172 = v280;
        v192 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v192);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v193 = sub_217D8949C();
        v195 = v194;

        MEMORY[0x21CEACC70](v193, v195);

        v196 = *v301;
        v197 = *&v301[8];
        sub_217BC8278();
        swift_allocError();
        *v198 = v196;
        v198[1] = v197;
        swift_willThrow();

        sub_217AE010C(v236, v237);
        sub_217AE010C(v242, v241);

        sub_217BC84CC(v279, v281, v282, v292, v285, v293);
        sub_217BC8514(v165, v275, v276, v277, v288, v290);
        goto LABEL_65;
      }

      v273 = v168;
      *&v303 = v168;
      *(&v303 + 1) = v169;
      sub_217A55A60(&v303, v301);

      v170 = v166 + v136[15];
      LODWORD(v272) = *v170;
      v171 = v170[4];
      sub_217D887FC();
      if (v171)
      {
        *v301 = 0;
        *&v301[8] = 0xE000000000000000;
        sub_217D899FC();

        *v301 = 0xD000000000000030;
        *&v301[8] = 0x8000000217DCF3B0;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v172 = v280;
        v173 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v173);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v174 = sub_217D8949C();
        v176 = v175;

        MEMORY[0x21CEACC70](v174, v176);

        v177 = *v301;
        v178 = *&v301[8];
        sub_217BC8278();
        swift_allocError();
        *v179 = v177;
        v179[1] = v178;
        swift_willThrow();

        sub_217AE010C(v236, v237);
        sub_217AE010C(v242, v241);

        sub_217BC84CC(v279, v281, v282, v292, v285, v293);
        sub_217BC8514(v165, v275, v276, v277, v288, v290);

LABEL_65:
        (*(v261 + 8))(v265, v262);
        (*(v274 + 8))(v264, v289);
        sub_217BC85C4(v172, sub_217BC7FC8);
        v126 = v166;
        return sub_217BC85C4(v126, type metadata accessor for Session);
      }

      v199 = v165;

      v95 = *(v166 + v136[18]);
      sub_217D887FC();
      if (!v95)
      {
        *v301 = 0;
        *&v301[8] = 0xE000000000000000;
        sub_217D899FC();

        *v301 = 0xD000000000000036;
        *&v301[8] = 0x8000000217DCF3F0;
        sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v201 = v280;
        v202 = sub_217D89CFC();
        MEMORY[0x21CEACC70](v202);

        MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
        v203 = sub_217D8949C();
        v205 = v204;

        MEMORY[0x21CEACC70](v203, v205);

        v206 = *v301;
        v207 = *&v301[8];
        sub_217BC8278();
        swift_allocError();
        *v208 = v206;
        v208[1] = v207;
        swift_willThrow();

        sub_217AE010C(v236, v237);
        sub_217AE010C(v242, v241);

        sub_217BC84CC(v279, v281, v282, v292, v285, v293);
        sub_217BC8514(v199, v275, v276, v277, v288, v290);

        (*(v261 + 8))(v265, v262);
        (*(v274 + 8))(v264, v289);
        sub_217BC85C4(v201, sub_217BC7FC8);
        v126 = v251;
        return sub_217BC85C4(v126, type metadata accessor for Session);
      }

      memset(v302, 0, 64);
      sub_217BC81B4(v302, &qword_2811C2DE0, &type metadata for TabiRequestSummary, MEMORY[0x277D83D88], sub_217A55A08);
      if (v286)
      {
      }

      else
      {
        v209 = sub_217D89D4C();

        if ((v209 & 1) == 0)
        {
LABEL_74:
          v211 = 3;
LABEL_75:
          sub_217BC8584(v301);
          v212 = v256;
          sub_217D8881C();
          sub_217BC5FB4(v212, &v298);
          sub_217BC81B4(v212, &qword_27CBA1478, MEMORY[0x277CEACA0], MEMORY[0x277D83D88], sub_217BC7E50);
          v213 = v298;
          LOBYTE(v212) = v299;
          v214 = v258;
          (*(v274 + 32))(v258, v264, v289);
          v215 = v257;
          (*(v261 + 32))(v214 + *(v257 + 20), v265, v262);
          v216 = v214 + v215[6];
          v217 = v309;
          *v216 = v308;
          *(v216 + 16) = v217;
          *(v216 + 32) = v310;
          *(v216 + 48) = v311;
          v218 = v214 + v215[7];
          v219 = v305;
          *v218 = v304;
          *(v218 + 16) = v219;
          *(v218 + 32) = v306;
          *(v218 + 48) = v307;
          v220 = (v214 + v215[8]);
          *v220 = xmmword_217DA3B00;
          v220[1] = 0u;
          v220[2] = 0u;
          v220[3] = 0u;
          v220[4] = 0u;
          v220[5] = 0u;
          *(v214 + v215[9]) = v303;
          *(v214 + v215[10]) = v272;
          *(v214 + v215[11]) = v287;
          memcpy((v214 + v215[12]), v301, 0x144uLL);
          *(v214 + v215[13]) = v95;
          v221 = v214 + v215[14];
          *v221 = 0x6E776F6E6B6E75;
          *(v221 + 8) = 0xE700000000000000;
          v222 = MEMORY[0x277D84F90];
          *(v221 + 16) = MEMORY[0x277D84F90];
          *(v221 + 24) = v222;
          *(v221 + 32) = 0;
          *(v221 + 33) = *v300;
          *(v221 + 36) = *&v300[3];
          *(v221 + 40) = 0u;
          *(v221 + 56) = 0u;
          *(v221 + 72) = 0u;
          *(v221 + 88) = 0u;
          *(v221 + 104) = 0x6E776F6E6B6E75;
          *(v221 + 112) = 0xE700000000000000;
          *(v214 + v215[15]) = 0;
          v223 = v214 + v215[16];
          *v223 = 0;
          *(v223 + 4) = 1;
          *(v214 + v215[17]) = v211;
          v224 = v214 + v215[18];
          *(v224 + 2) = v212;
          *v224 = v213;
          sub_217BC816C(&qword_2811C3FA8, type metadata accessor for AppSessionEndEvent.Model, &protocol conformance descriptor for AppSessionEndEvent.Model);
          v225 = v297;
          sub_217D8799C();
          if (v225)
          {

            sub_217AE010C(v236, v237);
            sub_217AE010C(v242, v241);

            sub_217BC85C4(v258, type metadata accessor for AppSessionEndEvent.Model);
            sub_217BC85C4(v280, sub_217BC7FC8);
            return sub_217BC85C4(v251, type metadata accessor for Session);
          }

          else
          {
            v226 = objc_allocWithZone(sub_217D887CC());
            v227 = sub_217D887DC();
            v228 = sub_217D887FC();
            v229 = sub_217BC82CC(v227, v228);
            v297 = 0;
            v230 = v229;

            sub_217D8884C();
            sub_217D887EC();
            type metadata accessor for AppSessionEndEvent(0);
            sub_217BC816C(qword_2811C3ED8, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
            v231 = v254;
            sub_217D8817C();
            sub_217D885AC();
            sub_217A53600(0, &unk_2811BC478, &qword_2811C8478, MEMORY[0x277CEAD60]);
            v232 = swift_allocObject();
            *(v232 + 16) = xmmword_217D8D8F0;
            v233 = v253;
            *(v232 + 56) = v253;
            *(v232 + 64) = sub_217BC816C(&qword_2811C8880, sub_217BC7F34, MEMORY[0x277CEACA8]);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v232 + 32));
            (*(v255 + 32))(boxed_opaque_existential_1, v231, v233);

            sub_217AE010C(v236, v237);
            sub_217AE010C(v242, v241);

            sub_217BC85C4(v258, type metadata accessor for AppSessionEndEvent.Model);
            sub_217BC85C4(v280, sub_217BC7FC8);
            sub_217BC85C4(v251, type metadata accessor for Session);
            return v232;
          }
        }
      }

      sub_217BB3BE4(v301);

      v210 = v301[0];

      sub_217BB3BF4(&v298);

      v211 = v210 | (v298 << 8);
      goto LABEL_75;
    }

LABEL_38:

    sub_217AE010C(v236, v237);
    sub_217AE010C(v242, v93);

    sub_217BC85C4(v87, sub_217BC7FC8);
    sub_217BC85C4(v92, type metadata accessor for Session);
    return MEMORY[0x277D84F90];
  }

  v92 = v251;
  v93 = v241;
  if (v91 != 6)
  {
    goto LABEL_38;
  }

  v295 = v88;
  v103 = 0;
  v95 = (v272 + 8);
  v104 = (v285 + 8);
  v105 = v279;
  while (v238 != v103)
  {
    if (v103 >= *(v240 + 16))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    (*(v285 + 16))(v282, v240 + ((*(v285 + 80) + 32) & ~*(v285 + 80)) + *(v285 + 72) * v103, v293);
    sub_217D8807C();
    v107 = sub_217D8805C();
    v109 = v108;
    (*v95)(v105, v281);
    if (v107 == 0xD000000000000015 && 0x8000000217DCF2C0 == v109)
    {

      (*v104)(v282, v293);
LABEL_46:

      sub_217AE010C(v236, v237);
      sub_217AE010C(v242, v241);

      sub_217BC85C4(v280, sub_217BC7FC8);
      sub_217BC85C4(v251, type metadata accessor for Session);
      return MEMORY[0x277D84F90];
    }

    ++v103;
    v106 = sub_217D89D4C();

    (*v104)(v282, v293);
    if (v106)
    {
      goto LABEL_46;
    }
  }

  v110 = v268;
  sub_217D87CBC();
  *&v293 = sub_217D87CAC();
  (*(v269 + 8))(v110, v270);
  v111 = v267;
  sub_217BC8214(v280, v267);
  v112 = v251;

  sub_217D8897C();
  (*(v291 + 8))(v111, v294);
  v113 = v112 + *(v284 + 36);
  v114 = *(v113 + 1);
  v292 = *v113;
  v293 = v114;
  v115 = *(v113 + 4);
  v116 = *(v113 + 5);
  v117 = v113[48];
  sub_217D887FC();
  if (v293 == 1)
  {
    *v301 = 0;
    *&v301[8] = 0xE000000000000000;
    sub_217D899FC();

    *v301 = 0xD00000000000003FLL;
    *&v301[8] = 0x8000000217DCF2E0;
    sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v118 = v280;
    v119 = sub_217D89CFC();
    MEMORY[0x21CEACC70](v119);

    MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
    v120 = sub_217D8949C();
    v122 = v121;

    MEMORY[0x21CEACC70](v120, v122);

    v123 = *v301;
    v124 = *&v301[8];
    sub_217BC8278();
    swift_allocError();
    *v125 = v123;
    v125[1] = v124;
    swift_willThrow();

    sub_217AE010C(v236, v237);
    sub_217AE010C(v242, v241);

    (*(v274 + 8))(v266, v289);
    sub_217BC85C4(v118, sub_217BC7FC8);
    v126 = v112;
    return sub_217BC85C4(v126, type metadata accessor for Session);
  }

  *v301 = v292;
  *&v301[16] = v293;
  *&v301[32] = v115;
  *&v301[40] = v116;
  v301[48] = v117;
  sub_217ACC004(v301, v302);

  v152 = v260;
  (*(v274 + 32))(v260, v266, v289);
  v153 = v259;
  v154 = v152 + *(v259 + 20);
  v155 = *&v301[16];
  *v154 = *v301;
  *(v154 + 16) = v155;
  *(v154 + 32) = *&v301[32];
  *(v154 + 48) = v301[48];
  *(v152 + *(v153 + 24)) = MEMORY[0x277D84F90];
  sub_217A53600(0, &unk_2811BC478, &qword_2811C8478, MEMORY[0x277CEAD60]);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_217D8D8F0;
  sub_217BC816C(&qword_27CBA1490, type metadata accessor for SportsSessionEndEvent.Model, &protocol conformance descriptor for SportsSessionEndEvent.Model);
  v157 = v297;
  sub_217D8799C();
  if (v157)
  {

    sub_217AE010C(v236, v237);
    sub_217AE010C(v242, v241);

    sub_217BC85C4(v152, type metadata accessor for SportsSessionEndEvent.Model);
    sub_217BC85C4(v280, sub_217BC7FC8);
    sub_217BC85C4(v251, type metadata accessor for Session);
    *(v156 + 16) = 0;
  }

  else
  {
    v180 = objc_allocWithZone(sub_217D887CC());
    v181 = sub_217D887DC();
    v182 = sub_217D887FC();
    v183 = v280;
    v294 = sub_217BC82CC(v181, v182);

    *&v293 = sub_217D8884C();
    v297 = 0;
    sub_217D887EC();
    sub_217BC8438(0);
    *(v156 + 56) = v200;
    *(v156 + 64) = sub_217BC816C(&qword_27CBA14A8, sub_217BC8438, MEMORY[0x277CEACA8]);
    __swift_allocate_boxed_opaque_existential_1((v156 + 32));
    type metadata accessor for SportsSessionEndEvent(0);
    sub_217BC816C(&qword_27CBA14A0, type metadata accessor for SportsSessionEndEvent, &protocol conformance descriptor for SportsSessionEndEvent);
    sub_217D8817C();

    sub_217AE010C(v236, v237);
    sub_217AE010C(v242, v241);

    sub_217BC85C4(v260, type metadata accessor for SportsSessionEndEvent.Model);
    sub_217BC85C4(v183, sub_217BC7FC8);
    sub_217BC85C4(v251, type metadata accessor for Session);
    return v156;
  }
}

void *sub_217BC5340(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_217D89E4C();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_217D89D5C();
    __swift_destroy_boxed_opaque_existential_1(v3);
    return sub_217D87C5C();
  }

  return result;
}

uint64_t sub_217BC5408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v37 = a1;
  v38 = a2;
  sub_217BC7E50(0, &qword_2811C8C80, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_217D87C9C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  sub_217D8880C();
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    sub_217D87C8C();
    if (v23(v12, 1, v13) != 1)
    {
      sub_217BC81B4(v12, &qword_2811C8C80, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_217BC7E50);
    }
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
  }

  v24 = v36;
  sub_217BC5958(v36, v10);
  if (v23(v10, 1, v13) == 1)
  {
    (*(v14 + 16))(v20, v22, v13);
    if (v23(v10, 1, v13) != 1)
    {
      sub_217BC81B4(v10, &qword_2811C8C80, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_217BC7E50);
    }
  }

  else
  {
    (*(v14 + 32))(v20, v10, v13);
  }

  sub_217BC5C08(v24, v7);
  if (v23(v7, 1, v13) == 1)
  {
    (*(v14 + 16))(v17, v22, v13);
    v25 = v23(v7, 1, v13);
    v26 = v37;
    if (v25 != 1)
    {
      sub_217BC81B4(v7, &qword_2811C8C80, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_217BC7E50);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v7, v13);
    v26 = v37;
  }

  sub_217BC816C(&qword_2811C8C88, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v27 = sub_217D894EC();
  v28 = *(v14 + 16);
  if (v27)
  {
    v29 = v20;
  }

  else
  {
    v29 = v22;
  }

  v28(v26, v29, v13);
  v30 = sub_217D894FC();
  v31 = v20;
  v32 = v26;
  v33 = *(v14 + 8);
  v33(v31, v13);
  v33(v22, v13);
  if (v30)
  {
    return (*(v14 + 32))(v38, v17, v13);
  }

  v33(v17, v13);
  return (v28)(v38, v32, v13);
}

uint64_t sub_217BC5958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217D87C9C();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_217BC816C(&qword_2811C8C88, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = sub_217D894EC();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_217BC5C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217D87C9C();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_217BC816C(&qword_2811C8C88, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = sub_217D894EC();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

void sub_217BC5EB8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217D89E6C();
  sub_217D87C6C();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_217D89D6C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_217BC5FB4@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v57 = a2;
  v3 = sub_217D8860C();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_217BC7E50(0, &qword_27CBA1468, MEMORY[0x277CEADE0], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v51 - v9;
  v10 = sub_217D882CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BC7E50(0, &qword_27CBA1470, MEMORY[0x277CEAD00], v5);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = MEMORY[0x277CEACA0];
  sub_217BC7E50(0, &qword_27CBA1478, MEMORY[0x277CEACA0], v5);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v51 - v22;
  v24 = sub_217D8812C();
  MEMORY[0x28223BE20](v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v29 = v28;
  v30 = v20;
  v32 = v31;
  sub_217BC7EB4(v27, v23, &qword_27CBA1478, v30);
  if ((*(v29 + 48))(v23, 1, v32) == 1)
  {
    result = sub_217BC81B4(v23, &qword_27CBA1478, MEMORY[0x277CEACA0], MEMORY[0x277D83D88], sub_217BC7E50);
    v34 = 3072;
  }

  else
  {
    v51 = v29;
    (*(v29 + 32))(v26, v23, v32);
    sub_217D8811C();
    sub_217BC7EB4(v19, v17, &qword_27CBA1470, MEMORY[0x277CEAD00]);
    if ((*(v11 + 48))(v17, 1, v10) == 1)
    {
      sub_217BC81B4(v19, &qword_27CBA1470, MEMORY[0x277CEAD00], MEMORY[0x277D83D88], sub_217BC7E50);
      v35 = 2816;
    }

    else
    {
      (*(v11 + 32))(v13, v17, v10);
      sub_217BC6774(&v61);
      (*(v11 + 8))(v13, v10);
      sub_217BC81B4(v19, &qword_27CBA1470, MEMORY[0x277CEAD00], MEMORY[0x277D83D88], sub_217BC7E50);
      v35 = v61;
    }

    v36 = v54;
    sub_217D8810C();
    v37 = v53;
    sub_217BC7EB4(v36, v53, &qword_27CBA1468, MEMORY[0x277CEADE0]);
    v39 = v55;
    v38 = v56;
    if ((*(v55 + 48))(v37, 1, v56) == 1)
    {
      sub_217BC81B4(v36, &qword_27CBA1468, MEMORY[0x277CEADE0], MEMORY[0x277D83D88], sub_217BC7E50);
      v40 = 40;
    }

    else
    {
      v41 = v52;
      (*(v39 + 32))(v52, v37, v38);
      v42 = sub_217D885FC();
      sub_217BC7070(v42, v43, &v58);

      (*(v39 + 8))(v41, v38);
      sub_217BC81B4(v36, &qword_27CBA1468, MEMORY[0x277CEADE0], MEMORY[0x277D83D88], sub_217BC7E50);
      v40 = v58;
    }

    sub_217A535B4();
    v44 = sub_217D898DC();
    v45 = sub_217D897FC();
    sub_217A53600(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_217D8D8F0;
    v59 = v35;
    v60 = v40;
    v47 = sub_217D8958C();
    v49 = v48;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = sub_217A62448();
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    sub_217D88E5C("Successfully converted AppAnalytics.CrashDetails to NewsAnalytics.CrashData: %{public}@", 87, 2, &dword_217A45000, v44, v45, v46);

    result = (*(v51 + 8))(v26, v32);
    v34 = v35 | (v40 << 16);
  }

  v50 = v57;
  *v57 = v34;
  *(v50 + 2) = BYTE2(v34);
  return result;
}

uint64_t sub_217BC6774@<X0>(char *a1@<X8>)
{
  v2 = sub_217D882AC();
  sub_217BC67F0(v2, v3, &v10);

  v4 = v10;
  v5 = sub_217D882BC();
  sub_217BC6CDC(v5, v6, &v9);

  v8 = v9;
  *a1 = v4;
  a1[1] = v8;
  return result;
}

void sub_217BC67F0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    sub_217A535B4();
    v7 = sub_217D898DC();
    v8 = sub_217D897FC();
    sub_217D88E5C("Exception type is nil, returning .unknown", 41, 2, &dword_217A45000, v7, v8, MEMORY[0x277D84F90]);

LABEL_7:
    v6 = 0;
    goto LABEL_12;
  }

  if ((a1 != 0x5F4441425F435845 || a2 != 0xEE00535345434341) && (sub_217D89D4C() & 1) == 0)
  {
    if (a1 == 0xD000000000000013 && 0x8000000217DCF1A0 == a2 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 2;
      goto LABEL_12;
    }

    if (a1 == 0x544952415F435845 && a2 == 0xEE00434954454D48 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 3;
      goto LABEL_12;
    }

    if (a1 == 0x4C554D455F435845 && a2 == 0xED00004E4F495441 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 4;
      goto LABEL_12;
    }

    if (a1 == 0x54464F535F435845 && a2 == 0xEC00000045524157 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 5;
      goto LABEL_12;
    }

    if (a1 == 0x414552425F435845 && a2 == 0xEE00544E494F504BLL || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 6;
      goto LABEL_12;
    }

    if (a1 == 0x435359535F435845 && a2 == 0xEB000000004C4C41 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 7;
      goto LABEL_12;
    }

    if (a1 == 0xD000000000000010 && 0x8000000217DCF1C0 == a2 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 8;
      goto LABEL_12;
    }

    if (a1 == 0x5F4350525F435845 && a2 == 0xED00005452454C41 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 9;
      goto LABEL_12;
    }

    if (a1 == 0x534152435F435845 && a2 == 0xE900000000000048 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 10;
      goto LABEL_12;
    }

    if (a1 == 0x4F5345525F435845 && a2 == 0xEC00000045435255 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 11;
      goto LABEL_12;
    }

    if (a1 == 0x524155475F435845 && a2 == 0xE900000000000044 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 12;
      goto LABEL_12;
    }

    if (a1 == 0xD000000000000011 && 0x8000000217DCF1E0 == a2 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 13;
      goto LABEL_12;
    }

    sub_217A535B4();

    v9 = sub_217D898DC();
    v10 = sub_217D897DC();
    sub_217A53600(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_217D8D8F0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_217A62448();
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    sub_217D88E5C("Unknown exception type: %{public}@, returning .unknown", 54, 2, &dword_217A45000, v9, v10, v11);

    goto LABEL_7;
  }

  v6 = 1;
LABEL_12:
  *a3 = v6;
}

void sub_217BC6CDC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    sub_217A535B4();
    v7 = sub_217D898DC();
    v8 = sub_217D897FC();
    sub_217D88E5C("Signal is nil, returning .unknown", 33, 2, &dword_217A45000, v7, v8, MEMORY[0x277D84F90]);

LABEL_7:
    v6 = 0;
    goto LABEL_12;
  }

  if ((a1 != 0x56474553474953 || a2 != 0xE700000000000000) && (sub_217D89D4C() & 1) == 0)
  {
    if (a1 == 0x4C4C49474953 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 2;
      goto LABEL_12;
    }

    if (a1 == 0x54524241474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 3;
      goto LABEL_12;
    }

    if (a1 == 0x455046474953 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 4;
      goto LABEL_12;
    }

    if (a1 == 0x535542474953 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 5;
      goto LABEL_12;
    }

    if (a1 == 0x50415254474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 6;
      goto LABEL_12;
    }

    if (a1 == 0x4C4C494B474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 7;
      goto LABEL_12;
    }

    if (a1 == 0x4D524554474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 8;
      goto LABEL_12;
    }

    if (a1 == 0x54495551474953 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {
      v6 = 9;
      goto LABEL_12;
    }

    sub_217A535B4();

    v9 = sub_217D898DC();
    v10 = sub_217D897DC();
    sub_217A53600(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_217D8D8F0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_217A62448();
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    sub_217D88E5C("Unknown signal: %{public}@, returning .unknown", 46, 2, &dword_217A45000, v9, v10, v11);

    goto LABEL_7;
  }

  v6 = 1;
LABEL_12:
  *a3 = v6;
}

void sub_217BC7070(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    sub_217A535B4();
    v7 = sub_217D898DC();
    v8 = sub_217D897FC();
    sub_217D88E5C("Namespace is nil, returning .unknown", 36, 2, &dword_217A45000, v7, v8, MEMORY[0x277D84F90]);

LABEL_5:
    v6 = 0;
    goto LABEL_82;
  }

  sub_217A4EBC4();

  if ((sub_217D8995C() & 1) == 0)
  {
    if (sub_217D8995C())
    {

      v6 = 3;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 4;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 5;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 6;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 7;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 8;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 9;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 10;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 11;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 12;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 13;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 14;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 15;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 16;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 17;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 18;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 19;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 20;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 21;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 22;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 23;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 24;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 25;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 26;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 27;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 28;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 29;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 30;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 31;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 32;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 33;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 34;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 35;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 36;
      goto LABEL_82;
    }

    if (sub_217D8995C())
    {

      v6 = 37;
      goto LABEL_82;
    }

    v9 = MEMORY[0x277D837D0];
    if (sub_217D8995C())
    {

      v6 = 38;
      goto LABEL_82;
    }

    if (a1 == 0x3E534E5F4F4E3CLL && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
    {

      v6 = 1;
      goto LABEL_82;
    }

    sub_217A535B4();
    v10 = sub_217D898DC();
    v11 = sub_217D897DC();
    sub_217A53600(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_217D8D8F0;
    *(v12 + 56) = v9;
    *(v12 + 64) = sub_217A62448();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    sub_217D88E5C("Unknown namespace: %{public}@, returning .unknown", 49, 2, &dword_217A45000, v10, v11, v12, 0x4C4941465F45544DLL, 0xE800000000000000, a1, a2);

    goto LABEL_5;
  }

  v6 = 2;
LABEL_82:
  *a3 = v6;
}

void *FlushAnalyticsBatchesStartupTask.deinit()
{

  return v0;
}

uint64_t FlushAnalyticsBatchesStartupTask.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_217BC7E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217BC7EB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_217BC7E50(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_217BC7F34(uint64_t a1)
{
  if (!qword_2811C8878)
  {
    type metadata accessor for AppSessionEndEvent(255);
    sub_217BC816C(qword_2811C3ED8, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8878);
    }
  }
}

void sub_217BC7FC8(uint64_t a1)
{
  if (!qword_2811C8C98)
  {
    sub_217D87C9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811C8C98);
    }
  }
}

void sub_217BC8030()
{
  if (!qword_2811BCE88)
  {
    v0 = sub_217D894AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCE88);
    }
  }
}

unint64_t sub_217BC8094()
{
  result = qword_2811BCE60;
  if (!qword_2811BCE60)
  {
    sub_217BC7E50(255, &qword_2811BCE68, MEMORY[0x277CEAC80], MEMORY[0x277D83940]);
    sub_217BC816C(&qword_2811C8A28, MEMORY[0x277CEAC80], MEMORY[0x277CEAC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCE60);
  }

  return result;
}

uint64_t sub_217BC816C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217BC81B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_217BC8214(uint64_t a1, uint64_t a2)
{
  sub_217BC7FC8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_217BC8278()
{
  result = qword_27CBA1488;
  if (!qword_27CBA1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1488);
  }

  return result;
}

uint64_t sub_217BC82CC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_217D899FC();

    sub_217D87C9C();
    sub_217BC816C(&qword_27CBA1480, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v2 = sub_217D89CFC();
    MEMORY[0x21CEACC70](v2);

    MEMORY[0x21CEACC70](0x73736573206E6920, 0xEC0000003D6E6F69);
    v3 = sub_217D8949C();
    MEMORY[0x21CEACC70](v3);

    sub_217BC8278();
    swift_allocError();
    *v4 = 0xD000000000000022;
    v4[1] = 0x8000000217DCF430;
    return swift_willThrow();
  }

  return result;
}

void sub_217BC8438(uint64_t a1)
{
  if (!qword_27CBA1498)
  {
    type metadata accessor for SportsSessionEndEvent(255);
    sub_217BC816C(&qword_27CBA14A0, type metadata accessor for SportsSessionEndEvent, &protocol conformance descriptor for SportsSessionEndEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA1498);
    }
  }
}

void sub_217BC84CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 1)
  {
  }
}

void sub_217BC8514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

double sub_217BC8584(uint64_t a1)
{
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 319) = 0;
  *(a1 + 323) = 1;
  return result;
}

uint64_t sub_217BC85C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217BC8718()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA14E0);
  __swift_project_value_buffer(v0, qword_27CBA14E0);
  return sub_217D8866C();
}

uint64_t IssueTocViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IssueTocViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 20);
  sub_217BC927C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 20);
  sub_217BC927C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 24);
  sub_217BC927C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 24);
  sub_217BC927C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 28);
  sub_217BC927C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 28);
  sub_217BC927C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 32);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 36);
  sub_217BC927C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 36);
  sub_217BC927C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 40);
  sub_217BC927C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueTocViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 40);
  sub_217BC927C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 44);
  sub_217BC927C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BC927C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t IssueTocViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueTocViewEvent(0) + 44);
  sub_217BC927C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueTocViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IssueTocViewEvent(0);
  v5 = v4[5];
  sub_217BC927C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BC927C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BC927C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A608E0(0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217BC927C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217BC927C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217BC927C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t IssueTocViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t IssueTocViewEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
}

uint64_t IssueTocViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t sub_217BC991C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 32);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t IssueTocViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t IssueTocViewEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IssueTocViewEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t IssueTocViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueTocViewEvent.Model(0) + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 IssueTocViewEvent.Model.init(eventData:channelData:issueData:issueViewData:timedData:feedData:userChannelContextData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = a2[3];
  v17 = a2[4];
  v18 = *a3;
  v32 = *(a3 + 17);
  v33 = *(a3 + 16);
  v31 = a3[3];
  v34 = a3[1];
  v35 = a4[1];
  v38 = *a6;
  v36 = *a4;
  v37 = *(a6 + 2);
  v40 = a7[1];
  v41 = *a7;
  v39 = *(a7 + 1);
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for IssueTocViewEvent.Model(0);
  v21 = a9 + v20[5];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  *(v21 + 17) = v15;
  *(v21 + 24) = v16;
  *(v21 + 32) = v17;
  v22 = a9 + v20[6];
  *v22 = v18;
  *(v22 + 8) = v34;
  *(v22 + 16) = v33;
  *(v22 + 17) = v32;
  *(v22 + 24) = v31;
  v23 = (a9 + v20[7]);
  *v23 = v36;
  v23[1] = v35;
  v24 = v20[8];
  v25 = sub_217D889CC();
  (*(*(v25 - 8) + 32))(a9 + v24, a5, v25);
  v26 = a9 + v20[9];
  *v26 = v38;
  *(v26 + 16) = v37;
  v27 = a9 + v20[10];
  *v27 = v41;
  *(v27 + 1) = v40;
  *(v27 + 2) = v39;
  v28 = a9 + v20[11];
  v29 = *(a8 + 16);
  *v28 = *a8;
  *(v28 + 16) = v29;
  result = *(a8 + 32);
  *(v28 + 32) = result;
  *(v28 + 48) = *(a8 + 48);
  return result;
}

unint64_t sub_217BC9C78()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000016;
  if (v1 != 6)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0x74614464656D6974;
  if (v1 != 4)
  {
    v4 = 0x6174614464656566;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7461446575737369;
  if (v1 != 2)
  {
    v5 = 0x6569566575737369;
  }

  if (*v0)
  {
    v2 = 0x446C656E6E616863;
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

uint64_t sub_217BC9D88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BCB614(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BC9DB0(uint64_t a1)
{
  v2 = sub_217BCA344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BC9DEC(uint64_t a1)
{
  v2 = sub_217BCA344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueTocViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BCABD8(0, &qword_27CBA14F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v35 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCA344();
  sub_217D89E7C();
  LOBYTE(v41) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for IssueTocViewEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 17);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    *&v41 = *v11;
    *(&v41 + 1) = v12;
    LOBYTE(v42) = v13;
    BYTE1(v42) = v14;
    *(&v42 + 1) = v15;
    *&v43 = v16;
    LOBYTE(v37) = 1;
    sub_217AD084C();

    sub_217D89CAC();

    v17 = v3 + v10[6];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v17 + 17);
    v21 = *(v17 + 24);
    *&v41 = *v17;
    *(&v41 + 1) = v18;
    LOBYTE(v42) = v19;
    BYTE1(v42) = v20;
    *(&v42 + 1) = v21;
    LOBYTE(v37) = 2;
    sub_217ACFF94();

    sub_217D89CAC();

    v23 = (v3 + v10[7]);
    v24 = v23[1];
    *&v41 = *v23;
    *(&v41 + 1) = v24;
    LOBYTE(v37) = 3;
    sub_217AD01EC();

    sub_217D89CAC();

    LOBYTE(v41) = 4;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v25 = (v3 + v10[9]);
    v26 = v25[1];
    v27 = v25[2];
    *&v41 = *v25;
    *(&v41 + 1) = v26;
    *&v42 = v27;
    LOBYTE(v37) = 5;
    sub_217AD1A68(v41, v26, v27);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v41, *(&v41 + 1), v42);
    v28 = (v3 + v10[10]);
    v29 = *v28;
    v30 = v28[1];
    LOWORD(v28) = *(v28 + 1);
    v47 = v29;
    v48 = v30;
    v49 = v28;
    v46 = 6;
    sub_217ACFB8C();
    sub_217D89CAC();
    v31 = (v3 + v10[11]);
    v32 = v31[1];
    v41 = *v31;
    v42 = v32;
    v34 = *v31;
    v33 = v31[1];
    v43 = v31[2];
    v44 = *(v31 + 48);
    v37 = v34;
    v38 = v33;
    v39 = v31[2];
    v40 = *(v31 + 48);
    v45 = 7;
    sub_217ACC004(&v41, v35);
    sub_217A55B98();
    sub_217D89CAC();
    v35[0] = v37;
    v35[1] = v38;
    v35[2] = v39;
    v36 = v40;
    sub_217ACC69C(v35);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BCA344()
{
  result = qword_27CBA1500;
  if (!qword_27CBA1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1500);
  }

  return result;
}

uint64_t IssueTocViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_217D889CC();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217BCABD8(0, &qword_27CBA1508, MEMORY[0x277D844C8]);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for IssueTocViewEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCA344();
  v50 = v10;
  v14 = v51;
  sub_217D89E5C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v5;
  v16 = v13;
  LOBYTE(v52) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v17 = v47;
  v18 = v49;
  sub_217D89BCC();
  (*(v46 + 32))(v16, v17, v6);
  v56 = 1;
  sub_217AD07F8();
  sub_217D89BCC();
  v19 = *(&v52 + 1);
  v20 = v53;
  v21 = BYTE1(v53);
  v22 = *(&v53 + 1);
  v23 = v54;
  v24 = v16 + v11[5];
  *v24 = v52;
  *(v24 + 8) = v19;
  *(v24 + 16) = v20;
  *(v24 + 17) = v21;
  *(v24 + 24) = v22;
  *(v24 + 32) = v23;
  v56 = 2;
  sub_217ACFF40();
  v42 = 0;
  sub_217D89BCC();
  v47 = a1;
  v25 = v48;
  v26 = *(&v52 + 1);
  v27 = v53;
  v28 = BYTE1(v53);
  v29 = *(&v53 + 1);
  v30 = v16 + v11[6];
  *v30 = v52;
  *(v30 + 8) = v26;
  *(v30 + 16) = v27;
  *(v30 + 17) = v28;
  *(v30 + 24) = v29;
  v56 = 3;
  sub_217AD0198();
  sub_217D89BCC();
  v31 = *(&v52 + 1);
  v32 = (v16 + v11[7]);
  *v32 = v52;
  v32[1] = v31;
  LOBYTE(v52) = 4;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v51 = v15;
  v33 = v45;
  sub_217D89BCC();
  (*(v44 + 32))(v16 + v11[8], v51, v33);
  v56 = 5;
  sub_217A5B978();
  sub_217D89B5C();
  v34 = v53;
  v35 = v16 + v11[9];
  *v35 = v52;
  *(v35 + 16) = v34;
  v56 = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v36 = BYTE1(v52);
  v37 = WORD1(v52);
  v38 = v16 + v11[10];
  *v38 = v52;
  *(v38 + 1) = v36;
  *(v38 + 2) = v37;
  v56 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v25 + 8))(v50, v18);
  v39 = v16 + v11[11];
  v40 = v53;
  *v39 = v52;
  *(v39 + 16) = v40;
  *(v39 + 32) = v54;
  *(v39 + 48) = v55;
  sub_217BCAC3C(v16, v43);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_217BCACA0(v16);
}

void sub_217BCABD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BCA344();
    v7 = a3(a1, &type metadata for IssueTocViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BCAC3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueTocViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BCACA0(uint64_t a1)
{
  v2 = type metadata accessor for IssueTocViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BCADD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BC927C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BC927C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BC927C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A608E0(0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217BC927C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217BC927C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217BC927C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217BCB1A0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217BC927C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
    if (v2 <= 0x3F)
    {
      sub_217BC927C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
      if (v3 <= 0x3F)
      {
        sub_217BC927C(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
        if (v4 <= 0x3F)
        {
          sub_217A608E0(319);
          if (v5 <= 0x3F)
          {
            sub_217BC927C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_217BC927C(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
              if (v7 <= 0x3F)
              {
                sub_217BC927C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
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

void sub_217BCB42C(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217AD6554();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BCB510()
{
  result = qword_27CBA1510;
  if (!qword_27CBA1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1510);
  }

  return result;
}

unint64_t sub_217BCB568()
{
  result = qword_27CBA1518;
  if (!qword_27CBA1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1518);
  }

  return result;
}

unint64_t sub_217BCB5C0()
{
  result = qword_27CBA1520;
  if (!qword_27CBA1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1520);
  }

  return result;
}

uint64_t sub_217BCB614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t ValidationEventProcessor.__allocating_init()()
{
  v0 = sub_217D889FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = swift_allocObject();
  sub_217D88A3C();
  swift_allocObject();
  *(v4 + 16) = sub_217D88A2C();
  *v3 = sub_217BC5340;
  v3[1] = 0;
  (*(v1 + 104))(v3, *MEMORY[0x277D6C9B0], v0);
  sub_217D88A0C();
  return v4;
}

uint64_t ValidationEventProcessor.init()()
{
  v1 = sub_217D889FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217D88A3C();
  swift_allocObject();
  *(v0 + 16) = sub_217D88A2C();
  *v4 = sub_217BC5340;
  v4[1] = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D6C9B0], v1);
  sub_217D88A0C();
  return v0;
}

uint64_t ValidationEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a1;
  v62 = type metadata accessor for FeedViewEvent.Model(0);
  MEMORY[0x28223BE20](v62);
  v63 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B0EFB4(0);
  v73 = v4;
  v67 = *(v4 - 1);
  v5 = MEMORY[0x28223BE20](v4);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = &v62 - v7;
  v64 = type metadata accessor for IssueExposureEvent.Model(0);
  MEMORY[0x28223BE20](v64);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BCC5AC(0);
  v77 = v9;
  v72 = *(v9 - 1);
  v10 = MEMORY[0x28223BE20](v9);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v62 - v12;
  v68 = type metadata accessor for HeadlineExposureEvent.Model(0);
  MEMORY[0x28223BE20](v68);
  v69 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF45C(0);
  v15 = v14;
  v76 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  v20 = type metadata accessor for ArticleViewEvent.Model(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BCC640(0);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v62 - v29;
  v31 = sub_217D881AC();
  MEMORY[0x28223BE20](v31);
  v33 = &v62 - v32;
  v79 = v34;
  (*(v34 + 16))(&v62 - v32, v78, v31);
  if (swift_dynamicCast())
  {
    v77 = v33;
    v78 = v31;
    (*(v25 + 32))(v28, v30, v24);
    v35 = sub_217D8816C();
    v49 = sub_217D887BC();
    v51 = v50;

    sub_217BCE070(&qword_2811C59B8, type metadata accessor for ArticleViewEvent.Model, &protocol conformance descriptor for ArticleViewEvent.Model);
    sub_217D88A1C();
    sub_217AE010C(v49, v51);
    sub_217BCC868(v22);
    sub_217BCE0B8(v22, type metadata accessor for ArticleViewEvent.Model);
    (*(v25 + 8))(v28, v24);
    return (*(v79 + 8))(v77, v78);
  }

  if (!swift_dynamicCast())
  {
    v39 = v74;
    v40 = v77;
    if (swift_dynamicCast())
    {
      v42 = v71;
      v41 = v72;
      (*(v72 + 32))(v71, v39, v40);
      v43 = sub_217D8816C();
      v44 = sub_217D887BC();
      v46 = v45;

      sub_217BCE070(&qword_2811C32B0, type metadata accessor for IssueExposureEvent.Model, &protocol conformance descriptor for IssueExposureEvent.Model);
      v47 = v65;
      sub_217D88A1C();
      sub_217AE010C(v44, v46);
      sub_217BCD8B8(v47);
      v48 = type metadata accessor for IssueExposureEvent.Model;
    }

    else
    {
      v52 = v70;
      v40 = v73;
      if (!swift_dynamicCast())
      {
        return (*(v79 + 8))(v33, v31);
      }

      v42 = v66;
      v41 = v67;
      (*(v67 + 32))(v66, v52, v40);
      v53 = sub_217D8816C();
      v59 = sub_217D887BC();
      v61 = v60;

      sub_217BCE070(&qword_2811C7478, type metadata accessor for FeedViewEvent.Model, &protocol conformance descriptor for FeedViewEvent.Model);
      v47 = v63;
      sub_217D88A1C();
      sub_217AE010C(v59, v61);
      sub_217BCDDFC(v47);
      v48 = type metadata accessor for FeedViewEvent.Model;
    }

    sub_217BCE0B8(v47, v48);
    (*(v41 + 8))(v42, v40);
    return (*(v79 + 8))(v33, v31);
  }

  v37 = v75;
  v36 = v76;
  (*(v76 + 32))(v75, v19, v15);
  v38 = sub_217D8816C();
  v54 = sub_217D887BC();
  v56 = v55;

  sub_217BCE070(&qword_2811C11B8, type metadata accessor for HeadlineExposureEvent.Model, &protocol conformance descriptor for HeadlineExposureEvent.Model);
  v57 = v69;
  sub_217D88A1C();
  sub_217AE010C(v54, v56);
  sub_217BCD11C(v57);
  sub_217BCE0B8(v57, type metadata accessor for HeadlineExposureEvent.Model);
  (*(v36 + 8))(v37, v15);
  return (*(v79 + 8))(v33, v31);
}

void sub_217BCC5AC(uint64_t a1)
{
  if (!qword_2811C88D0)
  {
    type metadata accessor for IssueExposureEvent(255);
    sub_217BCE070(qword_2811C31F0, type metadata accessor for IssueExposureEvent, &protocol conformance descriptor for IssueExposureEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88D0);
    }
  }
}

void sub_217BCC640(uint64_t a1)
{
  if (!qword_2811C8900)
  {
    type metadata accessor for ArticleViewEvent(255);
    sub_217BCE070(qword_2811C5890, type metadata accessor for ArticleViewEvent, &protocol conformance descriptor for ArticleViewEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8900);
    }
  }
}

uint64_t ValidationEventProcessor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_217BCC730(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void))
{
  if ((a4 & 1) == 0)
  {
    sub_217A535B4();
    v8 = sub_217D898DC();
    v9 = sub_217D897EC();
    sub_217A67100(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_217D9CB60;
    v11 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v12 = sub_217A62448();
    *(v10 + 64) = v12;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
    a5(0);

    sub_217D89A8C();
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0xE000000000000000;
    sub_217D88E5C("Model validation failed: %{public}@, model=%{public}@", 53, 2, &dword_217A45000, v8, v9, v10);
  }
}

void sub_217BCC868(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewEvent.Model(0);
  v3 = (a1 + *(v2 + 40));
  if (*(v3 + 2) != 1)
  {
    v4 = v2;
    v5 = *v3;
    switch(v5)
    {
      case 9:
        *&v114 = sub_217D8898C();
        *(&v114 + 1) = v42;
        *&v105 = 0xD000000000000016;
        *(&v105 + 1) = 0x8000000217DCB510;
        sub_217A4EBC4();
        v43 = sub_217D8995C();

        if (v43)
        {
          return;
        }

        v44 = (a1 + *(v4 + 44));
        v45 = v44[7];
        v111 = v44[6];
        v112 = v45;
        v113 = v44[8];
        v46 = v44[3];
        v107 = v44[2];
        v108 = v46;
        v47 = v44[5];
        v109 = v44[4];
        v110 = v47;
        v48 = v44[1];
        v105 = *v44;
        v106 = v48;
        v49 = sub_217BCE168(&v105) == 0;
        sub_217BCC730(a1, 0xD00000000000003CLL, 0x8000000217DCF4C0, v49, type metadata accessor for ArticleViewEvent.Model);
        v50 = v44[7];
        v120 = v44[6];
        v121 = v50;
        v122 = v44[8];
        v51 = v44[3];
        v116 = v44[2];
        v117 = v51;
        v52 = v44[5];
        v118 = v44[4];
        v119 = v52;
        v53 = v44[1];
        v114 = *v44;
        v115 = v53;
        v54 = sub_217BCE168(&v114);
        v55 = 1;
        if (v54 != 1 && BYTE1(v114) != 93)
        {
          LOBYTE(v96) = BYTE1(v114);
          v56 = GroupType.rawValue.getter();
          v58 = v57;
          if (v56 == GroupType.rawValue.getter() && v58 == v59)
          {

            v55 = 0;
          }

          else
          {
            v74 = sub_217D89D4C();

            v55 = v74 ^ 1;
          }
        }

        sub_217BCC730(a1, 0xD000000000000049, 0x8000000217DCF500, v55 & 1, type metadata accessor for ArticleViewEvent.Model);
        v75 = v44[7];
        v102 = v44[6];
        v103 = v75;
        v104 = v44[8];
        v76 = v44[3];
        v98 = v44[2];
        v99 = v76;
        v77 = v44[5];
        v100 = v44[4];
        v101 = v77;
        v78 = v44[1];
        v96 = *v44;
        v97 = v78;
        v79 = sub_217BCE168(&v96);
        v66 = 1;
        if (v79 != 1 && BYTE1(v96) != 93)
        {
          v80 = GroupType.rawValue.getter();
          v82 = v81;
          if (v80 == GroupType.rawValue.getter() && v82 == v83)
          {

            v66 = 0;
          }

          else
          {
            v84 = sub_217D89D4C();

            v66 = v84 ^ 1;
          }
        }

        v72 = " have unknown group types";
        v73 = 0xD000000000000044;
        goto LABEL_47;
      case 2:
        *&v114 = sub_217D8898C();
        *(&v114 + 1) = v24;
        *&v105 = 0xD000000000000016;
        *(&v105 + 1) = 0x8000000217DCB510;
        sub_217A4EBC4();
        v25 = sub_217D8995C();

        if (v25)
        {
          return;
        }

        v26 = (a1 + *(v4 + 44));
        v27 = v26[7];
        v111 = v26[6];
        v112 = v27;
        v113 = v26[8];
        v28 = v26[3];
        v107 = v26[2];
        v108 = v28;
        v29 = v26[5];
        v109 = v26[4];
        v110 = v29;
        v30 = v26[1];
        v105 = *v26;
        v106 = v30;
        v31 = sub_217BCE168(&v105) == 0;
        sub_217BCC730(a1, 0xD000000000000036, 0x8000000217DCF5A0, v31, type metadata accessor for ArticleViewEvent.Model);
        v32 = v26[7];
        v120 = v26[6];
        v121 = v32;
        v122 = v26[8];
        v33 = v26[3];
        v116 = v26[2];
        v117 = v33;
        v34 = v26[5];
        v118 = v26[4];
        v119 = v34;
        v35 = v26[1];
        v114 = *v26;
        v115 = v35;
        v36 = sub_217BCE168(&v114);
        v37 = 1;
        if (v36 != 1 && BYTE1(v114) != 93)
        {
          LOBYTE(v96) = BYTE1(v114);
          v38 = GroupType.rawValue.getter();
          v40 = v39;
          if (v38 == GroupType.rawValue.getter() && v40 == v41)
          {

            v37 = 0;
          }

          else
          {
            v60 = sub_217D89D4C();

            v37 = v60 ^ 1;
          }
        }

        sub_217BCC730(a1, 0xD000000000000043, 0x8000000217DCF5E0, v37 & 1, type metadata accessor for ArticleViewEvent.Model);
        v61 = v26[7];
        v102 = v26[6];
        v103 = v61;
        v104 = v26[8];
        v62 = v26[3];
        v98 = v26[2];
        v99 = v62;
        v63 = v26[5];
        v100 = v26[4];
        v101 = v63;
        v64 = v26[1];
        v96 = *v26;
        v97 = v64;
        v65 = sub_217BCE168(&v96);
        v66 = 1;
        if (v65 != 1 && BYTE1(v96) != 93)
        {
          v67 = GroupType.rawValue.getter();
          v69 = v68;
          if (v67 == GroupType.rawValue.getter() && v69 == v70)
          {

            v66 = 0;
          }

          else
          {
            v71 = sub_217D89D4C();

            v66 = v71 ^ 1;
          }
        }

        v72 = "unknown group types";
        v73 = 0xD00000000000003ELL;
        goto LABEL_47;
      case 1:
        *&v114 = sub_217D8898C();
        *(&v114 + 1) = v6;
        *&v105 = 0xD000000000000016;
        *(&v105 + 1) = 0x8000000217DCB510;
        sub_217A4EBC4();
        v7 = sub_217D8995C();

        if ((v7 & 1) == 0)
        {
          v8 = (a1 + *(v4 + 44));
          v9 = v8[7];
          v111 = v8[6];
          v112 = v9;
          v113 = v8[8];
          v10 = v8[3];
          v107 = v8[2];
          v108 = v10;
          v11 = v8[5];
          v109 = v8[4];
          v110 = v11;
          v12 = v8[1];
          v105 = *v8;
          v106 = v12;
          v13 = sub_217BCE168(&v105) == 0;
          sub_217BCC730(a1, 0xD000000000000033, 0x8000000217DCF670, v13, type metadata accessor for ArticleViewEvent.Model);
          v14 = v8[7];
          v120 = v8[6];
          v121 = v14;
          v122 = v8[8];
          v15 = v8[3];
          v116 = v8[2];
          v117 = v15;
          v16 = v8[5];
          v118 = v8[4];
          v119 = v16;
          v17 = v8[1];
          v114 = *v8;
          v115 = v17;
          v18 = sub_217BCE168(&v114);
          v19 = 1;
          if (v18 != 1 && BYTE1(v114) != 93)
          {
            LOBYTE(v96) = BYTE1(v114);
            v20 = GroupType.rawValue.getter();
            v22 = v21;
            if (v20 == GroupType.rawValue.getter() && v22 == v23)
            {

              v19 = 0;
            }

            else
            {
              v85 = sub_217D89D4C();

              v19 = v85 ^ 1;
            }
          }

          sub_217BCC730(a1, 0xD000000000000040, 0x8000000217DCF6B0, v19 & 1, type metadata accessor for ArticleViewEvent.Model);
          v86 = v8[7];
          v102 = v8[6];
          v103 = v86;
          v104 = v8[8];
          v87 = v8[3];
          v98 = v8[2];
          v99 = v87;
          v88 = v8[5];
          v100 = v8[4];
          v101 = v88;
          v89 = v8[1];
          v96 = *v8;
          v97 = v89;
          v90 = sub_217BCE168(&v96);
          v66 = 1;
          if (v90 != 1 && BYTE1(v96) != 93)
          {
            v91 = GroupType.rawValue.getter();
            v93 = v92;
            if (v91 == GroupType.rawValue.getter() && v93 == v94)
            {

              v66 = 0;
            }

            else
            {
              v95 = sub_217D89D4C();

              v66 = v95 ^ 1;
            }
          }

          v72 = "nown group types";
          v73 = 0xD00000000000003BLL;
LABEL_47:
          sub_217BCC730(a1, v73, v72 | 0x8000000000000000, v66 & 1, type metadata accessor for ArticleViewEvent.Model);
        }

        break;
    }
  }
}

void sub_217BCD11C(uint64_t a1)
{
  v2 = type metadata accessor for HeadlineExposureEvent.Model(0);
  v3 = *(a1 + *(v2 + 40));
  switch(v3)
  {
    case 9:
      v36 = (a1 + *(v2 + 44));
      v37 = v36[7];
      v103 = v36[6];
      v104 = v37;
      v105 = v36[8];
      v38 = v36[3];
      v99 = v36[2];
      v100 = v38;
      v39 = v36[5];
      v101 = v36[4];
      v102 = v39;
      v40 = v36[1];
      v97 = *v36;
      v98 = v40;
      v41 = sub_217BCE168(&v97) == 0;
      sub_217BCC730(a1, 0xD00000000000003CLL, 0x8000000217DCF4C0, v41, type metadata accessor for HeadlineExposureEvent.Model);
      v42 = v36[7];
      v112 = v36[6];
      v113 = v42;
      v114 = v36[8];
      v43 = v36[3];
      v108 = v36[2];
      v109 = v43;
      v44 = v36[5];
      v110 = v36[4];
      v111 = v44;
      v45 = v36[1];
      v106 = *v36;
      v107 = v45;
      v46 = sub_217BCE168(&v106);
      v47 = 1;
      if (v46 != 1 && BYTE1(v106) != 93)
      {
        LOBYTE(v88) = BYTE1(v106);
        v48 = GroupType.rawValue.getter();
        v50 = v49;
        if (v48 == GroupType.rawValue.getter() && v50 == v51)
        {

          v47 = 0;
        }

        else
        {
          v66 = sub_217D89D4C();

          v47 = v66 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000049, 0x8000000217DCF500, v47 & 1, type metadata accessor for HeadlineExposureEvent.Model);
      v67 = v36[7];
      v94 = v36[6];
      v95 = v67;
      v96 = v36[8];
      v68 = v36[3];
      v90 = v36[2];
      v91 = v68;
      v69 = v36[5];
      v92 = v36[4];
      v93 = v69;
      v70 = v36[1];
      v88 = *v36;
      v89 = v70;
      v71 = sub_217BCE168(&v88);
      v58 = 1;
      if (v71 != 1 && BYTE1(v88) != 93)
      {
        v72 = GroupType.rawValue.getter();
        v74 = v73;
        if (v72 == GroupType.rawValue.getter() && v74 == v75)
        {

          v58 = 0;
        }

        else
        {
          v76 = sub_217D89D4C();

          v58 = v76 ^ 1;
        }
      }

      v64 = " have unknown group types";
      v65 = 0xD000000000000044;
      break;
    case 2:
      v20 = (a1 + *(v2 + 44));
      v21 = v20[7];
      v103 = v20[6];
      v104 = v21;
      v105 = v20[8];
      v22 = v20[3];
      v99 = v20[2];
      v100 = v22;
      v23 = v20[5];
      v101 = v20[4];
      v102 = v23;
      v24 = v20[1];
      v97 = *v20;
      v98 = v24;
      v25 = sub_217BCE168(&v97) == 0;
      sub_217BCC730(a1, 0xD00000000000003BLL, 0x8000000217DCF780, v25, type metadata accessor for HeadlineExposureEvent.Model);
      v26 = v20[7];
      v112 = v20[6];
      v113 = v26;
      v114 = v20[8];
      v27 = v20[3];
      v108 = v20[2];
      v109 = v27;
      v28 = v20[5];
      v110 = v20[4];
      v111 = v28;
      v29 = v20[1];
      v106 = *v20;
      v107 = v29;
      v30 = sub_217BCE168(&v106);
      v31 = 1;
      if (v30 != 1 && BYTE1(v106) != 93)
      {
        LOBYTE(v88) = BYTE1(v106);
        v32 = GroupType.rawValue.getter();
        v34 = v33;
        if (v32 == GroupType.rawValue.getter() && v34 == v35)
        {

          v31 = 0;
        }

        else
        {
          v52 = sub_217D89D4C();

          v31 = v52 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000048, 0x8000000217DCF7C0, v31 & 1, type metadata accessor for HeadlineExposureEvent.Model);
      v53 = v20[7];
      v94 = v20[6];
      v95 = v53;
      v96 = v20[8];
      v54 = v20[3];
      v90 = v20[2];
      v91 = v54;
      v55 = v20[5];
      v92 = v20[4];
      v93 = v55;
      v56 = v20[1];
      v88 = *v20;
      v89 = v56;
      v57 = sub_217BCE168(&v88);
      v58 = 1;
      if (v57 != 1 && BYTE1(v88) != 93)
      {
        v59 = GroupType.rawValue.getter();
        v61 = v60;
        if (v59 == GroupType.rawValue.getter() && v61 == v62)
        {

          v58 = 0;
        }

        else
        {
          v63 = sub_217D89D4C();

          v58 = v63 ^ 1;
        }
      }

      v64 = "have unknown group types";
      v65 = 0xD000000000000043;
      break;
    case 1:
      v4 = (a1 + *(v2 + 44));
      v5 = v4[7];
      v103 = v4[6];
      v104 = v5;
      v105 = v4[8];
      v6 = v4[3];
      v99 = v4[2];
      v100 = v6;
      v7 = v4[5];
      v101 = v4[4];
      v102 = v7;
      v8 = v4[1];
      v97 = *v4;
      v98 = v8;
      v9 = sub_217BCE168(&v97) == 0;
      sub_217BCC730(a1, 0xD000000000000038, 0x8000000217DCF860, v9, type metadata accessor for HeadlineExposureEvent.Model);
      v10 = v4[7];
      v112 = v4[6];
      v113 = v10;
      v114 = v4[8];
      v11 = v4[3];
      v108 = v4[2];
      v109 = v11;
      v12 = v4[5];
      v110 = v4[4];
      v111 = v12;
      v13 = v4[1];
      v106 = *v4;
      v107 = v13;
      v14 = sub_217BCE168(&v106);
      v15 = 1;
      if (v14 != 1 && BYTE1(v106) != 93)
      {
        LOBYTE(v88) = BYTE1(v106);
        v16 = GroupType.rawValue.getter();
        v18 = v17;
        if (v16 == GroupType.rawValue.getter() && v18 == v19)
        {

          v15 = 0;
        }

        else
        {
          v77 = sub_217D89D4C();

          v15 = v77 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000045, 0x8000000217DCF8A0, v15 & 1, type metadata accessor for HeadlineExposureEvent.Model);
      v78 = v4[7];
      v94 = v4[6];
      v95 = v78;
      v96 = v4[8];
      v79 = v4[3];
      v90 = v4[2];
      v91 = v79;
      v80 = v4[5];
      v92 = v4[4];
      v93 = v80;
      v81 = v4[1];
      v88 = *v4;
      v89 = v81;
      v82 = sub_217BCE168(&v88);
      v58 = 1;
      if (v82 != 1 && BYTE1(v88) != 93)
      {
        v83 = GroupType.rawValue.getter();
        v85 = v84;
        if (v83 == GroupType.rawValue.getter() && v85 == v86)
        {

          v58 = 0;
        }

        else
        {
          v87 = sub_217D89D4C();

          v58 = v87 ^ 1;
        }
      }

      v64 = "e unknown group types";
      v65 = 0xD000000000000040;
      break;
    default:
      return;
  }

  sub_217BCC730(a1, v65, v64 | 0x8000000000000000, v58 & 1, type metadata accessor for HeadlineExposureEvent.Model);
}

void sub_217BCD8B8(uint64_t a1)
{
  v2 = type metadata accessor for IssueExposureEvent.Model(0);
  v3 = (a1 + *(v2 + 28));
  if (*(v3 + 2) != 1)
  {
    v4 = *v3;
    if (v4 == 2)
    {
      v21 = (a1 + *(v2 + 32));
      v22 = v21[7];
      v77 = v21[6];
      v78 = v22;
      v79 = v21[8];
      v23 = v21[3];
      v73 = v21[2];
      v74 = v23;
      v24 = v21[5];
      v75 = v21[4];
      v76 = v24;
      v25 = v21[1];
      v71 = *v21;
      v72 = v25;
      v26 = sub_217BCE168(&v71) == 0;
      sub_217BCC730(a1, 0xD000000000000038, 0x8000000217DCF940, v26, type metadata accessor for IssueExposureEvent.Model);
      v27 = v21[7];
      v86 = v21[6];
      v87 = v27;
      v88 = v21[8];
      v28 = v21[3];
      v82 = v21[2];
      v83 = v28;
      v29 = v21[5];
      v84 = v21[4];
      v85 = v29;
      v30 = v21[1];
      v80 = *v21;
      v81 = v30;
      v31 = sub_217BCE168(&v80);
      v32 = 1;
      if (v31 != 1 && BYTE1(v80) != 93)
      {
        LOBYTE(v62) = BYTE1(v80);
        v33 = GroupType.rawValue.getter();
        v35 = v34;
        if (v33 == GroupType.rawValue.getter() && v35 == v36)
        {

          v32 = 0;
        }

        else
        {
          v51 = sub_217D89D4C();

          v32 = v51 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000045, 0x8000000217DCF980, v32 & 1, type metadata accessor for IssueExposureEvent.Model);
      v52 = v21[7];
      v68 = v21[6];
      v69 = v52;
      v70 = v21[8];
      v53 = v21[3];
      v64 = v21[2];
      v65 = v53;
      v54 = v21[5];
      v66 = v21[4];
      v67 = v54;
      v55 = v21[1];
      v62 = *v21;
      v63 = v55;
      v56 = sub_217BCE168(&v62);
      v43 = 1;
      if (v56 != 1 && BYTE1(v62) != 93)
      {
        v57 = GroupType.rawValue.getter();
        v59 = v58;
        if (v57 == GroupType.rawValue.getter() && v59 == v60)
        {

          v43 = 0;
        }

        else
        {
          v61 = sub_217D89D4C();

          v43 = v61 ^ 1;
        }
      }

      v49 = "e unknown group types";
      v50 = 0xD000000000000040;
    }

    else
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = (a1 + *(v2 + 32));
      v6 = v5[7];
      v77 = v5[6];
      v78 = v6;
      v79 = v5[8];
      v7 = v5[3];
      v73 = v5[2];
      v74 = v7;
      v8 = v5[5];
      v75 = v5[4];
      v76 = v8;
      v9 = v5[1];
      v71 = *v5;
      v72 = v9;
      v10 = sub_217BCE168(&v71) == 0;
      sub_217BCC730(a1, 0xD000000000000035, 0x8000000217DCFA20, v10, type metadata accessor for IssueExposureEvent.Model);
      v11 = v5[7];
      v86 = v5[6];
      v87 = v11;
      v88 = v5[8];
      v12 = v5[3];
      v82 = v5[2];
      v83 = v12;
      v13 = v5[5];
      v84 = v5[4];
      v85 = v13;
      v14 = v5[1];
      v80 = *v5;
      v81 = v14;
      v15 = sub_217BCE168(&v80);
      v16 = 1;
      if (v15 != 1 && BYTE1(v80) != 93)
      {
        LOBYTE(v62) = BYTE1(v80);
        v17 = GroupType.rawValue.getter();
        v19 = v18;
        if (v17 == GroupType.rawValue.getter() && v19 == v20)
        {

          v16 = 0;
        }

        else
        {
          v37 = sub_217D89D4C();

          v16 = v37 ^ 1;
        }
      }

      sub_217BCC730(a1, 0xD000000000000042, 0x8000000217DCFA60, v16 & 1, type metadata accessor for IssueExposureEvent.Model);
      v38 = v5[7];
      v68 = v5[6];
      v69 = v38;
      v70 = v5[8];
      v39 = v5[3];
      v64 = v5[2];
      v65 = v39;
      v40 = v5[5];
      v66 = v5[4];
      v67 = v40;
      v41 = v5[1];
      v62 = *v5;
      v63 = v41;
      v42 = sub_217BCE168(&v62);
      v43 = 1;
      if (v42 != 1 && BYTE1(v62) != 93)
      {
        v44 = GroupType.rawValue.getter();
        v46 = v45;
        if (v44 == GroupType.rawValue.getter() && v46 == v47)
        {

          v43 = 0;
        }

        else
        {
          v48 = sub_217D89D4C();

          v43 = v48 ^ 1;
        }
      }

      v49 = "nknown group types";
      v50 = 0xD00000000000003DLL;
    }

    sub_217BCC730(a1, v50, v49 | 0x8000000000000000, v43 & 1, type metadata accessor for IssueExposureEvent.Model);
  }
}

uint64_t sub_217BCDDFC(uint64_t a1)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  v3 = *(a1 + *(result + 24));
  if (v3 == 7)
  {
    if (*(a1 + *(result + 52) + 8))
    {
      return result;
    }

    v4 = 0x8000000217DCFB20;
    sub_217A535B4();
    v5 = sub_217D898DC();
    v6 = sub_217D897EC();
    sub_217A67100(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_217D9CB60;
    v8 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v9 = sub_217A62448();
    *(v7 + 64) = v9;
    v10 = 0xD000000000000028;
    goto LABEL_10;
  }

  if (v3 == 6)
  {
    if (*(a1 + *(result + 52) + 8))
    {
      return result;
    }

    v4 = 0x8000000217DCFAF0;
    sub_217A535B4();
    v5 = sub_217D898DC();
    v6 = sub_217D897EC();
    sub_217A67100(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_217D9CB60;
    v8 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v9 = sub_217A62448();
    *(v7 + 64) = v9;
    v10 = 0xD00000000000002DLL;
    goto LABEL_10;
  }

  if (v3 == 1 && *(a1 + *(result + 52) + 8))
  {
    v4 = 0x8000000217DCFB50;
    sub_217A535B4();
    v5 = sub_217D898DC();
    v6 = sub_217D897EC();
    sub_217A67100(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_217D9CB60;
    v8 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v9 = sub_217A62448();
    *(v7 + 64) = v9;
    v10 = 0xD000000000000031;
LABEL_10:
    *(v7 + 32) = v10;
    *(v7 + 40) = v4;
    sub_217D89A8C();
    *(v7 + 96) = v8;
    *(v7 + 104) = v9;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0xE000000000000000;
    sub_217D88E5C("Model validation failed: %{public}@, model=%{public}@", 53, 2, &dword_217A45000, v5, v6, v7);
  }

  return result;
}

uint64_t sub_217BCE070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217BCE0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217BCE168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217BCE180(uint64_t a1, uint64_t a2)
{
  sub_217A4D2B0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v2 = sub_217D882DC();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_217D8D8F0;
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277CEAD10], v2);
  sub_217A4D370();
  sub_217D8854C();
}

uint64_t sub_217BCE2DC(uint64_t a1)
{
  sub_217A4D314(0);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_217BCE180(a1, v4);
}

uint64_t sub_217BCE398(uint64_t a1)
{
  v2 = sub_217BCE56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BCE3D4(uint64_t a1)
{
  v2 = sub_217BCE56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadStateData.encode(to:)(void *a1)
{
  sub_217BCE7AC(0, &qword_27CBA1528, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCE56C();
  sub_217D89E7C();
  v11 = v8;
  sub_217BCE5C0();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BCE56C()
{
  result = qword_27CBA1530;
  if (!qword_27CBA1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1530);
  }

  return result;
}

unint64_t sub_217BCE5C0()
{
  result = qword_27CBA1538;
  if (!qword_27CBA1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1538);
  }

  return result;
}

uint64_t DownloadStateData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BCE7AC(0, &qword_27CBA1540, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCE56C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BCE810();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BCE7AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BCE56C();
    v7 = a3(a1, &type metadata for DownloadStateData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BCE810()
{
  result = qword_27CBA1548;
  if (!qword_27CBA1548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1548);
  }

  return result;
}

unint64_t sub_217BCE868()
{
  result = qword_2811C4660;
  if (!qword_2811C4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4660);
  }

  return result;
}

unint64_t sub_217BCE8C0()
{
  result = qword_2811C4668;
  if (!qword_2811C4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4668);
  }

  return result;
}

unint64_t sub_217BCE968()
{
  result = qword_27CBA1550;
  if (!qword_27CBA1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1550);
  }

  return result;
}

unint64_t sub_217BCE9C0()
{
  result = qword_27CBA1558;
  if (!qword_27CBA1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1558);
  }

  return result;
}

unint64_t sub_217BCEA18()
{
  result = qword_27CBA1560;
  if (!qword_27CBA1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1560);
  }

  return result;
}

uint64_t PersonalizationFeatureCTRData.personalizationFeatureID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PersonalizationFeatureCTRData.personalizationFeatureID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PersonalizationFeatureCTRData.init(personalizationFeatureID:ctr:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_217BCEB38()
{
  if (*v0)
  {
    return 7500899;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_217BCEB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000217DCFC20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7500899 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

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
  return result;
}

uint64_t sub_217BCEC58(uint64_t a1)
{
  v2 = sub_217BCEE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BCEC94(uint64_t a1)
{
  v2 = sub_217BCEE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationFeatureCTRData.encode(to:)(void *a1)
{
  sub_217BCF090(0, &qword_27CBA1568, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v10[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCEE50();
  sub_217D89E7C();
  v12 = 0;
  v8 = v10[1];
  sub_217D89C6C();
  if (!v8)
  {
    v11 = 1;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BCEE50()
{
  result = qword_27CBA1570;
  if (!qword_27CBA1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1570);
  }

  return result;
}

uint64_t PersonalizationFeatureCTRData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BCF090(0, &qword_27CBA1578, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BCEE50();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  v14 = sub_217D89BEC();
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BCF090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BCEE50();
    v7 = a3(a1, &type metadata for PersonalizationFeatureCTRData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BCF0F8()
{
  result = qword_27CBA1580;
  if (!qword_27CBA1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1580);
  }

  return result;
}

unint64_t sub_217BCF150()
{
  result = qword_27CBA1588;
  if (!qword_27CBA1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1588);
  }

  return result;
}

uint64_t sub_217BCF1D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217BCF21C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_217BCF280()
{
  result = qword_27CBA1590;
  if (!qword_27CBA1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1590);
  }

  return result;
}

unint64_t sub_217BCF2D8()
{
  result = qword_27CBA1598;
  if (!qword_27CBA1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1598);
  }

  return result;
}

unint64_t sub_217BCF330()
{
  result = qword_27CBA15A0;
  if (!qword_27CBA15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15A0);
  }

  return result;
}

uint64_t sub_217BCF3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657A695374786574 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BCF458(uint64_t a1)
{
  v2 = sub_217A67970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BCF494(uint64_t a1)
{
  v2 = sub_217A67970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextSizeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217A678F4(0, &qword_27CBA15A8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A67970();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B3471C();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217BCF6A4()
{
  result = qword_27CBA15B0;
  if (!qword_27CBA15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15B0);
  }

  return result;
}

uint64_t sub_217BCF7C0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C3688);
  __swift_project_value_buffer(v0, qword_2811C3688);
  return sub_217D8866C();
}

uint64_t FollowingViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217BCFD24(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FollowingViewEvent.viewData.setter(uint64_t a1)
{
  sub_217BCFD24(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FollowingViewEvent.followingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 20);
  sub_217BCFD24(0, &qword_2811C8768, sub_217A532C8, sub_217A53320, &type metadata for FollowingData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowingViewEvent.followingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 20);
  sub_217BCFD24(0, &qword_2811C8768, sub_217A532C8, sub_217A53320, &type metadata for FollowingData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowingViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 24);
  sub_217A6018C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowingViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 28);
  sub_217BCFD24(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BCFD24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t FollowingViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowingViewEvent(0) + 28);
  sub_217BCFD24(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowingViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217BCFD24(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FollowingViewEvent(0);
  v5 = v4[5];
  sub_217BCFD24(0, &qword_2811C8768, sub_217A532C8, sub_217A53320, &type metadata for FollowingData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A6018C(0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BCFD24(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t FollowingViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_217BD00D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FollowingViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowingViewEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 FollowingViewEvent.Model.init(viewData:followingData:eventData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *a2;
  *a5 = *a1;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 18) = v10;
  v11 = type metadata accessor for FollowingViewEvent.Model(0);
  v12 = *(v11 + 24);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a5 + v12, a3, v13);
  v14 = a5 + *(v11 + 28);
  v15 = *(a4 + 16);
  *v14 = *a4;
  *(v14 + 16) = v15;
  result = *(a4 + 32);
  *(v14 + 32) = result;
  *(v14 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217BD0288()
{
  v1 = 0x6174614477656976;
  v2 = 0x746144746E657665;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x6E69776F6C6C6F66;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217BD0318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BD1200(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BD0340(uint64_t a1)
{
  v2 = sub_217BD0698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD037C(uint64_t a1)
{
  v2 = sub_217BD0698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowingViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BD0B58(0, &qword_27CBA15B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD0698();
  sub_217D89E7C();
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  *&v24 = *v3;
  *(&v24 + 1) = v10;
  LOWORD(v25) = v11;
  LOBYTE(v20) = 0;
  sub_217A5E790();

  sub_217D89CAC();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v24) = *(v3 + 18);
    LOBYTE(v20) = 1;
    sub_217A53320();
    sub_217D89CAC();
    v12 = type metadata accessor for FollowingViewEvent.Model(0);
    v29 = 2;
    sub_217D8899C();
    sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
    sub_217D89CAC();
    v13 = (v3 + *(v12 + 28));
    v14 = v13[1];
    v24 = *v13;
    v25 = v14;
    v16 = *v13;
    v15 = v13[1];
    v26 = v13[2];
    v27 = *(v13 + 48);
    v20 = v16;
    v21 = v15;
    v22 = v13[2];
    v23 = *(v13 + 48);
    v28 = 3;
    sub_217ACC004(&v24, v18);
    sub_217A55B98();
    sub_217D89CAC();
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v19 = v23;
    sub_217ACC69C(v18);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BD0698()
{
  result = qword_2811C3670;
  if (!qword_2811C3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3670);
  }

  return result;
}

uint64_t FollowingViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BD0B58(0, &qword_2811BCA38, MEMORY[0x277D844C8]);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for FollowingViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_217BD0698();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v24 = v6;
  v25 = v10;
  v14 = v28;
  v15 = v12;
  v35 = 0;
  sub_217A5E738();
  v16 = v29;
  sub_217D89BCC();
  v17 = *(&v31 + 1);
  v18 = v32;
  *v15 = v31;
  *(v15 + 8) = v17;
  *(v15 + 16) = v18;
  v35 = 1;
  sub_217A532C8();
  sub_217D89BCC();
  *(v15 + 18) = v31;
  LOBYTE(v31) = 2;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v19 = v24;
  sub_217D89BCC();
  (*(v27 + 32))(v15 + *(v25 + 24), v19, v4);
  v35 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v14 + 8))(v9, v16);
  v20 = v26;
  v21 = v15 + *(v25 + 28);
  v22 = v32;
  *v21 = v31;
  *(v21 + 16) = v22;
  *(v21 + 32) = v33;
  *(v21 + 48) = v34;
  sub_217BD0BBC(v15, v20);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_217BD0C20(v15);
}

void sub_217BD0B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD0698();
    v7 = a3(a1, &type metadata for FollowingViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BD0BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BD0C20(uint64_t a1)
{
  v2 = type metadata accessor for FollowingViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BD0D54@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217BCFD24(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BCFD24(0, &qword_2811C8768, sub_217A532C8, sub_217A53320, &type metadata for FollowingData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A6018C(0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BCFD24(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217BD0F64(uint64_t a1)
{
  sub_217BCFD24(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (v1 <= 0x3F)
  {
    sub_217BCFD24(319, &qword_2811C8768, sub_217A532C8, sub_217A53320, &type metadata for FollowingData);
    if (v2 <= 0x3F)
    {
      sub_217A6018C(319);
      if (v3 <= 0x3F)
      {
        sub_217BCFD24(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217BD10FC()
{
  result = qword_27CBA15C0;
  if (!qword_27CBA15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15C0);
  }

  return result;
}

unint64_t sub_217BD1154()
{
  result = qword_2811C3660;
  if (!qword_2811C3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3660);
  }

  return result;
}

unint64_t sub_217BD11AC()
{
  result = qword_2811C3668;
  if (!qword_2811C3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3668);
  }

  return result;
}

uint64_t sub_217BD1200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69776F6C6C6F66 && a2 == 0xED00006174614467 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t NewsletterSubscriptionType.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t VideoAdLoadData.init(duration:loadState:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_217BD140C()
{
  if (*v0)
  {
    return 0x7461745364616F6CLL;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_217BD144C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217BD1530(uint64_t a1)
{
  v2 = sub_217BD1740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD156C(uint64_t a1)
{
  v2 = sub_217BD1740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdLoadData.encode(to:)(void *a1)
{
  sub_217BD19B4(0, &qword_27CBA15C8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD1740();
  sub_217D89E7C();
  v14 = 0;
  sub_217D89CCC();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_217BD1794();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217BD1740()
{
  result = qword_27CBA15D0;
  if (!qword_27CBA15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15D0);
  }

  return result;
}

unint64_t sub_217BD1794()
{
  result = qword_27CBA15D8;
  if (!qword_27CBA15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15D8);
  }

  return result;
}

uint64_t VideoAdLoadData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BD19B4(0, &qword_27CBA15E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD1740();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    v10 = sub_217D89BEC();
    v14 = 1;
    sub_217BD1A18();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BD19B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD1740();
    v7 = a3(a1, &type metadata for VideoAdLoadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BD1A18()
{
  result = qword_27CBA15E8;
  if (!qword_27CBA15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15E8);
  }

  return result;
}

unint64_t sub_217BD1A70()
{
  result = qword_27CBA15F0;
  if (!qword_27CBA15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15F0);
  }

  return result;
}

unint64_t sub_217BD1AC8()
{
  result = qword_27CBA15F8;
  if (!qword_27CBA15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA15F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoAdLoadData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoAdLoadData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_217BD1C0C()
{
  result = qword_27CBA1600;
  if (!qword_27CBA1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1600);
  }

  return result;
}

unint64_t sub_217BD1C64()
{
  result = qword_27CBA1608;
  if (!qword_27CBA1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1608);
  }

  return result;
}

unint64_t sub_217BD1CBC()
{
  result = qword_27CBA1610;
  if (!qword_27CBA1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1610);
  }

  return result;
}

NewsAnalytics::PaywallVisualContentType_optional __swiftcall PaywallVisualContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PaywallVisualContentType.rawValue.getter()
{
  v1 = 0x746C7561666564;
  v2 = 0x657061707377656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6F69647561;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_217BD1DFC()
{
  result = qword_27CBA1618;
  if (!qword_27CBA1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1618);
  }

  return result;
}

uint64_t sub_217BD1E50()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BD1F18(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BD1FCC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BD209C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xE900000000000072;
  v5 = 0x657061707377656ELL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000217DCB1A0;
  }

  if (*v1)
  {
    v3 = 0x6F69647561;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217BD21E0()
{
  result = qword_2811BF790;
  if (!qword_2811BF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF790);
  }

  return result;
}

NewsAnalytics::MediaPlayLocation_optional __swiftcall MediaPlayLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

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

uint64_t MediaPlayLocation.rawValue.getter()
{
  if (*v0)
  {
    return 1684366694;
  }

  else
  {
    return 0x656C6369747261;
  }
}

uint64_t sub_217BD22CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1684366694;
  }

  else
  {
    v3 = 0x656C6369747261;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1684366694;
  }

  else
  {
    v5 = 0x656C6369747261;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();
  }

  return v8 & 1;
}

unint64_t sub_217BD2370()
{
  result = qword_27CBA1620;
  if (!qword_27CBA1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1620);
  }

  return result;
}

uint64_t sub_217BD23C4()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BD2440(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BD24A8(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BD2520@<X0>(char *a2@<X8>)
{
  v3 = sub_217D89B0C();

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

  *a2 = v5;
  return result;
}

void sub_217BD2580(uint64_t *a1@<X8>)
{
  v2 = 1684366694;
  if (!*v1)
  {
    v2 = 0x656C6369747261;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_217BD2678()
{
  result = qword_27CBA1628;
  if (!qword_27CBA1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1628);
  }

  return result;
}

uint64_t IssueExposureContextData.surfacedByChannelID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IssueExposureContextData.surfacedByChannelID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217BD2780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000217DCFC40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217BD2814(uint64_t a1)
{
  v2 = sub_217BD29D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD2850(uint64_t a1)
{
  v2 = sub_217BD29D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueExposureContextData.encode(to:)(void *a1)
{
  sub_217BD2BB0(0, &qword_27CBA1630, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD29D8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BD29D8()
{
  result = qword_27CBA1638;
  if (!qword_27CBA1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1638);
  }

  return result;
}

uint64_t IssueExposureContextData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BD2BB0(0, &qword_27CBA1640, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD29D8();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BD2BB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD29D8();
    v7 = a3(a1, &type metadata for IssueExposureContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BD2C34(void *a1)
{
  sub_217BD2BB0(0, &qword_27CBA1630, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD29D8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BD2DA4()
{
  result = qword_27CBA1648;
  if (!qword_27CBA1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1648);
  }

  return result;
}

unint64_t sub_217BD2DFC()
{
  result = qword_27CBA1650;
  if (!qword_27CBA1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1650);
  }

  return result;
}

unint64_t sub_217BD2E54()
{
  result = qword_27CBA1658;
  if (!qword_27CBA1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1658);
  }

  return result;
}

uint64_t URLData.url.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t URLData.url.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t URLData.metadata.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t URLData.metadata.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsAnalytics::URLData __swiftcall URLData.init(url:metadata:)(Swift::String url, Swift::String_optional metadata)
{
  v2->value = url;
  v2[1] = metadata;
  result.metadata = metadata;
  result.url = url;
  return result;
}

uint64_t sub_217BD2FCC()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_217BD3000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217BD30DC(uint64_t a1)
{
  v2 = sub_217BD32D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD3118(uint64_t a1)
{
  v2 = sub_217BD32D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t URLData.encode(to:)(void *a1)
{
  sub_217BD3538(0, &qword_2811BC508, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD32D4();
  sub_217D89E7C();
  v13 = 0;
  v9 = v11[3];
  sub_217D89C6C();
  if (!v9)
  {
    v12 = 1;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BD32D4()
{
  result = qword_2811BD358;
  if (!qword_2811BD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD358);
  }

  return result;
}

uint64_t URLData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BD3538(0, &qword_27CBA1660, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD32D4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_217D89B2C();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BD3538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD32D4();
    v7 = a3(a1, &type metadata for URLData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BD35F8()
{
  result = qword_27CBA1668;
  if (!qword_27CBA1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1668);
  }

  return result;
}

unint64_t sub_217BD3650()
{
  result = qword_2811BD348;
  if (!qword_2811BD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD348);
  }

  return result;
}

unint64_t sub_217BD36A8()
{
  result = qword_2811BD350;
  if (!qword_2811BD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD350);
  }

  return result;
}

uint64_t sub_217BD36FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217BD3AB0(0);
  result = sub_217D89ACC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_217D89E1C();
      MEMORY[0x21CEAD4A0](v20);
      result = sub_217D89E3C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

void *sub_217BD3970()
{
  v1 = v0;
  sub_217BD3AB0(0);
  v2 = *v0;
  v3 = sub_217D89ABC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_217BD3AB0(uint64_t a1)
{
  if (!qword_27CBA1670)
  {
    type metadata accessor for FCSubscriptionOrigin(255);
    sub_217BD3B1C();
    v1 = sub_217D89AEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA1670);
    }
  }
}

unint64_t sub_217BD3B1C()
{
  result = qword_27CBA1678;
  if (!qword_27CBA1678)
  {
    type metadata accessor for FCSubscriptionOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1678);
  }

  return result;
}

uint64_t sub_217BD3B74()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA1680);
  v1 = __swift_project_value_buffer(v0, qword_27CBA1680);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217BD3C60()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA1698);
  v1 = __swift_project_value_buffer(v0, qword_27CBA1698);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217BD3D20()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA16B0);
  __swift_project_value_buffer(v0, qword_27CBA16B0);
  return sub_217D8866C();
}

uint64_t VideoAdLoadEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217BD4B9C(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VideoAdLoadEvent.adUserData.setter(uint64_t a1)
{
  sub_217BD4B9C(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdLoadEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 20);
  sub_217A6018C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 24);
  sub_217BD4B9C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 24);
  sub_217BD4B9C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 28);
  sub_217BD4B9C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 28);
  sub_217BD4B9C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 32);
  sub_217BD4B9C(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217BD4434()
{
  result = qword_27CBA16D0;
  if (!qword_27CBA16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA16D0);
  }

  return result;
}

unint64_t sub_217BD4488()
{
  result = qword_27CBA16D8;
  if (!qword_27CBA16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA16D8);
  }

  return result;
}

uint64_t VideoAdLoadEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 32);
  sub_217BD4B9C(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 36);
  sub_217BD4B9C(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 36);
  sub_217BD4B9C(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 40);
  sub_217BD4B9C(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 40);
  sub_217BD4B9C(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 44);
  sub_217BD4B9C(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 44);
  sub_217BD4B9C(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 48);
  sub_217BD4B9C(0, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8, &type metadata for VideoAdLoadData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BD4B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t VideoAdLoadEvent.adLoadData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 48);
  sub_217BD4B9C(0, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8, &type metadata for VideoAdLoadData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217BD4B9C(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for VideoAdLoadEvent(0);
  v5 = Event[5];
  sub_217A6018C(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  sub_217BD4B9C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  sub_217BD4B9C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = Event[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217BD4B9C(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = Event[9];
  sub_217BD4B9C(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = Event[10];
  sub_217BD4B9C(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = Event[11];
  sub_217BD4B9C(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = Event[12];
  sub_217BD4B9C(0, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8, &type metadata for VideoAdLoadData);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t VideoAdLoadEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_217BD51A8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t VideoAdLoadEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t VideoAdLoadEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t VideoAdLoadEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t VideoAdLoadEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdLoadEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t VideoAdLoadEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t VideoAdLoadEvent.Model.adLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

__n128 VideoAdLoadEvent.Model.init(adUserData:eventData:userBundleSubscriptionContextData:channelData:videoAdData:adPlacementData:adFeedData:adGroupData:adLoadData:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __n128 *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v13 = a1[1];
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 16);
  v29 = *(a4 + 17);
  v17 = a4[3];
  v18 = a4[4];
  v31 = *a5;
  v30 = a5[1].n128_u64[0];
  v33 = *a6;
  v32 = a6[1];
  v34 = *a7;
  v35 = *a8;
  v37 = *a10;
  v36 = *(a10 + 8);
  *a9 = *a1;
  *(a9 + 1) = v13;
  v19 = type metadata accessor for VideoAdLoadEvent.Model(0);
  v20 = v19[5];
  v21 = sub_217D8899C();
  (*(*(v21 - 8) + 32))(&a9[v20], a2, v21);
  v22 = &a9[v19[6]];
  v23 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 1) = v23;
  *(v22 + 2) = *(a3 + 32);
  v22[48] = *(a3 + 48);
  v24 = &a9[v19[7]];
  *v24 = v14;
  *(v24 + 1) = v15;
  v24[16] = v16;
  v24[17] = v29;
  *(v24 + 3) = v17;
  *(v24 + 4) = v18;
  v25 = &a9[v19[8]];
  result = v31;
  *v25 = v31;
  *(v25 + 2) = v30;
  v27 = &a9[v19[9]];
  *v27 = v33;
  *(v27 + 1) = v32;
  a9[v19[10]] = v34;
  a9[v19[11]] = v35;
  v28 = &a9[v19[12]];
  *v28 = v37;
  v28[8] = v36;
  return result;
}

uint64_t sub_217BD55F0(unsigned __int8 a1)
{
  v1 = 0x6144726573556461;
  v2 = 0x6144646565466461;
  v3 = 0x4470756F72476461;
  if (a1 != 7)
  {
    v3 = 0x614464616F4C6461;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  v4 = 0x4464416F65646976;
  if (a1 != 4)
  {
    v4 = 0x6D6563616C506461;
  }

  if (a1 <= 5u)
  {
    v2 = v4;
  }

  v5 = 0xD000000000000021;
  if (a1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (a1)
  {
    v1 = 0x746144746E657665;
  }

  if (a1 > 1u)
  {
    v1 = v5;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217BD573C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BD70A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BD5764(uint64_t a1)
{
  v2 = sub_217BD5D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD57A0(uint64_t a1)
{
  v2 = sub_217BD5D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BD64E4(0, &qword_27CBA16E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD5D5C();
  sub_217D89E7C();
  v10 = v3[1];
  *&v43[0] = *v3;
  *(&v43[0] + 1) = v10;
  LOBYTE(v39) = 0;
  sub_217A586D4();

  sub_217D89CAC();

  if (!v2)
  {
    v11 = type metadata accessor for VideoAdLoadEvent.Model(0);
    v45[0] = 1;
    sub_217D8899C();
    sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
    sub_217D89CAC();
    v12 = v3 + v11[6];
    v13 = *(v12 + 1);
    v43[0] = *v12;
    v43[1] = v13;
    v15 = *v12;
    v14 = *(v12 + 1);
    v43[2] = *(v12 + 2);
    v44 = v12[48];
    v39 = v15;
    v16 = *(v12 + 2);
    v40 = v14;
    v41 = v16;
    v42 = v12[48];
    v38 = 2;
    sub_217ACC004(v43, v36);
    sub_217A55B98();
    sub_217D89CAC();
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v37 = v42;
    sub_217ACC69C(v36);
    v18 = v3 + v11[7];
    v19 = *(v18 + 1);
    v20 = v18[16];
    v21 = v18[17];
    v22 = *(v18 + 3);
    v23 = *(v18 + 4);
    *&v32 = *v18;
    *(&v32 + 1) = v19;
    LOBYTE(v33) = v20;
    BYTE1(v33) = v21;
    v34 = v22;
    v35 = v23;
    v31 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v24 = v3 + v11[8];
    v25 = *(v24 + 2);
    v32 = *v24;
    v33 = v25;
    v31 = 4;
    sub_217BD4488();

    sub_217D89C3C();

    v26 = (v3 + v11[9]);
    v27 = v26[1];
    *&v32 = *v26;
    *(&v32 + 1) = v27;
    v31 = 5;
    sub_217B3CE84();

    sub_217D89CAC();

    LOBYTE(v32) = *(v3 + v11[10]);
    v31 = 6;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v32) = *(v3 + v11[11]);
    v31 = 7;
    sub_217B3D560();
    sub_217D89C3C();
    v28 = v3 + v11[12];
    v29 = *v28;
    LOBYTE(v28) = v28[8];
    *&v32 = v29;
    BYTE8(v32) = v28;
    v31 = 8;
    sub_217BD1AC8();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BD5D5C()
{
  result = qword_27CBA16F0;
  if (!qword_27CBA16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA16F0);
  }

  return result;
}

uint64_t VideoAdLoadEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_217D8899C();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BD64E4(0, &qword_27CBA16F8, MEMORY[0x277D844C8]);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for VideoAdLoadEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD5D5C();
  v40 = v8;
  v12 = v41;
  sub_217D89E5C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = a1;
  v13 = v37;
  v35 = v3;
  LOBYTE(v42) = 0;
  sub_217A5867C();
  sub_217D89BCC();
  v14 = *(&v46 + 1);
  v15 = v11;
  *v11 = v46;
  *(v11 + 1) = v14;
  LOBYTE(v46) = 1;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v16 = v35;
  sub_217D89BCC();
  (*(v13 + 32))(&v11[v9[5]], v5, v16);
  v51 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v17 = &v11[v9[6]];
  v18 = v47;
  *v17 = v46;
  *(v17 + 1) = v18;
  *(v17 + 2) = v48;
  v17[48] = v49;
  v50 = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v19 = v38;
  v20 = *(&v42 + 1);
  v21 = v43;
  v22 = BYTE1(v43);
  v23 = v44;
  v24 = v45;
  v25 = &v11[v9[7]];
  *v25 = v42;
  *(v25 + 1) = v20;
  v25[16] = v21;
  v25[17] = v22;
  *(v25 + 3) = v23;
  *(v25 + 4) = v24;
  v50 = 4;
  sub_217BD4434();
  sub_217D89B5C();
  v26 = v43;
  v27 = &v11[v9[8]];
  *v27 = v42;
  *(v27 + 2) = v26;
  v50 = 5;
  sub_217B3CE30();
  sub_217D89BCC();
  v28 = *(&v42 + 1);
  v29 = &v11[v9[9]];
  *v29 = v42;
  *(v29 + 1) = v28;
  v50 = 6;
  sub_217A5BD70();
  sub_217D89B5C();
  v11[v9[10]] = v42;
  v50 = 7;
  sub_217B3D50C();
  sub_217D89B5C();
  v11[v9[11]] = v42;
  v50 = 8;
  sub_217BD1A70();
  sub_217D89BCC();
  v30 = v41;
  (*(v19 + 8))(v40, v39);
  v31 = BYTE8(v42);
  v32 = v15 + v9[12];
  *v32 = v42;
  *(v32 + 8) = v31;
  sub_217BD6548(v15, v36);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_217BD65AC(v15);
}

void sub_217BD64E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD5D5C();
    v7 = a3(a1, &type metadata for VideoAdLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BD6548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BD65AC(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BD66E0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217BD4B9C(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A6018C(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BD4B9C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BD4B9C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217BD4B9C(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217BD4B9C(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217BD4B9C(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  sub_217BD4B9C(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_217BD4B9C(0, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8, &type metadata for VideoAdLoadData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

void sub_217BD6B5C(uint64_t a1)
{
  sub_217BD4B9C(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  if (v1 <= 0x3F)
  {
    sub_217A6018C(319);
    if (v2 <= 0x3F)
    {
      sub_217BD4B9C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217BD4B9C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217BD4B9C(319, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
          if (v5 <= 0x3F)
          {
            sub_217BD4B9C(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
            if (v6 <= 0x3F)
            {
              sub_217BD4B9C(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
              if (v7 <= 0x3F)
              {
                sub_217BD4B9C(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
                if (v8 <= 0x3F)
                {
                  sub_217BD4B9C(319, &qword_27CBA16E0, sub_217BD1A70, sub_217BD1AC8, &type metadata for VideoAdLoadData);
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

void sub_217BD6E70(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CBA1720, &type metadata for VideoAdData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9FD68, &type metadata for AdFeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD70, &type metadata for AdGroupData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217BD6FA0()
{
  result = qword_27CBA1728;
  if (!qword_27CBA1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1728);
  }

  return result;
}

unint64_t sub_217BD6FF8()
{
  result = qword_27CBA1730;
  if (!qword_27CBA1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1730);
  }

  return result;
}

unint64_t sub_217BD7050()
{
  result = qword_27CBA1738;
  if (!qword_27CBA1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1738);
  }

  return result;
}

uint64_t sub_217BD70A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144726573556461 && a2 == 0xEA00000000006174;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614464616F4C6461 && a2 == 0xEA00000000006174)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217BD73AC()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA1740);
  v1 = __swift_project_value_buffer(v0, qword_27CBA1740);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217BD7498()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA1758);
  v1 = __swift_project_value_buffer(v0, qword_27CBA1758);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217BD7558()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1770);
  __swift_project_value_buffer(v0, qword_27CBA1770);
  return sub_217D8866C();
}

uint64_t SponsoredAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SponsoredAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 24);
  sub_217BD85CC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 24);
  sub_217BD85CC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 28);
  sub_217BD85CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 28);
  sub_217BD85CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 32);
  sub_217BD85CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 32);
  sub_217BD85CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adStateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 36);
  sub_217BD85CC(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adStateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 36);
  sub_217BD85CC(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 40);
  sub_217BD85CC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 40);
  sub_217BD85CC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 44);
  sub_217BD85CC(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 44);
  sub_217BD85CC(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 48);
  sub_217BD85CC(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 48);
  sub_217BD85CC(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 52);
  sub_217BD85CC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsoredAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 52);
  sub_217BD85CC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 56);
  sub_217BD85CC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BD85CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SponsoredAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SponsoredAdImpressionEvent(0) + 56);
  sub_217BD85CC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SponsoredAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SponsoredAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BD85CC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BD85CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217BD85CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217BD85CC(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BD85CC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217BD85CC(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217BD85CC(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217BD85CC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217BD85CC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v12, v25);
}

uint64_t sub_217BD8C9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SponsoredAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SponsoredAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

void SponsoredAdImpressionEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t SponsoredAdImpressionEvent.Model.adStateData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SponsoredAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

double SponsoredAdImpressionEvent.Model.adSizeData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for SponsoredAdImpressionEvent.Model(0) + 44));
  *a1 = result;
  return result;
}

uint64_t SponsoredAdImpressionEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t SponsoredAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t SponsoredAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

__n128 SponsoredAdImpressionEvent.Model.init(eventData:timedData:adUserData:userBundleSubscriptionContextData:channelData:adStateData:adPlacementData:adSizeData:adPositionData:adFeedData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, int *a10, char *a11, char *a12)
{
  v18 = *a3;
  v19 = a3[1];
  v20 = *(a5 + 32);
  v21 = *a6;
  v37 = *a7;
  v36 = a7[1];
  v38 = *(a10 + 4);
  v39 = *a10;
  v40 = *a11;
  v41 = *a12;
  v22 = sub_217D8899C();
  v23 = *a8;
  v34 = *(a5 + 16);
  v35 = *a5;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v24 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  v25 = v24[5];
  v26 = sub_217D889CC();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = (a9 + v24[6]);
  *v27 = v18;
  v27[1] = v19;
  v28 = a9 + v24[7];
  v29 = *(a4 + 16);
  *v28 = *a4;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a4 + 32);
  *(v28 + 48) = *(a4 + 48);
  v30 = a9 + v24[8];
  result = v35;
  *v30 = v35;
  *(v30 + 16) = v34;
  *(v30 + 32) = v20;
  *(a9 + v24[9]) = v21;
  v32 = (a9 + v24[10]);
  *v32 = v37;
  v32[1] = v36;
  *(a9 + v24[11]) = v23;
  v33 = a9 + v24[12];
  *v33 = v39;
  *(v33 + 4) = v38;
  *(a9 + v24[13]) = v40;
  *(a9 + v24[14]) = v41;
  return result;
}

uint64_t sub_217BD9164(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x6144726573556461;
    v8 = 0xD000000000000021;
    if (a1 != 3)
    {
      v8 = 0x446C656E6E616863;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x74614464656D6974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x697469736F506461;
    v2 = 0x6144646565466461;
    if (a1 != 9)
    {
      v2 = 0x4470756F72476461;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x4465746174536461;
    v4 = 0x6D6563616C506461;
    if (a1 != 6)
    {
      v4 = 0x6144657A69536461;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217BD9308@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BDB048(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BD9330(uint64_t a1)
{
  v2 = sub_217BD99E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BD936C(uint64_t a1)
{
  v2 = sub_217BD99E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SponsoredAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BDA32C(0, &qword_27CBA1788, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD99E4();
  sub_217D89E7C();
  LOBYTE(v40[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
    LOBYTE(v40[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v43 = *v11;
    v44 = v12;
    v42 = 2;
    sub_217A586D4();

    sub_217D89CAC();

    v13 = (v3 + v10[7]);
    v14 = v13[1];
    v40[0] = *v13;
    v40[1] = v14;
    v16 = *v13;
    v15 = v13[1];
    v40[2] = v13[2];
    v41 = *(v13 + 48);
    v36 = v16;
    v37 = v15;
    v38 = v13[2];
    v39 = *(v13 + 48);
    v35 = 3;
    sub_217ACC004(v40, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v34 = v39;
    sub_217ACC69C(v33);
    v17 = (v3 + v10[8]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v28 = *v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    HIBYTE(v27) = 4;
    sub_217AD86BC(v28, v18, v19, v20, v21);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v28, v29, v30, v31, v32);
    LOBYTE(v28) = *(v3 + v10[9]);
    HIBYTE(v27) = 5;
    sub_217BB537C();
    sub_217D89CAC();
    v22 = (v3 + v10[10]);
    v23 = v22[1];
    v28 = *v22;
    v29 = v23;
    HIBYTE(v27) = 6;
    sub_217B3CE84();

    sub_217D89CAC();

    v28 = *(v3 + v10[11]);
    HIBYTE(v27) = 7;
    sub_217B95B14();
    sub_217D89CAC();
    v24 = (v3 + v10[12]);
    v25 = *v24;
    LOBYTE(v24) = *(v24 + 4);
    LODWORD(v28) = v25;
    BYTE4(v28) = v24;
    HIBYTE(v27) = 8;
    sub_217B3D0DC();
    sub_217D89C3C();
    LOBYTE(v28) = *(v3 + v10[13]);
    HIBYTE(v27) = 9;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v28) = *(v3 + v10[14]);
    HIBYTE(v27) = 10;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BD99E4()
{
  result = qword_27CBA1790;
  if (!qword_27CBA1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1790);
  }

  return result;
}

void SponsoredAdImpressionEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_217D889CC();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BDA32C(0, &qword_27CBA1798, MEMORY[0x277D844C8]);
  v41 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BD99E4();
  v40 = v10;
  v14 = v42;
  sub_217D89E5C();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v38;
    v33 = v11;
    v42 = v13;
    LOBYTE(v46) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v16 = v39;
    sub_217D89BCC();
    v17 = v42;
    (*(v37 + 32))(v42, v16, v6);
    LOBYTE(v46) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v18 = v5;
    sub_217D89BCC();
    v32[1] = v6;
    v39 = 0;
    v19 = v33;
    (*(v35 + 32))(&v17[v33[5]], v18);
    LOBYTE(v43) = 2;
    sub_217A5867C();
    sub_217D89BCC();
    v20 = *(&v46 + 1);
    v21 = &v17[v19[6]];
    *v21 = v46;
    *(v21 + 1) = v20;
    v51 = 3;
    sub_217A54D08();
    sub_217D89BCC();
    v22 = &v17[v19[7]];
    v23 = v47;
    *v22 = v46;
    *(v22 + 1) = v23;
    *(v22 + 2) = v48;
    v22[48] = v49;
    v50 = 4;
    sub_217AD07F8();
    sub_217D89B5C();
    v24 = v45;
    v25 = &v17[v33[8]];
    v26 = v44;
    *v25 = v43;
    *(v25 + 1) = v26;
    *(v25 + 4) = v24;
    v50 = 5;
    sub_217BB5324();
    sub_217D89BCC();
    v17[v33[9]] = v43;
    v50 = 6;
    sub_217B3CE30();
    sub_217D89BCC();
    v27 = *(&v43 + 1);
    v28 = &v17[v33[10]];
    *v28 = v43;
    *(v28 + 1) = v27;
    v50 = 7;
    sub_217B95AC0();
    sub_217D89BCC();
    *&v42[v33[11]] = v43;
    v50 = 8;
    sub_217B3D088();
    sub_217D89B5C();
    v29 = BYTE4(v43);
    v30 = &v42[v33[12]];
    *v30 = v43;
    v30[4] = v29;
    v50 = 9;
    sub_217A5BD70();
    sub_217D89B5C();
    v42[v33[13]] = v43;
    v50 = 10;
    sub_217B3D50C();
    sub_217D89B5C();
    (*(v15 + 8))(v40, v41);
    v31 = v42;
    v42[v33[14]] = v43;
    sub_217BDA390(v31, v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217BDA3F4(v31);
  }
}

void sub_217BDA32C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BD99E4();
    v7 = a3(a1, &type metadata for SponsoredAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BDA390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BDA3F4(uint64_t a1)
{
  v2 = type metadata accessor for SponsoredAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BDA528@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BD85CC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BD85CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217BD85CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217BD85CC(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217BD85CC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217BD85CC(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217BD85CC(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217BD85CC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217BD85CC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v13, v26);
}

void sub_217BDAA5C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217BD85CC(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
      if (v3 <= 0x3F)
      {
        sub_217BD85CC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217BD85CC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
          if (v5 <= 0x3F)
          {
            sub_217BD85CC(319, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
            if (v6 <= 0x3F)
            {
              sub_217BD85CC(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
              if (v7 <= 0x3F)
              {
                sub_217BD85CC(319, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
                if (v8 <= 0x3F)
                {
                  sub_217BD85CC(319, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217BD85CC(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
                    if (v10 <= 0x3F)
                    {
                      sub_217BD85CC(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
                      if (v11 <= 0x3F)
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
  }
}

void sub_217BDADD8(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD60, &type metadata for AdPositionData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CB9FD68, &type metadata for AdFeedData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9FD70, &type metadata for AdGroupData);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217BDAF44()
{
  result = qword_27CBA17C0;
  if (!qword_27CBA17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA17C0);
  }

  return result;
}

unint64_t sub_217BDAF9C()
{
  result = qword_27CBA17C8;
  if (!qword_27CBA17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA17C8);
  }

  return result;
}

unint64_t sub_217BDAFF4()
{
  result = qword_27CBA17D0;
  if (!qword_27CBA17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA17D0);
  }

  return result;
}

uint64_t sub_217BDB048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4465746174536461 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144657A69536461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_217BDB4B8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1808);
  __swift_project_value_buffer(v0, qword_27CBA1808);
  return sub_217D8866C();
}

uint64_t MagazineCategoryExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MagazineCategoryExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MagazineCategoryExposureEvent.magazineCategoryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 24);
  sub_217BDBA04(0, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800, &type metadata for MagazineCategoryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217BDB7AC()
{
  result = qword_27CBA1828;
  if (!qword_27CBA1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1828);
  }

  return result;
}

unint64_t sub_217BDB800()
{
  result = qword_27CBA1830;
  if (!qword_27CBA1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1830);
  }

  return result;
}

uint64_t MagazineCategoryExposureEvent.magazineCategoryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 24);
  sub_217BDBA04(0, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800, &type metadata for MagazineCategoryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MagazineCategoryExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 28);
  sub_217BDBA04(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BDBA04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t MagazineCategoryExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MagazineCategoryExposureEvent(0) + 28);
  sub_217BDBA04(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MagazineCategoryExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MagazineCategoryExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BDBA04(0, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800, &type metadata for MagazineCategoryData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BDBA04(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217BDBD78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

double MagazineCategoryExposureEvent.Model.magazineCategoryData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for MagazineCategoryExposureEvent.Model(0) + 24));
  *a1 = result;
  return result;
}

uint64_t MagazineCategoryExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MagazineCategoryExposureEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 MagazineCategoryExposureEvent.Model.init(eventData:timedData:magazineCategoryData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_217D8899C();
  v11 = *a3;
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
  v13 = v12[5];
  v14 = sub_217D889CC();
  (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  *(a5 + v12[6]) = v11;
  v15 = a5 + v12[7];
  v16 = *(a4 + 16);
  *v15 = *a4;
  *(v15 + 16) = v16;
  result = *(a4 + 32);
  *(v15 + 32) = result;
  *(v15 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217BDBFBC()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217BDC03C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BDD05C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BDC064(uint64_t a1)
{
  v2 = sub_217BDC3DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BDC0A0(uint64_t a1)
{
  v2 = sub_217BDC3DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MagazineCategoryExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BDC988(0, &qword_27CBA1838, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDC3DC();
  sub_217D89E7C();
  LOBYTE(v23[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
    LOBYTE(v23[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v26 = *(v3 + *(v10 + 24));
    v25 = 2;
    sub_217BDB800();
    sub_217D89CAC();
    v11 = (v3 + *(v10 + 28));
    v12 = v11[1];
    v23[0] = *v11;
    v23[1] = v12;
    v14 = *v11;
    v13 = v11[1];
    v23[2] = v11[2];
    v24 = *(v11 + 48);
    v19 = v14;
    v20 = v13;
    v21 = v11[2];
    v22 = *(v11 + 48);
    v18 = 3;
    sub_217ACC004(v23, v16);
    sub_217A55B98();
    sub_217D89CAC();
    v16[0] = v19;
    v16[1] = v20;
    v16[2] = v21;
    v17 = v22;
    sub_217ACC69C(v16);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BDC3DC()
{
  result = qword_27CBA1840;
  if (!qword_27CBA1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1840);
  }

  return result;
}

uint64_t MagazineCategoryExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_217D889CC();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v28 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BDC988(0, &qword_27CBA1848, MEMORY[0x277D844C8]);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDC3DC();
  v29 = v9;
  v13 = v30;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v10;
  v14 = v24;
  v15 = v25;
  LOBYTE(v31) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v16 = *(v14 + 32);
  v17 = v28;
  v28 = v5;
  v16(v12, v17);
  LOBYTE(v31) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v23 + 32))(&v12[*(v30 + 20)], v4, v15);
  v35 = 2;
  sub_217BDB7AC();
  sub_217D89BCC();
  v18 = v30;
  *&v12[*(v30 + 24)] = v31;
  v35 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v26 + 8))(v29, v27);
  v19 = &v12[*(v18 + 28)];
  v20 = v32;
  *v19 = v31;
  *(v19 + 1) = v20;
  *(v19 + 2) = v33;
  v19[48] = v34;
  sub_217BDC9EC(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BDCA50(v12);
}

void sub_217BDC988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BDC3DC();
    v7 = a3(a1, &type metadata for MagazineCategoryExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BDC9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BDCA50(uint64_t a1)
{
  v2 = type metadata accessor for MagazineCategoryExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BDCB84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BDBA04(0, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800, &type metadata for MagazineCategoryData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BDBA04(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217BDCD5C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217BDBA04(319, &qword_27CBA1820, sub_217BDB7AC, sub_217BDB800, &type metadata for MagazineCategoryData);
      if (v3 <= 0x3F)
      {
        sub_217BDBA04(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217BDCEA8(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217BDCF58()
{
  result = qword_27CBA1870;
  if (!qword_27CBA1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1870);
  }

  return result;
}

unint64_t sub_217BDCFB0()
{
  result = qword_27CBA1878;
  if (!qword_27CBA1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1878);
  }

  return result;
}

unint64_t sub_217BDD008()
{
  result = qword_27CBA1880;
  if (!qword_27CBA1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1880);
  }

  return result;
}

uint64_t sub_217BDD05C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCFC60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}
uint64_t EventModelObject.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020, &qword_1CAD5E370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v39 - v6;
  v7 = type metadata accessor for EventCalendarModelObject(0);
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4681C8, &unk_1CAD69388);
  v49 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for EventModelObject(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  sub_1CAB299C0(a1, v50);
  EventModelObject.init(from:)(v50, v16);
  if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v13;
  v43 = v9;
  v44 = v7;
  v45 = v18;
  v20 = v51;
  sub_1CAD2E6A8(v16, v18, type metadata accessor for EventModelObject);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAD2DF64();
  sub_1CAD4EAE4();
  v21 = a1;
  LOBYTE(v50[0]) = 23;
  v22 = v10;
  v23 = sub_1CAD4E824();
  if (v24)
  {
    v40 = v12;
    v41 = 0;
    v25 = *(v20 + 16);
    if (*(v25 + 16))
    {
      v26 = sub_1CAC1628C(v23, v24);
      v28 = v27;

      v29 = v46;
      if (v28)
      {
        v30 = v47;
        sub_1CAD2E710(*(v25 + 56) + *(v47 + 72) * v26, v46, type metadata accessor for EventCalendarModelObject);
        v31 = 0;
        v32 = v48;
        goto LABEL_11;
      }

      v31 = 1;
      v32 = v48;
    }

    else
    {

      v31 = 1;
      v32 = v48;
      v29 = v46;
    }

    v30 = v47;
LABEL_11:
    (*(v49 + 8))(v40, v22);
    v34 = *(v30 + 56);
    v35 = v44;
    v34(v29, v31, 1, v44);

    v36 = (*(v30 + 48))(v29, 1, v35);
    v37 = v43;
    if (v36 == 1)
    {
      sub_1CAB21B68(v29, &qword_1EC464020, &qword_1CAD5E370);
      v33 = v45;
    }

    else
    {
      sub_1CAD2E6A8(v29, v43, type metadata accessor for EventCalendarModelObject);
      v38 = *(v42 + 104);
      v33 = v45;
      sub_1CAB21B68(&v45[v38], &qword_1EC464020, &qword_1CAD5E370);
      sub_1CAD2E6A8(v37, v33 + v38, type metadata accessor for EventCalendarModelObject);
      v34(v33 + v38, 0, 1, v35);
    }

    goto LABEL_14;
  }

  (*(v49 + 8))(v12, v10);

  v32 = v48;
  v33 = v45;
LABEL_14:
  sub_1CAD2E710(v33, v32, type metadata accessor for EventModelObject);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1CAD2DF04(v33, type metadata accessor for EventModelObject);
}

uint64_t EventModelObject.encode(to:configuration:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020, &qword_1CAD5E370);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468280, &qword_1CAD693B8);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for EventModelObject(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  sub_1CAD2E710(v4, v15, type metadata accessor for EventModelObject);
  if ((*(a2 + 16) & 1) == 0)
  {
    v16 = *(v13 + 104);
    sub_1CAB21B68(&v15[v16], &qword_1EC464020, &qword_1CAD5E370);
    v17 = type metadata accessor for EventCalendarModelObject(0);
    (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  }

  EventModelObject.encode(to:)(a1);
  if (!v3)
  {
    v22 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CAD2DF64();
    sub_1CAD4EB04();
    sub_1CAB23A9C(v23 + *(v13 + 104), v9, &qword_1EC464020, &qword_1CAD5E370);
    v18 = type metadata accessor for EventCalendarModelObject(0);
    if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
    {
      sub_1CAB21B68(v9, &qword_1EC464020, &qword_1CAD5E370);
    }

    else
    {

      sub_1CAD2DF04(v9, type metadata accessor for EventCalendarModelObject);
    }

    v25 = 23;
    v19 = v22;
    sub_1CAD4E904();
    (*(v24 + 8))(v12, v19);
  }

  return sub_1CAD2DF04(v15, type metadata accessor for EventModelObject);
}

uint64_t EventModelObject.EncodingConfiguration.__allocating_init(includeCalendar:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t EventModelObject.DecodingConfiguration.__allocating_init(calendarsById:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t EventModelObject.DecodingConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1CAD2A458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3 != 1)
  {

    sub_1CAC3C27C(a4, a5, a6, a7);
  }
}

uint64_t _s13CalendarUIKit16EventModelObjectV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = sub_1CAD4BFF4();
  v417 = *(v5 - 8);
  v418 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v416 = &v380[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450, &qword_1CAD5A1B0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v414 = &v380[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v411 = &v380[-v10];
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0, &qword_1CAD5B350);
  v11 = MEMORY[0x1EEE9AC00](v413);
  v415 = &v380[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v412 = &v380[-v13];
  v409 = type metadata accessor for EventAttendeeModelObject(0);
  v407 = *(v409 - 8);
  MEMORY[0x1EEE9AC00](v409);
  v15 = &v380[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38, &unk_1CAD5E360);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v408 = &v380[-v17];
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468368, &qword_1CAD699D8);
  MEMORY[0x1EEE9AC00](v406);
  v410 = &v380[-v18];
  v403 = type metadata accessor for EventOrganizerModelObject(0);
  v401 = *(v403 - 8);
  MEMORY[0x1EEE9AC00](v403);
  v405 = &v380[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0, &qword_1CAD5E3D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v402 = &v380[-v21];
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468370, &unk_1CAD699E0);
  MEMORY[0x1EEE9AC00](v400);
  v404 = &v380[-v22];
  v23 = sub_1CAD4C0F4();
  v398 = *(v23 - 8);
  v399 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v397 = &v380[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70, &unk_1CAD61F00);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v395 = &v380[-v26];
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E40, &unk_1CAD5E380);
  MEMORY[0x1EEE9AC00](v394);
  v396 = &v380[-v27];
  v391 = type metadata accessor for EventCalendarModelObject(0);
  v389 = *(v391 - 8);
  MEMORY[0x1EEE9AC00](v391);
  v393 = &v380[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020, &qword_1CAD5E370);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v390 = &v380[-v30];
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468378, &qword_1CAD699F0);
  MEMORY[0x1EEE9AC00](v388);
  v392 = &v380[-v31];
  v32 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v422 = *(v32 - 8);
  v423 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v419 = &v380[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40, &qword_1CAD5E390);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v420 = &v380[-v35];
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E48, &qword_1CAD5E398);
  MEMORY[0x1EEE9AC00](v421);
  v424 = &v380[-v36];
  v37 = sub_1CAD4C404();
  v427 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  *(&v426 + 1) = &v380[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0, &qword_1CAD599B0);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v425 = &v380[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v380[-v43];
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v380[-v45];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679E0, &qword_1CAD68600);
  v48 = MEMORY[0x1EEE9AC00](v47);
  *&v426 = &v380[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v380[-v51];
  MEMORY[0x1EEE9AC00](v50);
  v53 = v3;
  v55 = &v380[-v54];
  if (*v4 != *v53 || v4[1] != v53[1])
  {
    v56 = v53;
    v57 = sub_1CAD4E9E4();
    v53 = v56;
    if ((v57 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v4[2] != v53[2] || v4[3] != v53[3])
  {
    v58 = v53;
    v59 = sub_1CAD4E9E4();
    v53 = v58;
    if ((v59 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v60 = v4[4];
  v61 = v4[5];
  v62 = v53[4];
  v63 = v53[5];
  v387 = v53;
  if ((v60 != v62 || v61 != v63) && (sub_1CAD4E9E4() & 1) == 0)
  {
    goto LABEL_30;
  }

  v386 = v15;
  v64 = type metadata accessor for EventModelObject(0);
  v65 = v387;
  if ((sub_1CAD4C0A4() & 1) == 0 || (sub_1CAD4C0A4() & 1) == 0 || *(v4 + v64[9]) != *(v65 + v64[9]) || *(v4 + v64[10]) != *(v65 + v64[10]))
  {
    goto LABEL_30;
  }

  v383 = v64;
  v384 = v4;
  v66 = v64[11];
  v67 = *(v47 + 48);
  v68 = v4 + v66;
  v69 = v66;
  sub_1CAB23A9C(v68, v55, &qword_1EC4635D0, &qword_1CAD599B0);
  v70 = v65 + v69;
  v71 = v67;
  sub_1CAB23A9C(v70, &v55[v67], &qword_1EC4635D0, &qword_1CAD599B0);
  v72 = v427 + 48;
  v73 = v37;
  v385 = *(v427 + 48);
  if (v385(v55, 1, v37) == 1)
  {
    if (v385(&v55[v71], 1, v37) == 1)
    {
      sub_1CAB21B68(v55, &qword_1EC4635D0, &qword_1CAD599B0);
      goto LABEL_22;
    }

LABEL_19:
    v74 = &unk_1EC4679E0;
    v75 = &qword_1CAD68600;
LABEL_20:
    sub_1CAB21B68(v55, v74, v75);
    goto LABEL_30;
  }

  sub_1CAB23A9C(v55, v46, &qword_1EC4635D0, &qword_1CAD599B0);
  if (v385(&v55[v71], 1, v37) == 1)
  {
    (*(v427 + 8))(v46, v37);
    goto LABEL_19;
  }

  v76 = v427;
  v77 = *(v427 + 32);
  v382 = v72;
  v78 = *(&v426 + 1);
  v77(*(&v426 + 1), &v55[v71], v73);
  sub_1CAD2FEA4(&qword_1EC464E68, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
  v381 = sub_1CAD4DED4();
  v79 = *(v76 + 8);
  v79(v78, v73);
  v79(v46, v73);
  sub_1CAB21B68(v55, &qword_1EC4635D0, &qword_1CAD599B0);
  if ((v381 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  v80 = v383[12];
  v81 = *(v47 + 48);
  sub_1CAB23A9C(v384 + v80, v52, &qword_1EC4635D0, &qword_1CAD599B0);
  sub_1CAB23A9C(v387 + v80, &v52[v81], &qword_1EC4635D0, &qword_1CAD599B0);
  if (v385(v52, 1, v73) == 1)
  {
    if (v385(&v52[v81], 1, v73) != 1)
    {
      goto LABEL_27;
    }

    sub_1CAB21B68(v52, &qword_1EC4635D0, &qword_1CAD599B0);
    v82 = v384;
  }

  else
  {
    sub_1CAB23A9C(v52, v44, &qword_1EC4635D0, &qword_1CAD599B0);
    if (v385(&v52[v81], 1, v73) == 1)
    {
      goto LABEL_26;
    }

    v83 = *(&v426 + 1);
    v84 = v427;
    (*(v427 + 32))(*(&v426 + 1), &v52[v81], v73);
    sub_1CAD2FEA4(&qword_1EC464E68, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
    v85 = sub_1CAD4DED4();
    v82 = v384;
    LODWORD(v382) = v85;
    v86 = *(v84 + 8);
    v86(v83, v73);
    v86(v44, v73);
    sub_1CAB21B68(v52, &qword_1EC4635D0, &qword_1CAD599B0);
    if ((v382 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (*(v82 + v383[13]) != *(v387 + v383[13]))
  {
    goto LABEL_30;
  }

  v89 = v383[14];
  v90 = *(v47 + 48);
  v91 = v82 + v89;
  v52 = v426;
  v92 = v387;
  sub_1CAB23A9C(v91, v426, &qword_1EC4635D0, &qword_1CAD599B0);
  sub_1CAB23A9C(v92 + v89, &v52[v90], &qword_1EC4635D0, &qword_1CAD599B0);
  if (v385(v52, 1, v73) == 1)
  {
    if (v385(&v52[v90], 1, v73) == 1)
    {
      sub_1CAB21B68(v52, &qword_1EC4635D0, &qword_1CAD599B0);
      goto LABEL_37;
    }

LABEL_27:
    sub_1CAB21B68(v52, &unk_1EC4679E0, &qword_1CAD68600);
    goto LABEL_30;
  }

  v44 = v425;
  sub_1CAB23A9C(v52, v425, &qword_1EC4635D0, &qword_1CAD599B0);
  if (v385(&v52[v90], 1, v73) == 1)
  {
LABEL_26:
    (*(v427 + 8))(v44, v73);
    goto LABEL_27;
  }

  v94 = *(&v426 + 1);
  v93 = v427;
  (*(v427 + 32))(*(&v426 + 1), &v52[v90], v73);
  sub_1CAD2FEA4(&qword_1EC464E68, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
  v95 = sub_1CAD4DED4();
  v96 = *(v93 + 8);
  v96(v94, v73);
  v96(v44, v73);
  sub_1CAB21B68(v52, &qword_1EC4635D0, &qword_1CAD599B0);
  if ((v95 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_37:
  v97 = v383[15];
  v98 = *(v421 + 48);
  v55 = v424;
  sub_1CAB23A9C(v384 + v97, v424, &qword_1EC467A40, &qword_1CAD5E390);
  sub_1CAB23A9C(v387 + v97, &v55[v98], &qword_1EC467A40, &qword_1CAD5E390);
  v99 = v423;
  v100 = *(v422 + 48);
  if (v100(v55, 1, v423) == 1)
  {
    if (v100(&v55[v98], 1, v99) == 1)
    {
      sub_1CAB21B68(v55, &qword_1EC467A40, &qword_1CAD5E390);
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  v101 = v420;
  sub_1CAB23A9C(v55, v420, &qword_1EC467A40, &qword_1CAD5E390);
  if (v100(&v55[v98], 1, v99) == 1)
  {
    sub_1CAD2DF04(v101, type metadata accessor for EventVirtualConferenceModelObject);
LABEL_42:
    v74 = &qword_1EC464E48;
    v75 = &qword_1CAD5E398;
    goto LABEL_20;
  }

  v102 = &v55[v98];
  v103 = v419;
  sub_1CAD2E6A8(v102, v419, type metadata accessor for EventVirtualConferenceModelObject);
  v104 = _s13CalendarUIKit33EventVirtualConferenceModelObjectV2eeoiySbAC_ACtFZ_0(v101, v103);
  sub_1CAD2DF04(v103, type metadata accessor for EventVirtualConferenceModelObject);
  sub_1CAD2DF04(v101, type metadata accessor for EventVirtualConferenceModelObject);
  sub_1CAB21B68(v55, &qword_1EC467A40, &qword_1CAD5E390);
  if (!v104)
  {
    goto LABEL_30;
  }

LABEL_44:
  v105 = v383;
  v106 = v384;
  v107 = v383[16];
  v108 = (v384 + v107);
  v109 = *(v384 + v107 + 8);
  v110 = v387;
  v111 = (v387 + v107);
  v112 = v111[1];
  if (v109)
  {
    if (!v112)
    {
      goto LABEL_30;
    }

    if (*v108 != *v111 || v109 != v112)
    {
      v113 = sub_1CAD4E9E4();
      v105 = v383;
      v110 = v387;
      if ((v113 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v112)
  {
    goto LABEL_30;
  }

  v114 = v105[17];
  v115 = (v106 + v114);
  v116 = *(v106 + v114 + 8);
  v117 = (v110 + v114);
  v118 = v117[1];
  if (v116)
  {
    if (!v118 || (*v115 != *v117 || v116 != v118) && (sub_1CAD4E9E4() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v118)
  {
    goto LABEL_30;
  }

  v119 = v383[18];
  v120 = *(v384 + v119);
  v121 = *(v387 + v119);
  if (v120)
  {
    if (!v121 || (sub_1CACA7BB4(v120, v121) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v121)
  {
    goto LABEL_30;
  }

  v122 = (v384 + v383[19]);
  v123 = v122[3];
  v124 = v122[4];
  v125 = v124;
  v564[5] = v122[5];
  v564[4] = v124;
  v126 = v122[9];
  v569 = v122[10];
  v127 = v122[7];
  v128 = v122[8];
  v129 = v128;
  v568 = v122[9];
  v567 = v128;
  v130 = v122[5];
  v131 = v122[7];
  v565 = v122[6];
  v566 = v131;
  v132 = v122[1];
  v564[0] = *v122;
  v564[1] = v132;
  v133 = v122[2];
  v134 = *v122;
  v135 = v122[1];
  v136 = v133;
  v564[3] = v122[3];
  v564[2] = v133;
  v137 = (v387 + v383[19]);
  v138 = v137[7];
  v139 = v137[9];
  v575 = v137[8];
  v576 = v139;
  v140 = v137[9];
  v577 = v137[10];
  v141 = v137[3];
  v142 = v137[5];
  v571 = v137[4];
  v572 = v142;
  v144 = v137[5];
  v143 = v137[6];
  v145 = v143;
  v574 = v137[7];
  v573 = v143;
  v146 = v137[1];
  v570[0] = *v137;
  v570[1] = v146;
  v147 = v137[2];
  v149 = *v137;
  v148 = v137[1];
  v150 = v147;
  v570[3] = v137[3];
  v570[2] = v147;
  v151 = v122[7];
  v152 = v122[9];
  v563[8] = v122[8];
  v563[9] = v152;
  v153 = v122[3];
  v154 = v122[5];
  v563[4] = v122[4];
  v563[5] = v154;
  v155 = v122[6];
  v563[7] = v151;
  v563[6] = v155;
  v156 = v122[1];
  v563[0] = *v122;
  v563[1] = v156;
  v157 = v122[2];
  v563[3] = v153;
  v563[2] = v157;
  v563[18] = v138;
  v563[19] = v575;
  v158 = v137[10];
  v563[20] = v140;
  v563[21] = v158;
  v563[14] = v141;
  v563[15] = v571;
  v563[16] = v144;
  v563[17] = v145;
  v563[10] = v122[10];
  v563[11] = v149;
  v563[12] = v148;
  v563[13] = v150;
  v578[8] = v129;
  v578[9] = v126;
  v578[10] = v122[10];
  v578[4] = v125;
  v578[5] = v130;
  v578[7] = v127;
  v578[6] = v565;
  v578[0] = v134;
  v578[1] = v135;
  v578[3] = v123;
  v578[2] = v136;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v578) == 1)
  {
    v551[8] = v563[19];
    v551[9] = v563[20];
    v551[10] = v563[21];
    v551[4] = v563[15];
    v551[5] = v563[16];
    v551[7] = v563[18];
    v551[6] = v563[17];
    v551[0] = v563[11];
    v551[1] = v563[12];
    v551[3] = v563[14];
    v551[2] = v563[13];
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v551) != 1)
    {
      sub_1CAB23A9C(v564, &v552, &qword_1EC463C00, &qword_1CAD5A7C0);
      v160 = v570;
      v161 = &v552;
      goto LABEL_84;
    }

    v560 = v563[8];
    v561 = v563[9];
    v562 = v563[10];
    v556 = v563[4];
    v557 = v563[5];
    v559 = v563[7];
    v558 = v563[6];
    v552 = v563[0];
    v553 = v563[1];
    v555 = v563[3];
    v554 = v563[2];
    sub_1CAB23A9C(v564, &v540, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB23A9C(v570, &v540, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB21B68(&v552, &qword_1EC463C00, &qword_1CAD5A7C0);
  }

  else
  {
    v560 = v563[8];
    v561 = v563[9];
    v562 = v563[10];
    v556 = v563[4];
    v557 = v563[5];
    v559 = v563[7];
    v558 = v563[6];
    v552 = v563[0];
    v553 = v563[1];
    v555 = v563[3];
    v554 = v563[2];
    v548 = v563[8];
    v549 = v563[9];
    v550 = v563[10];
    v544 = v563[4];
    v545 = v563[5];
    v547 = v563[7];
    v546 = v563[6];
    v540 = v563[0];
    v541 = v563[1];
    v543 = v563[3];
    v542 = v563[2];
    v551[8] = v563[19];
    v551[9] = v563[20];
    v551[10] = v563[21];
    v551[4] = v563[15];
    v551[5] = v563[16];
    v551[7] = v563[18];
    v551[6] = v563[17];
    v551[0] = v563[11];
    v551[1] = v563[12];
    v551[3] = v563[14];
    v551[2] = v563[13];
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v551) == 1)
    {
      v537 = v563[8];
      v538 = v563[9];
      v539 = v563[10];
      v533 = v563[4];
      v534 = v563[5];
      v536 = v563[7];
      v535 = v563[6];
      v529 = v563[0];
      v530 = v563[1];
      v532 = v563[3];
      v531 = v563[2];
      sub_1CAB23A9C(v564, &v518, &qword_1EC463C00, &qword_1CAD5A7C0);
      sub_1CAB23A9C(v570, &v518, &qword_1EC463C00, &qword_1CAD5A7C0);
      sub_1CAB23A9C(&v552, &v518, &qword_1EC463C00, &qword_1CAD5A7C0);
      v159 = &v529;
      goto LABEL_82;
    }

    v537 = v563[19];
    v538 = v563[20];
    v539 = v563[21];
    v533 = v563[15];
    v534 = v563[16];
    v536 = v563[18];
    v535 = v563[17];
    v529 = v563[11];
    v530 = v563[12];
    v532 = v563[14];
    v531 = v563[13];
    sub_1CAB23A9C(v564, &v518, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB23A9C(v570, &v518, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB23A9C(&v552, &v518, &qword_1EC463C00, &qword_1CAD5A7C0);
    v162 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(&v540, &v529);
    v515 = v537;
    v516 = v538;
    v517 = v539;
    v511 = v533;
    v512 = v534;
    v514 = v536;
    v513 = v535;
    v507 = v529;
    v508 = v530;
    v510 = v532;
    v509 = v531;
    sub_1CABD3C78(&v507);
    v526 = v548;
    v527 = v549;
    v528 = v550;
    v522 = v544;
    v523 = v545;
    v525 = v547;
    v524 = v546;
    v518 = v540;
    v519 = v541;
    v521 = v543;
    v520 = v542;
    sub_1CABD3C78(&v518);
    v537 = v563[8];
    v538 = v563[9];
    v539 = v563[10];
    v533 = v563[4];
    v534 = v563[5];
    v536 = v563[7];
    v535 = v563[6];
    v529 = v563[0];
    v530 = v563[1];
    v532 = v563[3];
    v531 = v563[2];
    sub_1CAB21B68(&v529, &qword_1EC463C00, &qword_1CAD5A7C0);
    if ((v162 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v163 = (v384 + v383[20]);
  v164 = v163[9];
  v539 = v163[10];
  v165 = v163[7];
  v166 = v163[8];
  v167 = v166;
  v538 = v163[9];
  v537 = v166;
  v168 = v163[5];
  v169 = v163[7];
  v535 = v163[6];
  v536 = v169;
  v170 = v163[3];
  v171 = v163[4];
  v172 = v171;
  v534 = v163[5];
  v533 = v171;
  v173 = v163[1];
  v529 = *v163;
  v530 = v173;
  v174 = v163[2];
  v175 = *v163;
  v176 = v163[1];
  v177 = v174;
  v532 = v163[3];
  v531 = v174;
  v178 = (v387 + v383[20]);
  v179 = v178[7];
  v180 = v178[9];
  v548 = v178[8];
  v549 = v180;
  v181 = v178[9];
  v550 = v178[10];
  v182 = v178[3];
  v183 = v178[5];
  v544 = v178[4];
  v545 = v183;
  v185 = v178[5];
  v184 = v178[6];
  v186 = v184;
  v547 = v178[7];
  v546 = v184;
  v187 = v178[1];
  v540 = *v178;
  v541 = v187;
  v188 = v178[2];
  v190 = *v178;
  v189 = v178[1];
  v191 = v188;
  v543 = v178[3];
  v542 = v188;
  v192 = v163[7];
  v193 = v163[9];
  v563[8] = v163[8];
  v563[9] = v193;
  v194 = v163[3];
  v195 = v163[5];
  v563[4] = v163[4];
  v563[5] = v195;
  v196 = v163[6];
  v563[7] = v192;
  v563[6] = v196;
  v197 = v163[1];
  v563[0] = *v163;
  v563[1] = v197;
  v198 = v163[2];
  v563[3] = v194;
  v563[2] = v198;
  v563[18] = v179;
  v563[19] = v548;
  v199 = v178[10];
  v563[20] = v181;
  v563[21] = v199;
  v563[14] = v182;
  v563[15] = v544;
  v563[16] = v185;
  v563[17] = v186;
  v563[10] = v163[10];
  v563[11] = v190;
  v563[12] = v189;
  v563[13] = v191;
  v560 = v167;
  v561 = v164;
  v562 = v163[10];
  v556 = v172;
  v557 = v168;
  v559 = v165;
  v558 = v535;
  v552 = v175;
  v553 = v176;
  v555 = v170;
  v554 = v177;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v552) != 1)
  {
    v526 = v563[8];
    v527 = v563[9];
    v528 = v563[10];
    v522 = v563[4];
    v523 = v563[5];
    v525 = v563[7];
    v524 = v563[6];
    v518 = v563[0];
    v519 = v563[1];
    v521 = v563[3];
    v520 = v563[2];
    v515 = v563[8];
    v516 = v563[9];
    v517 = v563[10];
    v511 = v563[4];
    v512 = v563[5];
    v514 = v563[7];
    v513 = v563[6];
    v507 = v563[0];
    v508 = v563[1];
    v510 = v563[3];
    v509 = v563[2];
    v551[8] = v563[19];
    v551[9] = v563[20];
    v551[10] = v563[21];
    v551[4] = v563[15];
    v551[5] = v563[16];
    v551[7] = v563[18];
    v551[6] = v563[17];
    v551[0] = v563[11];
    v551[1] = v563[12];
    v551[3] = v563[14];
    v551[2] = v563[13];
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v551) != 1)
    {
      v504 = v563[19];
      v505 = v563[20];
      v506 = v563[21];
      v500 = v563[15];
      v501 = v563[16];
      v503 = v563[18];
      v502 = v563[17];
      v496 = v563[11];
      v497 = v563[12];
      v499 = v563[14];
      v498 = v563[13];
      sub_1CAB23A9C(&v529, &v485, &qword_1EC463C00, &qword_1CAD5A7C0);
      sub_1CAB23A9C(&v540, &v485, &qword_1EC463C00, &qword_1CAD5A7C0);
      sub_1CAB23A9C(&v518, &v485, &qword_1EC463C00, &qword_1CAD5A7C0);
      v200 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(&v507, &v496);
      v482 = v504;
      v483 = v505;
      v484 = v506;
      v478 = v500;
      v479 = v501;
      v481 = v503;
      v480 = v502;
      v474 = v496;
      v475 = v497;
      v477 = v499;
      v476 = v498;
      sub_1CABD3C78(&v474);
      v493 = v515;
      v494 = v516;
      v495 = v517;
      v489 = v511;
      v490 = v512;
      v492 = v514;
      v491 = v513;
      v485 = v507;
      v486 = v508;
      v488 = v510;
      v487 = v509;
      sub_1CABD3C78(&v485);
      v504 = v563[8];
      v505 = v563[9];
      v506 = v563[10];
      v500 = v563[4];
      v501 = v563[5];
      v503 = v563[7];
      v502 = v563[6];
      v496 = v563[0];
      v497 = v563[1];
      v499 = v563[3];
      v498 = v563[2];
      sub_1CAB21B68(&v496, &qword_1EC463C00, &qword_1CAD5A7C0);
      if ((v200 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_77;
    }

    v504 = v563[8];
    v505 = v563[9];
    v506 = v563[10];
    v500 = v563[4];
    v501 = v563[5];
    v503 = v563[7];
    v502 = v563[6];
    v496 = v563[0];
    v497 = v563[1];
    v499 = v563[3];
    v498 = v563[2];
    sub_1CAB23A9C(&v529, &v485, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB23A9C(&v540, &v485, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB23A9C(&v518, &v485, &qword_1EC463C00, &qword_1CAD5A7C0);
    v159 = &v496;
LABEL_82:
    sub_1CABD3C78(v159);
LABEL_85:
    memcpy(v551, v563, sizeof(v551));
    sub_1CAB21B68(v551, &qword_1EC467A00, &qword_1CAD686B0);
    goto LABEL_30;
  }

  v551[8] = v563[19];
  v551[9] = v563[20];
  v551[10] = v563[21];
  v551[4] = v563[15];
  v551[5] = v563[16];
  v551[7] = v563[18];
  v551[6] = v563[17];
  v551[0] = v563[11];
  v551[1] = v563[12];
  v551[3] = v563[14];
  v551[2] = v563[13];
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v551) != 1)
  {
    sub_1CAB23A9C(&v529, &v518, &qword_1EC463C00, &qword_1CAD5A7C0);
    v160 = &v540;
    v161 = &v518;
    goto LABEL_84;
  }

  v526 = v563[8];
  v527 = v563[9];
  v528 = v563[10];
  v522 = v563[4];
  v523 = v563[5];
  v525 = v563[7];
  v524 = v563[6];
  v518 = v563[0];
  v519 = v563[1];
  v521 = v563[3];
  v520 = v563[2];
  sub_1CAB23A9C(&v529, &v507, &qword_1EC463C00, &qword_1CAD5A7C0);
  sub_1CAB23A9C(&v540, &v507, &qword_1EC463C00, &qword_1CAD5A7C0);
  sub_1CAB21B68(&v518, &qword_1EC463C00, &qword_1CAD5A7C0);
LABEL_77:
  v201 = (v384 + v383[21]);
  v202 = v201[9];
  v506 = v201[10];
  v203 = v201[7];
  v204 = v201[8];
  v205 = v204;
  v505 = v201[9];
  v504 = v204;
  v206 = v201[5];
  v207 = v201[7];
  v502 = v201[6];
  v503 = v207;
  v208 = v201[3];
  v209 = v201[4];
  v210 = v209;
  v501 = v201[5];
  v500 = v209;
  v211 = v201[1];
  v496 = *v201;
  v497 = v211;
  v212 = v201[2];
  v213 = *v201;
  v214 = v201[1];
  v215 = v212;
  v499 = v201[3];
  v498 = v212;
  v216 = (v387 + v383[21]);
  v217 = v216[7];
  v218 = v216[9];
  v515 = v216[8];
  v516 = v218;
  v219 = v216[9];
  v517 = v216[10];
  v220 = v216[3];
  v221 = v216[5];
  v511 = v216[4];
  v512 = v221;
  v223 = v216[5];
  v222 = v216[6];
  v224 = v222;
  v514 = v216[7];
  v513 = v222;
  v225 = v216[1];
  v507 = *v216;
  v508 = v225;
  v226 = v216[2];
  v228 = *v216;
  v227 = v216[1];
  v229 = v226;
  v510 = v216[3];
  v509 = v226;
  v230 = v201[7];
  v231 = v201[9];
  v563[8] = v201[8];
  v563[9] = v231;
  v232 = v201[3];
  v233 = v201[5];
  v563[4] = v201[4];
  v563[5] = v233;
  v234 = v201[6];
  v563[7] = v230;
  v563[6] = v234;
  v235 = v201[1];
  v563[0] = *v201;
  v563[1] = v235;
  v236 = v201[2];
  v563[3] = v232;
  v563[2] = v236;
  v563[18] = v217;
  v563[19] = v515;
  v237 = v216[10];
  v563[20] = v219;
  v563[21] = v237;
  v563[14] = v220;
  v563[15] = v511;
  v563[16] = v223;
  v563[17] = v224;
  v563[10] = v201[10];
  v563[11] = v228;
  v563[12] = v227;
  v563[13] = v229;
  v526 = v205;
  v527 = v202;
  v528 = v201[10];
  v522 = v210;
  v523 = v206;
  v525 = v203;
  v524 = v502;
  v518 = v213;
  v519 = v214;
  v521 = v208;
  v520 = v215;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v518) == 1)
  {
    v551[8] = v563[19];
    v551[9] = v563[20];
    v551[10] = v563[21];
    v551[4] = v563[15];
    v551[5] = v563[16];
    v551[7] = v563[18];
    v551[6] = v563[17];
    v551[0] = v563[11];
    v551[1] = v563[12];
    v551[3] = v563[14];
    v551[2] = v563[13];
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v551) == 1)
    {
      v493 = v563[8];
      v494 = v563[9];
      v495 = v563[10];
      v489 = v563[4];
      v490 = v563[5];
      v492 = v563[7];
      v491 = v563[6];
      v485 = v563[0];
      v486 = v563[1];
      v488 = v563[3];
      v487 = v563[2];
      sub_1CAB23A9C(&v496, &v474, &qword_1EC463C00, &qword_1CAD5A7C0);
      sub_1CAB23A9C(&v507, &v474, &qword_1EC463C00, &qword_1CAD5A7C0);
      sub_1CAB21B68(&v485, &qword_1EC463C00, &qword_1CAD5A7C0);
      goto LABEL_87;
    }

    sub_1CAB23A9C(&v496, &v485, &qword_1EC463C00, &qword_1CAD5A7C0);
    v160 = &v507;
    v161 = &v485;
LABEL_84:
    sub_1CAB23A9C(v160, v161, &qword_1EC463C00, &qword_1CAD5A7C0);
    goto LABEL_85;
  }

  v493 = v563[8];
  v494 = v563[9];
  v495 = v563[10];
  v489 = v563[4];
  v490 = v563[5];
  v492 = v563[7];
  v491 = v563[6];
  v485 = v563[0];
  v486 = v563[1];
  v488 = v563[3];
  v487 = v563[2];
  v482 = v563[8];
  v483 = v563[9];
  v484 = v563[10];
  v478 = v563[4];
  v479 = v563[5];
  v481 = v563[7];
  v480 = v563[6];
  v474 = v563[0];
  v475 = v563[1];
  v477 = v563[3];
  v476 = v563[2];
  v551[8] = v563[19];
  v551[9] = v563[20];
  v551[10] = v563[21];
  v551[4] = v563[15];
  v551[5] = v563[16];
  v551[7] = v563[18];
  v551[6] = v563[17];
  v551[0] = v563[11];
  v551[1] = v563[12];
  v551[3] = v563[14];
  v551[2] = v563[13];
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v551) == 1)
  {
    v471 = v563[8];
    v472 = v563[9];
    v473 = v563[10];
    v467 = v563[4];
    v468 = v563[5];
    v470 = v563[7];
    v469 = v563[6];
    v463 = v563[0];
    v464 = v563[1];
    v466 = v563[3];
    v465 = v563[2];
    sub_1CAB23A9C(&v496, &v452, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB23A9C(&v507, &v452, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB23A9C(&v485, &v452, &qword_1EC463C00, &qword_1CAD5A7C0);
    v159 = &v463;
    goto LABEL_82;
  }

  v471 = v563[19];
  v472 = v563[20];
  v473 = v563[21];
  v467 = v563[15];
  v468 = v563[16];
  v470 = v563[18];
  v469 = v563[17];
  v463 = v563[11];
  v464 = v563[12];
  v466 = v563[14];
  v465 = v563[13];
  sub_1CAB23A9C(&v496, &v452, &qword_1EC463C00, &qword_1CAD5A7C0);
  sub_1CAB23A9C(&v507, &v452, &qword_1EC463C00, &qword_1CAD5A7C0);
  sub_1CAB23A9C(&v485, &v452, &qword_1EC463C00, &qword_1CAD5A7C0);
  v238 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(&v474, &v463);
  v449 = v471;
  v450 = v472;
  v451 = v473;
  v445 = v467;
  v446 = v468;
  v447 = v469;
  v448 = v470;
  v441 = v463;
  v442 = v464;
  v443 = v465;
  v444 = v466;
  sub_1CABD3C78(&v441);
  v460 = v482;
  v461 = v483;
  v462 = v484;
  v456 = v478;
  v457 = v479;
  v459 = v481;
  v458 = v480;
  v452 = v474;
  v453 = v475;
  v455 = v477;
  v454 = v476;
  sub_1CABD3C78(&v452);
  v471 = v563[8];
  v472 = v563[9];
  v473 = v563[10];
  v467 = v563[4];
  v468 = v563[5];
  v470 = v563[7];
  v469 = v563[6];
  v463 = v563[0];
  v464 = v563[1];
  v466 = v563[3];
  v465 = v563[2];
  sub_1CAB21B68(&v463, &qword_1EC463C00, &qword_1CAD5A7C0);
  if ((v238 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_87:
  if (*(v384 + v383[22]) != *(v387 + v383[22]))
  {
    goto LABEL_30;
  }

  v239 = (v384 + v383[23]);
  v240 = v239[9];
  v473 = v239[10];
  v241 = v239[7];
  v242 = v239[8];
  v243 = v242;
  v472 = v239[9];
  v471 = v242;
  v244 = v239[5];
  v245 = v239[7];
  v469 = v239[6];
  v470 = v245;
  v246 = v239[3];
  v247 = v239[4];
  v248 = v247;
  v468 = v239[5];
  v467 = v247;
  v249 = v239[1];
  v463 = *v239;
  v464 = v249;
  v250 = v239[2];
  v251 = *v239;
  v252 = v239[1];
  v253 = v250;
  v466 = v239[3];
  v465 = v250;
  v254 = (v387 + v383[23]);
  v255 = v254[7];
  v256 = v254[9];
  v482 = v254[8];
  v483 = v256;
  v257 = v254[9];
  v484 = v254[10];
  v258 = v254[3];
  v259 = v254[5];
  v478 = v254[4];
  v479 = v259;
  v261 = v254[5];
  v260 = v254[6];
  v262 = v260;
  v481 = v254[7];
  v480 = v260;
  v263 = v254[1];
  v474 = *v254;
  v475 = v263;
  v264 = v254[2];
  v266 = *v254;
  v265 = v254[1];
  v267 = v264;
  v477 = v254[3];
  v476 = v264;
  v268 = v239[7];
  v269 = v239[9];
  v563[8] = v239[8];
  v563[9] = v269;
  v270 = v239[3];
  v271 = v239[5];
  v563[4] = v239[4];
  v563[5] = v271;
  v272 = v239[6];
  v563[7] = v268;
  v563[6] = v272;
  v273 = v239[1];
  v563[0] = *v239;
  v563[1] = v273;
  v274 = v239[2];
  v563[3] = v270;
  v563[2] = v274;
  v563[18] = v255;
  v563[19] = v482;
  v275 = v254[10];
  v563[20] = v257;
  v563[21] = v275;
  v563[14] = v258;
  v563[15] = v478;
  v563[16] = v261;
  v563[17] = v262;
  v563[10] = v239[10];
  v563[11] = v266;
  v563[12] = v265;
  v563[13] = v267;
  v493 = v243;
  v494 = v240;
  v495 = v239[10];
  v489 = v248;
  v490 = v244;
  v492 = v241;
  v491 = v469;
  v485 = v251;
  v486 = v252;
  v488 = v246;
  v487 = v253;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v485) == 1)
  {
    v551[8] = v563[19];
    v551[9] = v563[20];
    v551[10] = v563[21];
    v551[4] = v563[15];
    v551[5] = v563[16];
    v551[7] = v563[18];
    v551[6] = v563[17];
    v551[0] = v563[11];
    v551[1] = v563[12];
    v551[3] = v563[14];
    v551[2] = v563[13];
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v551) == 1)
    {
      v460 = v563[8];
      v461 = v563[9];
      v462 = v563[10];
      v456 = v563[4];
      v457 = v563[5];
      v459 = v563[7];
      v458 = v563[6];
      v452 = v563[0];
      v453 = v563[1];
      v455 = v563[3];
      v454 = v563[2];
      sub_1CAB23A9C(&v463, &v441, &qword_1EC463C00, &qword_1CAD5A7C0);
      sub_1CAB23A9C(&v474, &v441, &qword_1EC463C00, &qword_1CAD5A7C0);
      sub_1CAB21B68(&v452, &qword_1EC463C00, &qword_1CAD5A7C0);
      goto LABEL_95;
    }

    sub_1CAB23A9C(&v463, &v452, &qword_1EC463C00, &qword_1CAD5A7C0);
    v160 = &v474;
    v161 = &v452;
    goto LABEL_84;
  }

  v460 = v563[8];
  v461 = v563[9];
  v462 = v563[10];
  v456 = v563[4];
  v457 = v563[5];
  v459 = v563[7];
  v458 = v563[6];
  v452 = v563[0];
  v453 = v563[1];
  v455 = v563[3];
  v454 = v563[2];
  v449 = v563[8];
  v450 = v563[9];
  v451 = v563[10];
  v445 = v563[4];
  v446 = v563[5];
  v447 = v563[6];
  v448 = v563[7];
  v441 = v563[0];
  v442 = v563[1];
  v443 = v563[2];
  v444 = v563[3];
  v551[8] = v563[19];
  v551[9] = v563[20];
  v551[10] = v563[21];
  v551[4] = v563[15];
  v551[5] = v563[16];
  v551[7] = v563[18];
  v551[6] = v563[17];
  v551[0] = v563[11];
  v551[1] = v563[12];
  v551[3] = v563[14];
  v551[2] = v563[13];
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v551) == 1)
  {
    v438 = v563[8];
    v439 = v563[9];
    v440 = v563[10];
    v434 = v563[4];
    v435 = v563[5];
    v436 = v563[6];
    v437 = v563[7];
    v430 = v563[0];
    v431 = v563[1];
    v432 = v563[2];
    v433 = v563[3];
    sub_1CAB23A9C(&v463, v429, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB23A9C(&v474, v429, &qword_1EC463C00, &qword_1CAD5A7C0);
    sub_1CAB23A9C(&v452, v429, &qword_1EC463C00, &qword_1CAD5A7C0);
    v159 = &v430;
    goto LABEL_82;
  }

  v438 = v563[19];
  v439 = v563[20];
  v440 = v563[21];
  v434 = v563[15];
  v435 = v563[16];
  v436 = v563[17];
  v437 = v563[18];
  v430 = v563[11];
  v431 = v563[12];
  v432 = v563[13];
  v433 = v563[14];
  sub_1CAB23A9C(&v463, v429, &qword_1EC463C00, &qword_1CAD5A7C0);
  sub_1CAB23A9C(&v474, v429, &qword_1EC463C00, &qword_1CAD5A7C0);
  sub_1CAB23A9C(&v452, v429, &qword_1EC463C00, &qword_1CAD5A7C0);
  v276 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(&v441, &v430);
  v428[8] = v438;
  v428[9] = v439;
  v428[10] = v440;
  v428[4] = v434;
  v428[5] = v435;
  v428[6] = v436;
  v428[7] = v437;
  v428[0] = v430;
  v428[1] = v431;
  v428[2] = v432;
  v428[3] = v433;
  sub_1CABD3C78(v428);
  v429[8] = v449;
  v429[9] = v450;
  v429[10] = v451;
  v429[4] = v445;
  v429[5] = v446;
  v429[6] = v447;
  v429[7] = v448;
  v429[0] = v441;
  v429[1] = v442;
  v429[2] = v443;
  v429[3] = v444;
  sub_1CABD3C78(v429);
  v438 = v563[8];
  v439 = v563[9];
  v440 = v563[10];
  v434 = v563[4];
  v435 = v563[5];
  v436 = v563[6];
  v437 = v563[7];
  v430 = v563[0];
  v431 = v563[1];
  v432 = v563[2];
  v433 = v563[3];
  sub_1CAB21B68(&v430, &qword_1EC463C00, &qword_1CAD5A7C0);
  if ((v276 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_95:
  if (*(v384 + v383[24]) != *(v387 + v383[24]) || *(v384 + v383[25]) != *(v387 + v383[25]))
  {
    goto LABEL_30;
  }

  v277 = v383[26];
  v278 = *(v388 + 48);
  v279 = v392;
  sub_1CAB23A9C(v384 + v277, v392, &qword_1EC464020, &qword_1CAD5E370);
  sub_1CAB23A9C(v387 + v277, &v279[v278], &qword_1EC464020, &qword_1CAD5E370);
  v280 = *(v389 + 48);
  if (v280(v279, 1, v391) == 1)
  {
    if (v280(&v392[v278], 1, v391) == 1)
    {
      sub_1CAB21B68(v392, &qword_1EC464020, &qword_1CAD5E370);
      goto LABEL_104;
    }

LABEL_102:
    sub_1CAB21B68(v392, &qword_1EC468378, &qword_1CAD699F0);
    goto LABEL_30;
  }

  v281 = v392;
  sub_1CAB23A9C(v392, v390, &qword_1EC464020, &qword_1CAD5E370);
  if (v280(&v281[v278], 1, v391) == 1)
  {
    sub_1CAD2DF04(v390, type metadata accessor for EventCalendarModelObject);
    goto LABEL_102;
  }

  v282 = v392;
  v283 = &v392[v278];
  v284 = v393;
  sub_1CAD2E6A8(v283, v393, type metadata accessor for EventCalendarModelObject);
  v285 = v390;
  v286 = static EventCalendarModelObject.== infix(_:_:)();
  sub_1CAD2DF04(v284, type metadata accessor for EventCalendarModelObject);
  sub_1CAD2DF04(v285, type metadata accessor for EventCalendarModelObject);
  sub_1CAB21B68(v282, &qword_1EC464020, &qword_1CAD5E370);
  if ((v286 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_104:
  if (*(v384 + v383[27]) != *(v387 + v383[27]) || *(v384 + v383[28]) != *(v387 + v383[28]))
  {
    goto LABEL_30;
  }

  v287 = v383[29];
  v288 = *(v384 + v287);
  v289 = *(v387 + v287);
  if (v288)
  {
    if (!v289)
    {
      goto LABEL_30;
    }

    v290 = sub_1CACA81C0(v288, v289);

    if ((v290 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v289)
  {
    goto LABEL_30;
  }

  v291 = v383[30];
  v292 = (v384 + v291);
  v293 = *(v384 + v291 + 8);
  v294 = (v387 + v291);
  v295 = v294[1];
  if (v293)
  {
    if (!v295 || (*v292 != *v294 || v293 != v295) && (sub_1CAD4E9E4() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v295)
  {
    goto LABEL_30;
  }

  if (*(v384 + v383[31]) != *(v387 + v383[31]))
  {
    goto LABEL_30;
  }

  v296 = v383[32];
  v297 = *(v394 + 48);
  v298 = v396;
  sub_1CAB23A9C(v384 + v296, v396, &unk_1EC465A70, &unk_1CAD61F00);
  sub_1CAB23A9C(v387 + v296, &v298[v297], &unk_1EC465A70, &unk_1CAD61F00);
  v299 = *(v398 + 48);
  if (v299(v298, 1, v399) == 1)
  {
    if (v299(&v396[v297], 1, v399) == 1)
    {
      sub_1CAB21B68(v396, &unk_1EC465A70, &unk_1CAD61F00);
      goto LABEL_126;
    }

LABEL_124:
    sub_1CAB21B68(v396, &qword_1EC464E40, &unk_1CAD5E380);
    goto LABEL_30;
  }

  v300 = v396;
  sub_1CAB23A9C(v396, v395, &unk_1EC465A70, &unk_1CAD61F00);
  if (v299(&v300[v297], 1, v399) == 1)
  {
    (*(v398 + 8))(v395, v399);
    goto LABEL_124;
  }

  v302 = v397;
  v301 = v398;
  v303 = v396;
  v304 = &v396[v297];
  v305 = v399;
  (*(v398 + 32))(v397, v304, v399);
  sub_1CAD2FEA4(&unk_1EC465A80, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v306 = v395;
  v307 = sub_1CAD4DED4();
  v308 = *(v301 + 8);
  v308(v302, v305);
  v308(v306, v305);
  sub_1CAB21B68(v303, &unk_1EC465A70, &unk_1CAD61F00);
  if ((v307 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_126:
  v309 = v383[33];
  v310 = *(v384 + v309);
  v311 = *(v387 + v309);
  if (v310)
  {
    if (!v311)
    {
      goto LABEL_30;
    }

    v312 = sub_1CACA87C8(v310, v311);

    if ((v312 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v311)
  {
    goto LABEL_30;
  }

  v313 = v383[34];
  v314 = *(v400 + 48);
  v315 = v404;
  sub_1CAB23A9C(v384 + v313, v404, &qword_1EC465AC0, &qword_1CAD5E3D0);
  sub_1CAB23A9C(v387 + v313, &v315[v314], &qword_1EC465AC0, &qword_1CAD5E3D0);
  v316 = *(v401 + 48);
  if (v316(v315, 1, v403) == 1)
  {
    if (v316(&v404[v314], 1, v403) == 1)
    {
      sub_1CAB21B68(v404, &qword_1EC465AC0, &qword_1CAD5E3D0);
      goto LABEL_138;
    }

LABEL_136:
    sub_1CAB21B68(v404, &qword_1EC468370, &unk_1CAD699E0);
    goto LABEL_30;
  }

  v317 = v404;
  sub_1CAB23A9C(v404, v402, &qword_1EC465AC0, &qword_1CAD5E3D0);
  if (v316(&v317[v314], 1, v403) == 1)
  {
    sub_1CAD2DF04(v402, type metadata accessor for EventOrganizerModelObject);
    goto LABEL_136;
  }

  v318 = v404;
  v319 = &v404[v314];
  v320 = v405;
  sub_1CAD2E6A8(v319, v405, type metadata accessor for EventOrganizerModelObject);
  v321 = v402;
  v322 = _s13CalendarUIKit25EventOrganizerModelObjectV2eeoiySbAC_ACtFZ_0(v402, v320);
  sub_1CAD2DF04(v320, type metadata accessor for EventOrganizerModelObject);
  sub_1CAD2DF04(v321, type metadata accessor for EventOrganizerModelObject);
  sub_1CAB21B68(v318, &qword_1EC465AC0, &qword_1CAD5E3D0);
  if (!v322)
  {
    goto LABEL_30;
  }

LABEL_138:
  v323 = v383[35];
  v324 = *(v384 + v323);
  v325 = *(v387 + v323);
  if (v324)
  {
    if (!v325)
    {
      goto LABEL_30;
    }

    v326 = sub_1CACA881C(v324, v325);

    if ((v326 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v325)
  {
    goto LABEL_30;
  }

  v327 = v383[36];
  v328 = *(v406 + 48);
  v329 = v410;
  sub_1CAB23A9C(v384 + v327, v410, &qword_1EC464E38, &unk_1CAD5E360);
  sub_1CAB23A9C(v387 + v327, &v329[v328], &qword_1EC464E38, &unk_1CAD5E360);
  v330 = *(v407 + 48);
  if (v330(v329, 1, v409) == 1)
  {
    if (v330(&v410[v328], 1, v409) == 1)
    {
      sub_1CAB21B68(v410, &qword_1EC464E38, &unk_1CAD5E360);
      goto LABEL_150;
    }

LABEL_148:
    sub_1CAB21B68(v410, &qword_1EC468368, &qword_1CAD699D8);
    goto LABEL_30;
  }

  v331 = v410;
  sub_1CAB23A9C(v410, v408, &qword_1EC464E38, &unk_1CAD5E360);
  if (v330(&v331[v328], 1, v409) == 1)
  {
    sub_1CAD2DF04(v408, type metadata accessor for EventAttendeeModelObject);
    goto LABEL_148;
  }

  v332 = v410;
  v333 = &v410[v328];
  v334 = v386;
  sub_1CAD2E6A8(v333, v386, type metadata accessor for EventAttendeeModelObject);
  v335 = v408;
  v336 = static EventAttendeeModelObject.== infix(_:_:)();
  sub_1CAD2DF04(v334, type metadata accessor for EventAttendeeModelObject);
  sub_1CAD2DF04(v335, type metadata accessor for EventAttendeeModelObject);
  sub_1CAB21B68(v332, &qword_1EC464E38, &unk_1CAD5E360);
  if ((v336 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_150:
  v337 = v383[37];
  v338 = v412;
  v339 = *(v413 + 48);
  sub_1CAB23A9C(v384 + v337, v412, &qword_1EC465450, &qword_1CAD5A1B0);
  sub_1CAB23A9C(v387 + v337, &v338[v339], &qword_1EC465450, &qword_1CAD5A1B0);
  v340 = *(v417 + 48);
  if (v340(v338, 1, v418) == 1)
  {
    if (v340(&v412[v339], 1, v418) == 1)
    {
      sub_1CAB21B68(v412, &qword_1EC465450, &qword_1CAD5A1B0);
      goto LABEL_157;
    }

LABEL_155:
    sub_1CAB21B68(v412, &qword_1EC463DA0, &qword_1CAD5B350);
    goto LABEL_30;
  }

  v341 = v412;
  sub_1CAB23A9C(v412, v411, &qword_1EC465450, &qword_1CAD5A1B0);
  if (v340(&v341[v339], 1, v418) == 1)
  {
    (*(v417 + 8))(v411, v418);
    goto LABEL_155;
  }

  v343 = v416;
  v342 = v417;
  v344 = v412;
  v345 = v418;
  (*(v417 + 32))(v416, &v412[v339], v418);
  sub_1CAD2FEA4(&qword_1EC463DA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v346 = v411;
  v347 = sub_1CAD4DED4();
  v348 = *(v342 + 8);
  v348(v343, v345);
  v348(v346, v345);
  sub_1CAB21B68(v344, &qword_1EC465450, &qword_1CAD5A1B0);
  if ((v347 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_157:
  if (*(v384 + v383[38]) != *(v387 + v383[38]) || (sub_1CACA8A10(*(v384 + v383[39]), *(v387 + v383[39])) & 1) == 0 || *(v384 + v383[40]) != *(v387 + v383[40]))
  {
    goto LABEL_30;
  }

  v349 = v383[41];
  v350 = *(v413 + 48);
  v351 = v415;
  sub_1CAB23A9C(v384 + v349, v415, &qword_1EC465450, &qword_1CAD5A1B0);
  sub_1CAB23A9C(v387 + v349, &v351[v350], &qword_1EC465450, &qword_1CAD5A1B0);
  if (v340(v351, 1, v418) == 1)
  {
    if (v340(&v415[v350], 1, v418) == 1)
    {
      sub_1CAB21B68(v415, &qword_1EC465450, &qword_1CAD5A1B0);
      goto LABEL_167;
    }

LABEL_165:
    sub_1CAB21B68(v415, &qword_1EC463DA0, &qword_1CAD5B350);
    goto LABEL_30;
  }

  v352 = v415;
  sub_1CAB23A9C(v415, v414, &qword_1EC465450, &qword_1CAD5A1B0);
  if (v340(&v352[v350], 1, v418) == 1)
  {
    (*(v417 + 8))(v414, v418);
    goto LABEL_165;
  }

  v354 = v417;
  v353 = v418;
  v355 = v415;
  v356 = &v415[v350];
  v357 = v416;
  (*(v417 + 32))(v416, v356, v418);
  sub_1CAD2FEA4(&qword_1EC463DA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v358 = v414;
  v359 = sub_1CAD4DED4();
  v360 = *(v354 + 8);
  v360(v357, v353);
  v360(v358, v353);
  sub_1CAB21B68(v355, &qword_1EC465450, &qword_1CAD5A1B0);
  if ((v359 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_167:
  v361 = v383[42];
  v363 = *(v384 + v361);
  v362 = *(v384 + v361 + 8);
  v365 = *(v384 + v361 + 16);
  v364 = *(v384 + v361 + 24);
  v367 = *(v384 + v361 + 32);
  v366 = *(v384 + v361 + 40);
  v368 = *(v384 + v361 + 48);
  v369 = (v387 + v361);
  v371 = *v369;
  v370 = v369[1];
  v372 = v369[2];
  v424 = v369[3];
  v425 = v370;
  v373 = v369[5];
  *&v426 = v369[4];
  *(&v426 + 1) = v373;
  v427 = v369[6];
  if (v365 != 1)
  {
    *&v563[0] = v363;
    *(&v563[0] + 1) = v362;
    *&v563[1] = v365;
    *(&v563[1] + 1) = v364;
    *&v563[2] = v367;
    *(&v563[2] + 1) = v366;
    *&v563[3] = v368;
    if (v372 != 1)
    {
      v421 = v371;
      LOBYTE(v551[0]) = v371 & 1;
      v374 = v424;
      *(&v551[0] + 1) = v425;
      *&v551[1] = v372;
      *(&v551[1] + 1) = v424;
      v551[2] = v426;
      *&v551[3] = v427;
      sub_1CAD2A458(v363, v362, v365, v364, v367, v366, v368);
      sub_1CAD2A458(v421, v425, v372, v374, v426, *(&v426 + 1), v427);
      v375 = v363;
      sub_1CAD2A458(v363, v362, v365, v364, v367, v366, v368);
      LODWORD(v427) = _s13CalendarUIKit27EventIntegrationModelObjectV2eeoiySbAC_ACtFZ_0(v563, v551);
      v376 = *(&v551[1] + 1);
      v377 = *&v551[2];
      *&v426 = *&v551[3];
      *(&v426 + 1) = *(&v551[2] + 1);

      sub_1CAC3C300(v376, v377, *(&v426 + 1), v426);
      v378 = *(&v563[1] + 1);
      v379 = *&v563[2];
      *&v426 = *&v563[3];
      *(&v426 + 1) = *(&v563[2] + 1);

      sub_1CAC3C300(v378, v379, *(&v426 + 1), v426);
      sub_1CAC80A24(v375, v362, v365, v364, v367, v366, v368);
      if ((v427 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_175;
    }

    v422 = v362;
    v423 = v363;
    sub_1CAD2A458(v363, v362, v365, v364, v367, v366, v368);
    sub_1CAD2A458(v371, v425, 1, v424, v426, *(&v426 + 1), v427);
    sub_1CAD2A458(v423, v422, v365, v364, v367, v366, v368);

    sub_1CAC3C300(v364, v367, v366, v368);
LABEL_173:
    sub_1CAC80A24(v363, v362, v365, v364, v367, v366, v368);
    sub_1CAC80A24(v371, v425, v372, v424, v426, *(&v426 + 1), v427);
    goto LABEL_30;
  }

  sub_1CAD2A458(v363, v362, 1, v364, v367, v366, v368);
  if (v372 != 1)
  {
    sub_1CAD2A458(v371, v425, v372, v424, v426, *(&v426 + 1), v427);
    goto LABEL_173;
  }

  sub_1CAD2A458(v371, v425, 1, v424, v426, *(&v426 + 1), v427);
  sub_1CAC80A24(v363, v362, 1, v364, v367, v366, v368);
LABEL_175:
  if (*(v384 + v383[43]) == *(v387 + v383[43]) && *(v384 + v383[44]) == *(v387 + v383[44]))
  {
    v87 = *(v384 + v383[45]) ^ *(v387 + v383[45]) ^ 1;
    return v87 & 1;
  }

LABEL_30:
  v87 = 0;
  return v87 & 1;
}

uint64_t sub_1CAD2DF04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CAD2DF64()
{
  result = qword_1EC4681D0;
  if (!qword_1EC4681D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4681D0);
  }

  return result;
}

unint64_t sub_1CAD2DFB8()
{
  result = qword_1EC4681E8;
  if (!qword_1EC4681E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4681E8);
  }

  return result;
}

unint64_t sub_1CAD2E00C()
{
  result = qword_1EC468218;
  if (!qword_1EC468218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468210, &qword_1CAD69398);
    sub_1CAD2FEA4(&qword_1EC468220, type metadata accessor for EventAlarmModelObject, &protocol conformance descriptor for EventAlarmModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468218);
  }

  return result;
}

unint64_t sub_1CAD2E0C0()
{
  result = qword_1EC468238;
  if (!qword_1EC468238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468230, &qword_1CAD693A0);
    sub_1CAD2FEA4(&qword_1EC468240, type metadata accessor for EventRecurrenceRuleModelObject, &protocol conformance descriptor for EventRecurrenceRuleModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468238);
  }

  return result;
}

unint64_t sub_1CAD2E174()
{
  result = qword_1EC468258;
  if (!qword_1EC468258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468250, &qword_1CAD693A8);
    sub_1CAD2FEA4(&qword_1EC468260, type metadata accessor for EventAttendeeModelObject, &protocol conformance descriptor for EventAttendeeModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468258);
  }

  return result;
}

unint64_t sub_1CAD2E228()
{
  result = qword_1EC468268;
  if (!qword_1EC468268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466828, &qword_1CAD693B0);
    sub_1CAD2FEA4(&qword_1EC468270, type metadata accessor for EventAttachmentModelObject, &protocol conformance descriptor for EventAttachmentModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468268);
  }

  return result;
}

unint64_t sub_1CAD2E2DC()
{
  result = qword_1EC468278;
  if (!qword_1EC468278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468278);
  }

  return result;
}

unint64_t sub_1CAD2E330()
{
  result = qword_1EC468298;
  if (!qword_1EC468298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468298);
  }

  return result;
}

unint64_t sub_1CAD2E384()
{
  result = qword_1EC4682C0;
  if (!qword_1EC4682C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468210, &qword_1CAD69398);
    sub_1CAD2FEA4(&qword_1EC4682C8, type metadata accessor for EventAlarmModelObject, &protocol conformance descriptor for EventAlarmModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4682C0);
  }

  return result;
}

unint64_t sub_1CAD2E438()
{
  result = qword_1EC4682D8;
  if (!qword_1EC4682D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468230, &qword_1CAD693A0);
    sub_1CAD2FEA4(&qword_1EC4682E0, type metadata accessor for EventRecurrenceRuleModelObject, &protocol conformance descriptor for EventRecurrenceRuleModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4682D8);
  }

  return result;
}

unint64_t sub_1CAD2E4EC()
{
  result = qword_1EC4682F0;
  if (!qword_1EC4682F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468250, &qword_1CAD693A8);
    sub_1CAD2FEA4(&qword_1EC4682F8, type metadata accessor for EventAttendeeModelObject, &protocol conformance descriptor for EventAttendeeModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4682F0);
  }

  return result;
}

unint64_t sub_1CAD2E5A0()
{
  result = qword_1EC468300;
  if (!qword_1EC468300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466828, &qword_1CAD693B0);
    sub_1CAD2FEA4(&qword_1EC468308, type metadata accessor for EventAttachmentModelObject, &protocol conformance descriptor for EventAttachmentModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468300);
  }

  return result;
}

unint64_t sub_1CAD2E654()
{
  result = qword_1EC468310;
  if (!qword_1EC468310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468310);
  }

  return result;
}

uint64_t sub_1CAD2E6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAD2E710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAD2E88C(uint64_t a1)
{
  result = sub_1CAD2FEA4(&qword_1EC468320, type metadata accessor for EventModelObject, &protocol conformance descriptor for EventModelObject);
  *(a1 + 16) = result;
  return result;
}

void sub_1CAD2E954(uint64_t a1)
{
  sub_1CAD4C0F4();
  if (v1 <= 0x3F)
  {
    sub_1CAD2EE28(319, &qword_1EDA5F890, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1CAD2EE28(319, &qword_1EDA5F5A8, type metadata accessor for EventVirtualConferenceModelObject, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1CABB7D3C(319, &qword_1EC461F88, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          sub_1CACCA7A4(319, &qword_1EC461F30, &qword_1EC464730, &qword_1CAD5D970);
          if (v5 <= 0x3F)
          {
            sub_1CABB7D3C(319, &qword_1EC462288, &type metadata for EventLocationModelObject);
            if (v6 <= 0x3F)
            {
              type metadata accessor for EKLocationRoutingMode(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for EKEventTravelAdvisoryBehavior(319);
                if (v8 <= 0x3F)
                {
                  sub_1CAD2EE28(319, &qword_1EDA5F878, type metadata accessor for EventCalendarModelObject, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for EKPrivacyLevel(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for EKEventStatus(319);
                      if (v11 <= 0x3F)
                      {
                        sub_1CACCA7A4(319, &qword_1EC461F78, &qword_1EC468210, &qword_1CAD69398);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for EKEventAvailability(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1CAD2EE28(319, &qword_1EDA5F8D8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1CACCA7A4(319, &qword_1EC461F60, &qword_1EC468230, &qword_1CAD693A0);
                              if (v15 <= 0x3F)
                              {
                                sub_1CAD2EE28(319, &qword_1EDA5F6F0, type metadata accessor for EventOrganizerModelObject, MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1CACCA7A4(319, &qword_1EC461F70, &qword_1EC468250, &qword_1CAD693A8);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1CAD2EE28(319, &qword_1EDA5F778, type metadata accessor for EventAttendeeModelObject, MEMORY[0x1E69E6720]);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1CAD2EE28(319, &qword_1EDA5F898, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1CAD2EE28(319, &qword_1EC461F68, type metadata accessor for EventAttachmentModelObject, MEMORY[0x1E69E62F8]);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1CABB7D3C(319, &qword_1EC462270, &type metadata for EventIntegrationModelObject);
                                          if (v21 <= 0x3F)
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

void sub_1CAD2EE28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for EventModelObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventModelObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CAD2F080()
{
  result = qword_1EC468328;
  if (!qword_1EC468328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468328);
  }

  return result;
}

unint64_t sub_1CAD2F0D8()
{
  result = qword_1EC468330;
  if (!qword_1EC468330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468330);
  }

  return result;
}

unint64_t sub_1CAD2F130()
{
  result = qword_1EC468338;
  if (!qword_1EC468338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468338);
  }

  return result;
}

uint64_t sub_1CAD2F184(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736F706F72507369 && a2 == 0xEE00656D69546465 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xED0000656E6F5A65 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5A656D6954646E65 && a2 == 0xEB00000000656E6FLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6974616F6C467369 && a2 == 0xEA0000000000676ELL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CAD778C0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD76560 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001CAD778E0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001CAD77900 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CAD77920 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001CAD77940 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD77970 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69546C6576617274 && a2 == 0xEA0000000000656DLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CAD77990 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD779B0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001CAD779D0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xEA00000000004449 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x4C79636176697270 && a2 == 0xEC0000006C657665 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x736D72616C61 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6E65727275636572 && a2 == 0xEE00657461446563 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6E65727275636572 && a2 == 0xEF73656C75526563 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x657A696E6167726FLL && a2 == 0xE900000000000072 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6565646E65747461 && a2 == 0xE900000000000073 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x65747441666C6573 && a2 == 0xEC0000006565646ELL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x6361747441736168 && a2 == 0xED0000746E656D68 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001CAD765A0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CAD765C0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x7461726765746E69 && a2 == 0xEB000000006E6F69 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x6261746964457369 && a2 == 0xEA0000000000656CLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x77654E7369 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CAD779F0 == a2)
  {

    return 42;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 42;
    }

    else
    {
      return 43;
    }
  }
}

uint64_t sub_1CAD2FEA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TravelTimeView(uint64_t a1)
{
  result = qword_1EC468380;
  if (!qword_1EC468380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CAD2FF60(uint64_t a1)
{
  sub_1CAD2FFE4(319);
  if (v1 <= 0x3F)
  {
    sub_1CAC4E548();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CAD2FFE4(uint64_t a1)
{
  if (!qword_1EC465600)
  {
    type metadata accessor for TravelTimeViewModel(255);
    v1 = sub_1CAD4DC34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC465600);
    }
  }
}

uint64_t sub_1CAD30058@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468390, &qword_1CAD69A60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_1CAD301A4(v1, &v12 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8, &unk_1CAD60570);
  sub_1CAD4DBF4();
  v6 = v13[3];
  v7 = v13[4];
  v13 = v13[2];
  v14 = v6;
  v15 = v7;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C28, &qword_1CAD5A8A0);
  MEMORY[0x1CCAA6D30](&v12, v8);

  if (v12 == 0.0)
  {
    v9 = sub_1CAD4D8B4();
  }

  else
  {
    v9 = sub_1CAD4D8A4();
  }

  v10 = v9;
  sub_1CAB37B94(v5, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468398, &qword_1CAD69A68);
  *(a1 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_1CAD301A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8, &unk_1CAD60570);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v59 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4683A0, &qword_1CAD69A70);
  MEMORY[0x1EEE9AC00](v64);
  v67 = (&v59 - v7);
  v8 = type metadata accessor for TravelTimeView(0);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = v9;
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4683A8, &qword_1CAD69A78);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v70 = &v59 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4683B0, &qword_1CAD69A80);
  v12 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v14 = (&v59 - v13);
  sub_1CAD4DBF4();
  v15 = v96;
  v16 = *(v96 + 400);
  v110[8] = *(v96 + 384);
  v110[9] = v16;
  v110[10] = *(v96 + 416);
  v17 = *(v96 + 336);
  v110[4] = *(v96 + 320);
  v110[5] = v17;
  v18 = *(v96 + 352);
  v110[7] = *(v96 + 368);
  v110[6] = v18;
  v19 = *(v96 + 272);
  v110[0] = *(v96 + 256);
  v110[1] = v19;
  v20 = *(v96 + 288);
  v110[3] = *(v96 + 304);
  v110[2] = v20;
  enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0 = get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v110);
  v68 = a2;
  if (enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0 != 1)
  {
    v59 = v14;
    v60 = v12;

LABEL_9:
    sub_1CAD314C0(a1, v10);
    v40 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v41 = swift_allocObject();
    v42 = sub_1CAD31524(v10, v41 + v40);
    v61 = &v59;
    MEMORY[0x1EEE9AC00](v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4683E0, &qword_1CAD69AC0);
    sub_1CAB23B0C(&qword_1EC4683E8, &qword_1EC4683E0, &qword_1CAD69AC0, MEMORY[0x1E6981800]);
    sub_1CAD4D9E4();
    v43 = (a1 + *(v62 + 20));
    v44 = *v43;
    v45 = *(v43 + 1);
    LOBYTE(v73) = v44;
    *(&v73 + 1) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610, &qword_1CAD59A00);
    sub_1CAD4D9B4();
    sub_1CAD314C0(a1, v10);
    v46 = swift_allocObject();
    sub_1CAD31524(v10, v46 + v40);
    v47 = type metadata accessor for TravelTimeEditor(0);
    *&v58 = sub_1CAB23B0C(&qword_1EC4683C8, &qword_1EC4683A8, &qword_1CAD69A78, MEMORY[0x1E697D678]);
    *(&v58 + 1) = sub_1CAD31758(&qword_1EC4683D0, type metadata accessor for TravelTimeEditor, &unk_1CAD60594);
    v48 = v59;
    v49 = v65;
    v50 = v70;
    sub_1CAD4D6E4();

    (*(v63 + 8))(v50, v49);
    v51 = v60;
    v52 = v66;
    (*(v60 + 2))(v67, v48, v66);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4683C0, &qword_1CAD69AB8);
    *&v96 = v49;
    *(&v96 + 1) = v47;
    v97 = v58;
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC4683D8, &qword_1EC4683C0, &qword_1CAD69AB8, &unk_1CAD61908);
    sub_1CAD4CE24();
    return (*(v51 + 1))(v48, v52);
  }

  v59 = v5;
  v22 = *(v15 + 184);
  v104 = *(v15 + 168);
  v105 = v22;
  v23 = *(v15 + 216);
  v106 = *(v15 + 200);
  v107 = v23;
  v24 = *(v15 + 120);
  v100 = *(v15 + 104);
  v101 = v24;
  v25 = *(v15 + 152);
  v102 = *(v15 + 136);
  v103 = v25;
  v26 = *(v15 + 56);
  v96 = *(v15 + 40);
  v97 = v26;
  v27 = *(v15 + 88);
  v98 = *(v15 + 72);
  v99 = v27;
  v81 = v104;
  v82 = v105;
  v83 = v106;
  v84 = v107;
  v77 = v100;
  v78 = v101;
  v79 = v102;
  v80 = v103;
  v73 = v96;
  v74 = v97;
  v75 = v98;
  v76 = v27;
  sub_1CAB23A9C(&v96, &v71, &qword_1EC463C30, &qword_1CAD5A8A8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C30, &qword_1CAD5A8A8);
  MEMORY[0x1CCAA6D30](&v85, v28);

  sub_1CAB21B68(&v96, &qword_1EC463C30, &qword_1CAD5A8A8);
  v108[8] = v93;
  v108[9] = v94;
  v108[10] = v95;
  v108[4] = v89;
  v108[5] = v90;
  v108[6] = v91;
  v108[7] = v92;
  v108[0] = v85;
  v108[1] = v86;
  v108[2] = v87;
  v108[3] = v88;
  v109[8] = v93;
  v109[9] = v94;
  v109[10] = v95;
  v109[4] = v89;
  v109[5] = v90;
  v109[7] = v92;
  v109[6] = v91;
  v109[0] = v85;
  v109[1] = v86;
  v109[3] = v88;
  v109[2] = v87;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v109) != 1)
  {
    v59 = v14;
    v60 = v12;
    sub_1CAB21B68(v108, &qword_1EC463C00, &qword_1CAD5A7C0);
    goto LABEL_9;
  }

  if (qword_1EC462B88 != -1)
  {
    swift_once();
  }

  v30 = qword_1EC47D948;
  v29 = unk_1EC47D950;

  v31 = v60;
  sub_1CAD4DC04();
  swift_getKeyPath("h)q!");
  sub_1CAD4DC24();

  v59[1](v31, v4);
  v32 = v73;
  v33 = v74;
  v34 = qword_1EC463BA0;

  sub_1CAD4DBF4();
  v35 = *(v71 + 248);
  v71 = *(v71 + 232);
  v72 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464050, &qword_1CAD5BD68);
  MEMORY[0x1CCAA6D30](&v85, v36);
  v37 = v85 + 1;
  if ((v85 + 1) > 5)
  {
    v39 = 0xE800000000000000;
    v38 = 0x6C6C69662E726163;
  }

  else
  {
    v38 = *&aCarFillcarFill[8 * v37];
    v39 = qword_1CAD69B38[v37];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4683B8, &qword_1CAD69AB0);
  v54 = swift_allocObject();
  *(v54 + 16) = v32;
  *(v54 + 32) = v33;
  *(v54 + 40) = v30;
  *(v54 + 48) = v29;
  *(v54 + 56) = v38;
  *(v54 + 64) = v39;
  *(v54 + 72) = 0;
  *(v54 + 80) = v34;
  *(v54 + 88) = 0;
  *(v54 + 96) = 1;
  *v67 = v54;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4683C0, &qword_1CAD69AB8);
  v55 = type metadata accessor for TravelTimeEditor(255);
  v56 = sub_1CAB23B0C(&qword_1EC4683C8, &qword_1EC4683A8, &qword_1CAD69A78, MEMORY[0x1E697D678]);
  v57 = sub_1CAD31758(&qword_1EC4683D0, type metadata accessor for TravelTimeEditor, &unk_1CAD60594);
  *&v73 = v65;
  *(&v73 + 1) = v55;
  *&v74 = v56;
  *(&v74 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  sub_1CAB23B0C(&qword_1EC4683D8, &qword_1EC4683C0, &qword_1CAD69AB8, &unk_1CAD61908);
  return sub_1CAD4CE24();
}

uint64_t sub_1CAD30C54(uint64_t a1)
{
  type metadata accessor for TravelTimeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610, &qword_1CAD59A00);
  return sub_1CAD4D9A4();
}

double sub_1CAD30CC8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1CAD4CC94();
  v22 = 1;
  sub_1CAD30E88(&v11);
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v23 = v11;
  v24 = v12;
  v33[6] = v17;
  v33[7] = v18;
  v33[8] = v19;
  v33[2] = v13;
  v33[3] = v14;
  v33[4] = v15;
  v33[5] = v16;
  v32 = v20;
  v34 = v20;
  v33[0] = v11;
  v33[1] = v12;
  sub_1CAB23A9C(&v23, v10, &qword_1EC4683F0, &qword_1CAD69AF8);
  sub_1CAB21B68(v33, &qword_1EC4683F0, &qword_1CAD69AF8);
  *(&v21[3] + 7) = v26;
  *(&v21[2] + 7) = v25;
  *(&v21[6] + 7) = v29;
  *(&v21[7] + 7) = v30;
  *(&v21[8] + 7) = v31;
  *(&v21[9] + 7) = v32;
  *(&v21[4] + 7) = v27;
  *(&v21[5] + 7) = v28;
  *(v21 + 7) = v23;
  *(&v21[1] + 7) = v24;
  v4 = v21[7];
  *(a2 + 113) = v21[6];
  *(a2 + 129) = v4;
  *(a2 + 145) = v21[8];
  *(a2 + 156) = *(&v21[8] + 11);
  v5 = v21[3];
  *(a2 + 49) = v21[2];
  *(a2 + 65) = v5;
  v6 = v21[5];
  *(a2 + 81) = v21[4];
  *(a2 + 97) = v6;
  result = *v21;
  v8 = v21[1];
  *(a2 + 17) = v21[0];
  v9 = v22;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 33) = v8;
  return result;
}

uint64_t sub_1CAD30E88@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8, &unk_1CAD60570);
  sub_1CAD4DBF4();
  v2 = *(v45 + 248);
  v45 = *(v45 + 232);
  v46 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464050, &qword_1CAD5BD68);
  MEMORY[0x1CCAA6D30](&v42, v3);

  v40 = sub_1CAD4D8F4();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v4 = BYTE8(v45);
  v38 = v46;
  v39 = v45;
  v35 = v47;
  v36 = v49;
  v37 = v48;
  if (qword_1EC462B88 != -1)
  {
    swift_once();
  }

  v42 = qword_1EC47D948;
  v43 = unk_1EC47D950;
  sub_1CABA6054();

  v5 = sub_1CAD4D444();
  v32 = v6;
  v33 = v5;
  v31 = v7;
  v34 = v8;
  sub_1CAD4DBF4();
  v9 = v42[3];
  v10 = v42[4];
  v42 = v42[2];
  v43 = v9;
  v44 = v10;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C28, &qword_1CAD5A8A0);
  MEMORY[0x1CCAA6D30](&v41, v11);

  v12 = CUIKDisplayStringForTravelTimeUsingShortFormat(1, v41);
  v13 = sub_1CAD4DF94();
  v15 = v14;

  v42 = v13;
  v43 = v15;
  v16 = sub_1CAD4D444();
  v18 = v17;
  v20 = v19;
  LODWORD(v42) = sub_1CAD4CFE4();
  v21 = sub_1CAD4D3E4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1CABA6128(v16, v18, v20 & 1);

  v30 = sub_1CAD4D8F4();
  v28 = sub_1CAD4CFD4();
  LOBYTE(v42) = v31 & 1;
  LOBYTE(v41) = v4;
  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v4;
  *(a1 + 24) = v38;
  *(a1 + 32) = v35;
  *(a1 + 40) = v37;
  *(a1 + 48) = v36;
  *(a1 + 56) = v33;
  *(a1 + 64) = v32;
  *(a1 + 72) = v31 & 1;
  *(a1 + 80) = v34;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = v21;
  *(a1 + 112) = v23;
  *(a1 + 120) = v25 & 1;
  *(a1 + 128) = v27;
  *(a1 + 136) = v30;
  *(a1 + 144) = v28;

  sub_1CABA4F48(v33, v32, v31 & 1);

  sub_1CABA4F48(v21, v23, v25 & 1);

  sub_1CABA6128(v21, v23, v25 & 1);

  sub_1CABA6128(v33, v32, v42);
}

void *sub_1CAD312CC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8, &unk_1CAD60570);
  sub_1CAD4DBF4();
  KeyPath = swift_getKeyPath("0)q!");
  v3 = type metadata accessor for TravelTimeEditor(0);
  *(a1 + *(v3 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0, &qword_1CAD5C410);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TravelTimeViewModel(0);
  sub_1CAD31758(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel, &unk_1CAD5A6D4);
  sub_1CAD4DC14();
  v4 = a1 + *(v3 + 24);
  result = sub_1CAD4D984();
  *v4 = v6;
  *(v4 + 8) = v7;
  return result;
}

double sub_1CAD313F4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v7[1] = *(*a1 + 16);
  v7[2] = v3;
  v7[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C28, &qword_1CAD5A8A0);
  MEMORY[0x1CCAA6D30](v7, v5);
  result = *v7;
  *a2 = v7[0];
  return result;
}

uint64_t sub_1CAD314C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TravelTimeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAD31524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TravelTimeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAD31588()
{
  v1 = *(type metadata accessor for TravelTimeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1CAD30C54(v2);
}

uint64_t objectdestroyTm_14()
{
  v1 = *(type metadata accessor for TravelTimeView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E8, &unk_1CAD60570);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void *sub_1CAD316E8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TravelTimeView(0);

  return sub_1CAD312CC(a1);
}

uint64_t sub_1CAD31758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CAD317A0()
{
  result = qword_1EC4683F8;
  if (!qword_1EC4683F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468398, &qword_1CAD69A68);
    sub_1CAD31858();
    sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760, qword_1CAD647B0, MEMORY[0x1E6980488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4683F8);
  }

  return result;
}

unint64_t sub_1CAD31858()
{
  result = qword_1EC468400;
  if (!qword_1EC468400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468390, &qword_1CAD69A60);
    sub_1CAD318DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468400);
  }

  return result;
}

unint64_t sub_1CAD318DC()
{
  result = qword_1EC468408;
  if (!qword_1EC468408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468410, &qword_1CAD69B00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4683A8, &qword_1CAD69A78);
    type metadata accessor for TravelTimeEditor(255);
    sub_1CAB23B0C(&qword_1EC4683C8, &qword_1EC4683A8, &qword_1CAD69A78, MEMORY[0x1E697D678]);
    sub_1CAD31758(&qword_1EC4683D0, type metadata accessor for TravelTimeEditor, &unk_1CAD60594);
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC4683D8, &qword_1EC4683C0, &qword_1CAD69AB8, &unk_1CAD61908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468408);
  }

  return result;
}

uint64_t sub_1CAD31A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468438, &qword_1CAD69C10);
  v63 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v62 = &v54 - v3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468440, &qword_1CAD69C18);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468448, &qword_1CAD69C20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v54 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468450, &qword_1CAD69C28);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v54 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468458, &qword_1CAD69C30);
  MEMORY[0x1EEE9AC00](v69);
  v56 = &v54 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468460, &qword_1CAD69C38);
  v58 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v57 = &v54 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468468, &qword_1CAD69C40);
  v60 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v59 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DC0, &unk_1CAD5E030);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v54 - v12;
  v14 = *(a1 + 56);
  v85 = *(a1 + 48);
  v13 = v85;
  v86 = v14;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v82 = *(a1 + 16);
  v83 = v15;
  v84 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465338, &qword_1CAD5FB68);
  sub_1CAD4DAE4();
  v67 = v78;
  v66 = v79;
  v65 = v80;
  v64 = v81;
  *&v82 = v13;
  *(&v82 + 1) = v14;
  sub_1CABA6054();

  v17 = sub_1CAD4D444();
  v19 = v18;
  v21 = v20;
  LODWORD(v82) = sub_1CAD4CFE4();
  sub_1CAD4D3E4();
  sub_1CABA6128(v17, v19, v21 & 1);

  LOBYTE(a1) = ~*(a1 + 80);
  v22 = v68;
  sub_1CAD4DD34();
  if (a1)
  {
    v47 = sub_1CAB23B0C(&qword_1EC464DC8, &qword_1EC464DC0, &unk_1CAD5E030, MEMORY[0x1E697D7D8]);
    v48 = v62;
    v25 = v72;
    sub_1CAD4D7A4();
    v49 = v63;
    v50 = v77;
    (*(v63 + 16))(v75, v48, v77);
    swift_storeEnumTagMultiPayload();
    v51 = sub_1CAD327E8();
    *&v82 = v69;
    *(&v82 + 1) = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v82 = v70;
    *(&v82 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    *&v82 = v25;
    *(&v82 + 1) = v47;
    swift_getOpaqueTypeConformance2();
    sub_1CAD4CE24();
    (*(v49 + 8))(v48, v50);
    v46 = v71;
  }

  else
  {
    KeyPath = swift_getKeyPath("0(q!");
    v24 = v71;
    v25 = v72;
    v26 = v54;
    (*(v71 + 16))(v54, v22, v72);
    v27 = v55;
    v28 = v26 + *(v55 + 36);
    *v28 = KeyPath;
    *(v28 + 8) = 1;
    *(v28 + 16) = 0;
    v29 = sub_1CAD328DC();
    v30 = v56;
    MEMORY[0x1CCAA68B0](1, v27, v29);
    sub_1CAB21B68(v26, &qword_1EC468450, &qword_1CAD69C28);
    v31 = swift_getKeyPath("\b(q!");
    v32 = sub_1CAD4DF94();
    v33 = v69;
    v34 = (v30 + *(v69 + 36));
    *v34 = v31;
    v34[1] = v32;
    v34[2] = v35;
    v36 = sub_1CAD327E8();
    v37 = v57;
    sub_1CAD4D524();
    sub_1CAB21B68(v30, &qword_1EC468458, &qword_1CAD69C30);
    v38 = v61;
    sub_1CAD4D0A4();
    v39 = sub_1CAD4D0B4();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    *&v82 = v33;
    *(&v82 + 1) = v36;
    v40 = swift_getOpaqueTypeConformance2();
    v41 = v59;
    v42 = v70;
    sub_1CAD4D684();
    sub_1CAB21B68(v38, &qword_1EC468448, &qword_1CAD69C20);
    (*(v58 + 8))(v37, v42);
    v43 = v60;
    v44 = v73;
    (*(v60 + 16))(v75, v41, v73);
    swift_storeEnumTagMultiPayload();
    *&v82 = v42;
    *(&v82 + 1) = v40;
    swift_getOpaqueTypeConformance2();
    v45 = sub_1CAB23B0C(&qword_1EC464DC8, &qword_1EC464DC0, &unk_1CAD5E030, MEMORY[0x1E697D7D8]);
    *&v82 = v25;
    *(&v82 + 1) = v45;
    swift_getOpaqueTypeConformance2();
    sub_1CAD4CE24();
    (*(v43 + 8))(v41, v44);
    v46 = v24;
  }

  return (*(v46 + 8))(v22, v25);
}

uint64_t sub_1CAD323FC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468420, &qword_1CAD69BF8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v42 - v8;
  v10 = *(a1 + 72);
  if (v10)
  {

    v11 = sub_1CAD4D8F4();
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v57 = *(a1 + 16);
    v58 = v12;
    v59 = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465338, &qword_1CAD5FB68);
    MEMORY[0x1CCAA6D30](&v51, v14);
    v15 = v51;

    v16 = HIBYTE(*(&v15 + 1)) & 0xFLL;
    v17 = v11;
    if ((*(&v15 + 1) & 0x2000000000000000) == 0)
    {
      v16 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v18 = sub_1CAD4D8A4();
    }

    else
    {
      v18 = sub_1CAD4D8B4();
    }

    v49 = v18;
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v47 = v72;
    v48 = v70;
    v45 = v75;
    v46 = v74;
    LOBYTE(v51) = v71;
    v50 = v73;
    v26 = sub_1CAD4D1E4();
    sub_1CAD4C5F4();
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v51;
    v10 = v50;
    v20 = v26;
    LOBYTE(v57) = 0;
    v19 = v49;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  v49 = v19;
  v42 = v17;
  v43 = v10;
  v44 = v21;
  sub_1CAD31A80(a1, v9);
  sub_1CAB37C1C(v9, v7);
  *&v51 = v17;
  *(&v51 + 1) = v19;
  v31 = v9;
  v32 = v48;
  *&v52 = v48;
  *(&v52 + 1) = v21;
  v33 = v46;
  v34 = v47;
  *&v53 = v47;
  *(&v53 + 1) = v10;
  v35 = v45;
  *&v54 = v46;
  *(&v54 + 1) = v45;
  *&v55 = v20;
  *(&v55 + 1) = v22;
  *&v56[0] = v23;
  *(&v56[0] + 1) = v24;
  *&v56[1] = v25;
  BYTE8(v56[1]) = 0;
  v36 = v52;
  *a2 = v51;
  a2[1] = v36;
  v37 = v53;
  v38 = v54;
  *(a2 + 89) = *(v56 + 9);
  v39 = v56[0];
  a2[4] = v55;
  a2[5] = v39;
  a2[2] = v37;
  a2[3] = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468428, &qword_1CAD69C00);
  sub_1CAB37C1C(v7, a2 + *(v40 + 48));
  sub_1CAD32778(&v51, &v57);
  sub_1CAB21B68(v31, &qword_1EC468420, &qword_1CAD69BF8);
  sub_1CAB21B68(v7, &qword_1EC468420, &qword_1CAD69BF8);
  *&v57 = v42;
  *(&v57 + 1) = v49;
  v58 = v32;
  v59 = v44;
  v60 = v34;
  v61 = v43;
  v62 = v33;
  v63 = v35;
  v64 = v20;
  v65 = v22;
  v66 = v23;
  v67 = v24;
  v68 = v25;
  v69 = 0;
  return sub_1CAB21B68(&v57, &qword_1EC468430, &qword_1CAD69C08);
}

uint64_t sub_1CAD32720@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1CAD4CC84();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468418, &qword_1CAD69BF0);
  return sub_1CAD323FC(v3, (a1 + *(v4 + 44)));
}

uint64_t sub_1CAD32778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468430, &qword_1CAD69C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CAD327E8()
{
  result = qword_1EC468470;
  if (!qword_1EC468470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468458, &qword_1CAD69C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468450, &qword_1CAD69C28);
    sub_1CAD328DC();
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC468480, &qword_1EC468488, &qword_1CAD69C48, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468470);
  }

  return result;
}

unint64_t sub_1CAD328DC()
{
  result = qword_1EC468478;
  if (!qword_1EC468478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468450, &qword_1CAD69C28);
    sub_1CAB23B0C(&qword_1EC464DC8, &qword_1EC464DC0, &unk_1CAD5E030, MEMORY[0x1E697D7D8]);
    sub_1CAB23B0C(&qword_1EC462020, &qword_1EC4644A0, &qword_1CAD5CB40, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468478);
  }

  return result;
}

CalendarUIKit::EKEventModelWrapper_optional __swiftcall EKEventModelWrapper.init(_:)(CalendarUIKit::EKEventModelWrapper_optional result)
{
  v2 = v1;
  if (result.value.ekEvent.super.super.super.isa)
  {
    isa = result.value.ekEvent.super.super.super.isa;
    v4 = [(objc_class *)result.value.ekEvent.super.super.super.isa uniqueID];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = isa;
    }

    if (!v4)
    {
      isa = 0;
    }
  }

  else
  {
    isa = 0;
  }

  *v2 = isa;
  return result;
}

void EKEventModelWrapper.id.getter()
{
  v1 = *v0;
  v2 = [v1 appEntityIdentifier];
  if (v2)
  {
    v3 = v2;
LABEL_5:
    sub_1CAD4DF94();

    return;
  }

  v4 = [v1 objectID];
  if (v4)
  {
    v5 = v4;
    v3 = [v4 stringRepresentation];

    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t EKEventModelWrapper.uniqueID.getter()
{
  v1 = [*v0 uniqueID];
  if (!v1)
  {
    return 0x746E65764577654ELL;
  }

  v2 = v1;
  v3 = sub_1CAD4DF94();

  return v3;
}

id EKEventModelWrapper.title.getter()
{
  result = [*v0 title];
  if (result)
  {
    v2 = result;
    v3 = sub_1CAD4DF94();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CAD32C10(SEL *a1)
{
  v2 = [*v1 *a1];
  if (v2)
  {
    v3 = v2;
    sub_1CAD4C0B4();
  }

  else
  {
    __break(1u);
  }
}

id EKEventModelWrapper.virtualConference.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 virtualConference];
  *a1 = result;
  return result;
}

uint64_t EKEventModelWrapper.locationsWithoutPrediction.getter()
{
  v1 = [*v0 locationsWithoutPrediction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CAD4E214();

  return v3;
}

id EKEventModelWrapper.structuredLocation.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 structuredLocation];
  *a1 = result;
  return result;
}

id EKEventModelWrapper.structuredLocationWithoutPrediction.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 structuredLocationWithoutPrediction];
  *a1 = result;
  return result;
}

id EKEventModelWrapper.preferredLocation.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 preferredLocation];
  *a1 = result;
  return result;
}

id EKEventModelWrapper.travelStartLocation.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 travelStartLocation];
  *a1 = result;
  return result;
}

id EKEventModelWrapper.calendar.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 calendar];
  *a1 = result;
  return result;
}

id EKEventModelWrapper.calendarOrDefault.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = [v3 calendar];
  if (result)
  {
    goto LABEL_7;
  }

  result = [v3 eventStore];
  if (result)
  {
    v5 = result;
    v6 = [result defaultCalendarForNewEvents];

    if (v6)
    {
      result = v6;
LABEL_7:
      *a1 = result;
      return result;
    }

    result = [v3 eventStore];
    if (result)
    {
      v7 = result;
      v8 = [objc_opt_self() calendarForEntityType:0 eventStore:result];

      result = v8;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *EKEventModelWrapper.alarms.getter()
{
  v1 = [*v0 alarms];
  if (!v1)
  {
    return v1;
  }

  sub_1CABD4070(0, &qword_1EC461E00, 0x1E6966950);
  v2 = sub_1CAD4E214();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v3 = sub_1CAD4E604();
  if (!v3)
  {
LABEL_14:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1CACBA1AC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v1 = v10;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCAA7940](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v8 = v10[2];
      v7 = v10[3];
      if (v8 >= v7 >> 1)
      {
        v9 = v6;
        sub_1CACBA1AC((v7 > 1), v8 + 1, 1);
        v6 = v9;
      }

      ++v5;
      v10[2] = v8 + 1;
      v10[v8 + 4] = v6;
    }

    while (v3 != v5);

    return v1;
  }

  __break(1u);
  return result;
}

id EKEventModelWrapper.recurrenceRules.getter()
{
  v1 = *v0;
  v2 = [*v0 singleRecurrenceRule];
  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684A0, &qword_1CAD69CC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CAD58380;
  result = [v1 singleRecurrenceRule];
  if (result)
  {
    *(v3 + 32) = result;
    return v3;
  }

  __break(1u);
  return result;
}

id EKEventModelWrapper.singleRecurrenceRule.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 singleRecurrenceRule];
  *a1 = result;
  return result;
}

double EKEventModelWrapper.organizer.getter@<D0>(uint64_t a1@<X8>)
{
  v7 = [*v1 organizer];
  if (!v7)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_7:
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  *a1 = v3;
  *(a1 + 32) = &type metadata for EKParticipantModelWrapper;
  v4 = v3;
  *(a1 + 40) = sub_1CAC6A298();
  *(a1 + 8) = v4;

  v5 = v7;
  return result;
}

char *EKEventModelWrapper.attendees.getter()
{
  v1 = [*v0 attendees];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CABD4070(0, &unk_1EC461EF0, 0x1E6966A80);
  v3 = sub_1CAD4E214();

  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CAD4E604())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCAA7940](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        v12 = sub_1CAC6A298();
        v13 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1CAD3473C(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1CAD3473C((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[48 * v15];
        *(v16 + 4) = v13;
        *(v16 + 5) = v13;
        *(v16 + 3) = v18;
        *(v16 + 8) = &type metadata for EKParticipantModelWrapper;
        *(v16 + 9) = v12;
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v6;
}

id EKEventModelWrapper.selfAttendee.getter@<X0>(void *a1@<X8>)
{
  v3 = [*v1 selfAttendee];
  v4 = v3;
  if (v3)
  {
    v5 = &type metadata for EKParticipantModelWrapper;
    v7 = v3;
    v3 = sub_1CAC6A298();
    v4 = v7;
  }

  else
  {
    v5 = 0;
    a1[2] = 0;
    a1[3] = 0;
  }

  *a1 = v4;
  a1[1] = v4;
  a1[4] = v5;
  a1[5] = v3;

  return v4;
}

uint64_t EKEventModelWrapper.attachments.getter()
{
  v1 = type metadata accessor for EventAttachmentModelObject(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*v0 attachments];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
    v8 = sub_1CAD4E214();

    v9 = *(v8 + 16);
    if (v9)
    {
      v17 = v6;
      sub_1CACB9F74(0, v9, 0);
      v6 = v17;
      v14[1] = v8;
      v10 = v8 + 32;
      do
      {
        sub_1CABD3CDC(v10, v16);
        sub_1CABD3CDC(v16, v15);
        sub_1CABD4070(0, &qword_1EC464E58, 0x1E6966960);
        swift_dynamicCast();
        sub_1CACA07A0(v14[2], v4);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v17 = v6;
        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1CACB9F74((v11 > 1), v12 + 1, 1);
          v6 = v17;
        }

        *(v6 + 16) = v12 + 1;
        sub_1CAC3F38C(v4, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12);
        v10 += 32;
        --v9;
      }

      while (v9);
    }
  }

  return v6;
}

uint64_t sub_1CAD33970@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

void EKEventModelWrapper.integration.getter(void *a1@<X8>)
{
  v3 = *v1;
  if (![v3 isIntegrationEvent])
  {

    v3 = 0;
  }

  *a1 = v3;
}

uint64_t EKEventModelWrapper.isEditable.getter()
{
  v1 = *v0;
  result = [*v0 isEditable];
  if (result)
  {
    v3 = [v1 calendar];
    if (v3 && (v4 = v3, v5 = [v3 isSuggestedEventCalendar], v4, (v5 & 1) != 0))
    {
      return 0;
    }

    else if ([v1 isReminderIntegrationEvent])
    {
      return [v1 CUIK_reminderShouldBeEditable];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL EKEventModelWrapper.isSuggestedEvent.getter()
{
  v1 = [*v0 suggestionInfo];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void EKEventModelWrapper.constraints.getter(void *a1@<X8>)
{
  v3 = [*v1 calendar];
  if (!v3)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [v3 source];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 constraints];

LABEL_5:
    *a1 = v7;
    return;
  }

  __break(1u);
}

CalendarUIKit::EKEventModelWrapper_optional __swiftcall EKEventModelWrapper.init(_:)(EKEvent a1)
{
  isa = a1.super.super.super.isa;
  v3 = v1;
  v4 = [(objc_class *)a1.super.super.super.isa uniqueID];
  if (v4)
  {
  }

  else
  {

    isa = 0;
  }

  *v3 = isa;
  result.value.ekEvent.super.super.super.isa = v5;
  result.is_nil = v6;
  return result;
}

id sub_1CAD33C70()
{
  result = [*v0 title];
  if (result)
  {
    v2 = result;
    v3 = sub_1CAD4DF94();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAD33CD0()
{
  v1 = [*v0 uniqueID];
  if (!v1)
  {
    return 0x746E65764577654ELL;
  }

  v2 = v1;
  v3 = sub_1CAD4DF94();

  return v3;
}

void sub_1CAD33D5C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (v4)
  {
    v5 = v4;
    sub_1CAD4C0B4();
  }

  else
  {
    __break(1u);
  }
}

id sub_1CAD33EE4@<X0>(void *a1@<X8>)
{
  result = [*v1 structuredLocation];
  *a1 = result;
  return result;
}

id sub_1CAD33F20@<X0>(void *a1@<X8>)
{
  result = [*v1 structuredLocationWithoutPrediction];
  *a1 = result;
  return result;
}

id sub_1CAD33F6C@<X0>(void *a1@<X8>)
{
  result = [*v1 travelStartLocation];
  *a1 = result;
  return result;
}

id sub_1CAD33FC8@<X0>(void *a1@<X8>)
{
  result = [*v1 calendar];
  *a1 = result;
  return result;
}

id sub_1CAD34078()
{
  v1 = *v0;
  v2 = [*v0 singleRecurrenceRule];
  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684A0, &qword_1CAD69CC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CAD58380;
  result = [v1 singleRecurrenceRule];
  if (result)
  {
    *(v3 + 32) = result;
    return v3;
  }

  __break(1u);
  return result;
}

id sub_1CAD3411C@<X0>(void *a1@<X8>)
{
  result = [*v1 singleRecurrenceRule];
  *a1 = result;
  return result;
}

id sub_1CAD34160@<X0>(void *a1@<X8>)
{
  v3 = [*v1 selfAttendee];
  v4 = v3;
  if (v3)
  {
    v5 = &type metadata for EKParticipantModelWrapper;
    v7 = v3;
    v3 = sub_1CAC6A298();
    v4 = v7;
  }

  else
  {
    v5 = 0;
    a1[2] = 0;
    a1[3] = 0;
  }

  *a1 = v4;
  a1[1] = v4;
  a1[4] = v5;
  a1[5] = v3;

  return v4;
}

uint64_t sub_1CAD34270@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

void sub_1CAD34328(void *a1@<X8>)
{
  v3 = *v1;
  if (![v3 isIntegrationEvent])
  {

    v3 = 0;
  }

  *a1 = v3;
}

BOOL sub_1CAD34398()
{
  v1 = [*v0 suggestionInfo];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void sub_1CAD343E0(void *a1@<X8>)
{
  EKEventModelWrapper.id.getter();
  *a1 = v2;
  a1[1] = v3;
}

char *sub_1CAD3440C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C00, &qword_1CAD65D40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CAD34518(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684B8, &qword_1CAD69DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1CAD3461C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464728, &unk_1CAD5CE20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CAD3473C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684D0, &qword_1CAD69DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CAD34884(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C58, &qword_1CAD69DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C60, &qword_1CAD65DB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CAD349CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679B0, &unk_1CAD684C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1CAD34B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684E8, &qword_1CAD69DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CAD34C44(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1CAD34D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FE0, &unk_1CAD65D10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1CAD34E44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684D8, &qword_1CAD69DD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CAD34F64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466BF8, &qword_1CAD65D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CAD35084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684F0, qword_1CAD69DF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CAD35290(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663B0, &qword_1CAD64370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466330, &qword_1CAD64248);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CAD353EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1CAD355C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684A8, &qword_1CAD69D80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CAD356E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684C0, &qword_1CAD69DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CAD35810(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4684C8, &unk_1CAD69DC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CAD35974(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  [objc_opt_self() showTypeAsBusy_];
  return sub_1CAD4D8F4();
}

uint64_t DisplayPerson.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventAttendeeModelObject(0) + 32));

  return v1;
}

uint64_t sub_1CAD35A9C@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 32));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t _s13CalendarUIKit13DisplayPersonV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (_s13CalendarUIKit24EventAttendeeModelObjectV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    sub_1CABD4070(0, &qword_1EC4667E0, 0x1E69E58C0);
    v4 = type metadata accessor for DisplayPerson(0);
    if (sub_1CAD4E494() & 1) != 0 && (sub_1CAD4D944())
    {
      v5 = *(v4 + 28);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6)
      {
        if (v7)
        {
          sub_1CABD4070(0, &qword_1EC4667E8, 0x1E69DCAB8);
          v8 = v7;
          v9 = v6;
          v10 = sub_1CAD4E494();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1CAD35BD4(uint64_t a1)
{
  result = sub_1CAD35FE0(&qword_1EC4684F8, type metadata accessor for DisplayPerson, &protocol conformance descriptor for DisplayPerson);
  *(a1 + 8) = result;
  return result;
}

void sub_1CAD35C74(uint64_t a1)
{
  type metadata accessor for EventAttendeeModelObject(319);
  if (v1 <= 0x3F)
  {
    sub_1CABD4070(319, &unk_1EC461EF0, 0x1E6966A80);
    if (v2 <= 0x3F)
    {
      sub_1CAD1A90C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CAD35EEC(uint64_t a1)
{
  result = type metadata accessor for EventOrganizerModelObject(319);
  if (v2 <= 0x3F)
  {
    result = sub_1CABD4070(319, &unk_1EC461EF0, 0x1E6966A80);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CAD35F88(uint64_t a1)
{
  result = sub_1CAD35FE0(&unk_1EC468520, type metadata accessor for DisplayOrganizerPerson, &unk_1CAD69EC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CAD35FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CAD3603C(void *a1, void *a2)
{
  v4 = sub_1CACC2990(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() viewControllerForContact_];
  }

  else
  {
    v5 = sub_1CAD364D4(a1);
    v6 = [objc_opt_self() viewControllerForUnknownContact_];
  }

  v7 = v6;
  [v7 setContactStore_];
  [v7 setShouldShowLinkedContacts_];
  [v7 setAllowsEditing_];

  return v7;
}

id sub_1CAD36340()
{
  v1 = sub_1CAD3603C(*v0, v0[1]);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v2;
}

uint64_t sub_1CAD36390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAD36480();

  return MEMORY[0x1EEDDB780](a1, a2, a3, v6);
}

uint64_t sub_1CAD363F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAD36480();

  return MEMORY[0x1EEDDB738](a1, a2, a3, v6);
}

void sub_1CAD36458(uint64_t a1)
{
  sub_1CAD36480();
  sub_1CAD4D144();
  __break(1u);
}

unint64_t sub_1CAD36480()
{
  result = qword_1EC468538;
  if (!qword_1EC468538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468538);
  }

  return result;
}

id sub_1CAD364D4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v3 = [a1 emailAddress];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E60, &qword_1CAD5E3A8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1CAD5E2D0;
    sub_1CAD4DF94();
    v6 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
    v7 = v4;
    v8 = sub_1CAD4DF54();

    v9 = [v6 initWithLabel:v8 value:v7];

    *(v5 + 32) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC466E20, &unk_1CAD66140);
    v10 = sub_1CAD4E1F4();

    [v2 setEmailAddresses_];
  }

  v11 = [a1 phoneNumber];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E60, &qword_1CAD5E3A8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1CAD5E2D0;
    sub_1CAD4DF94();
    v15 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
    v16 = v13;
    v17 = sub_1CAD4DF54();

    v18 = [v15 initWithLabel:v17 value:v16];

    *(v14 + 32) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC466E20, &unk_1CAD66140);
    v19 = sub_1CAD4E1F4();

    [v2 setPhoneNumbers_];
  }

  v20 = [a1 firstName];
  if (v20)
  {
    v21 = v20;
    sub_1CAD4DF94();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [a1 lastName];
  if (!v24)
  {
    if (!v23)
    {
      goto LABEL_21;
    }

    v27 = 0;
LABEL_14:
    result = [a1 firstName];
    if (!result)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v30 = result;
    [v2 setGivenName_];

    if (!v27)
    {
      goto LABEL_20;
    }

    v28 = 0;
LABEL_17:
    result = [a1 lastName];
    if (result)
    {
      v31 = result;
      [v2 setFamilyName_];

      if (v28)
      {

        return v2;
      }

LABEL_20:

      return v2;
    }

    goto LABEL_25;
  }

  v25 = v24;
  sub_1CAD4DF94();
  v27 = v26;

  if (v23)
  {
    goto LABEL_14;
  }

  if (v27)
  {
    v28 = 1;
    goto LABEL_17;
  }

LABEL_21:
  result = [a1 name];
  if (result)
  {
    v32 = result;
    [v2 setGivenName_];

    return v2;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CAD368B0()
{
  if (*v0)
  {
    return 0x6E657265666E6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1CAD368F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E657265666E6F63 && a2 == 0xEE006D6F6F526563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

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

uint64_t sub_1CAD369DC(uint64_t a1)
{
  v2 = sub_1CAD3A078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAD36A18(uint64_t a1)
{
  v2 = sub_1CAD3A078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CAD36A54(uint64_t a1)
{
  v2 = sub_1CAD3A0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAD36A90(uint64_t a1)
{
  v2 = sub_1CAD3A0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CAD36ACC(uint64_t a1)
{
  v2 = sub_1CAD3A174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAD36B08(uint64_t a1)
{
  v2 = sub_1CAD3A174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventRecentLocation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468540, &qword_1CAD6A030);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468548, &qword_1CAD6A038);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468550, &qword_1CAD6A040);
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v35 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAD3A078();
  sub_1CAD4EB04();
  v13 = v2[9];
  v52[8] = v2[8];
  v52[9] = v13;
  v52[10] = v2[10];
  v14 = v2[5];
  v52[4] = v2[4];
  v52[5] = v14;
  v15 = v2[7];
  v52[6] = v2[6];
  v52[7] = v15;
  v16 = v2[1];
  v52[0] = *v2;
  v52[1] = v16;
  v17 = v2[3];
  v52[2] = v2[2];
  v52[3] = v17;
  LODWORD(a1) = sub_1CACACF10(v52);
  v18 = (v10 + 8);
  v19 = sub_1CAB32D60(v52);
  if (a1 == 1)
  {
    LOBYTE(v41) = 1;
    sub_1CAD3A0CC();
    v20 = v40;
    sub_1CAD4E8F4();
    v41 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[4];
    v44 = v19[3];
    v45 = v23;
    v42 = v21;
    v43 = v22;
    sub_1CAD3A120();
    v24 = v39;
    sub_1CAD4E984();
    (*(v38 + 8))(v6, v24);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_1CAD3A174();
    v20 = v40;
    sub_1CAD4E8F4();
    v25 = *v19;
    v26 = v19[2];
    v42 = v19[1];
    v43 = v26;
    v41 = v25;
    v27 = v19[3];
    v28 = v19[4];
    v29 = v19[6];
    v46 = v19[5];
    v47 = v29;
    v44 = v27;
    v45 = v28;
    v30 = v19[7];
    v31 = v19[8];
    v32 = v19[10];
    v50 = v19[9];
    v51 = v32;
    v48 = v30;
    v49 = v31;
    sub_1CAD2E330();
    v33 = v37;
    sub_1CAD4E984();
    (*(v36 + 8))(v9, v33);
  }

  return (*v18)(v12, v20);
}

uint64_t EventRecentLocation.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v12[8] = v1[8];
  v12[9] = v3;
  v12[10] = v1[10];
  v4 = v1[5];
  v12[4] = v1[4];
  v12[5] = v4;
  v5 = v1[7];
  v12[6] = v1[6];
  v12[7] = v5;
  v6 = v1[1];
  v12[0] = *v1;
  v12[1] = v6;
  v7 = v1[3];
  v12[2] = v1[2];
  v12[3] = v7;
  v8 = sub_1CACACF10(v12);
  v9 = sub_1CAB32D60(v12);
  if (v8 == 1)
  {
    MEMORY[0x1CCAA7D10](1);
    EventDirectoryRecordModelObject.hash(into:)(a1);
    sub_1CAD4EAA4();
    v10 = *(v9 + 72);
    sub_1CAD4EAA4();
    return MEMORY[0x1CCAA7D10](v10);
  }

  else
  {
    MEMORY[0x1CCAA7D10](0);
    return EventLocationModelObject.hash(into:)(a1);
  }
}

uint64_t EventRecentLocation.hashValue.getter()
{
  sub_1CAD4EA84();
  v1 = v0[9];
  v11[8] = v0[8];
  v11[9] = v1;
  v11[10] = v0[10];
  v2 = v0[5];
  v11[4] = v0[4];
  v11[5] = v2;
  v3 = v0[7];
  v11[6] = v0[6];
  v11[7] = v3;
  v4 = v0[1];
  v11[0] = *v0;
  v11[1] = v4;
  v5 = v0[3];
  v11[2] = v0[2];
  v11[3] = v5;
  v6 = sub_1CACACF10(v11);
  v7 = sub_1CAB32D60(v11);
  if (v6 == 1)
  {
    MEMORY[0x1CCAA7D10](1);
    EventDirectoryRecordModelObject.hash(into:)(v10);
    sub_1CAD4EAA4();
    v8 = *(v7 + 72);
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](v8);
  }

  else
  {
    MEMORY[0x1CCAA7D10](0);
    EventLocationModelObject.hash(into:)(v10);
  }

  return sub_1CAD4EAC4();
}

uint64_t EventRecentLocation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468578, &qword_1CAD6A048);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468580, &qword_1CAD6A050);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468588, &unk_1CAD6A058);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1CAD3A078();
  v14 = v45;
  sub_1CAD4EAE4();
  if (!v14)
  {
    v45 = v7;
    v15 = v6;
    v16 = v43;
    v17 = v12;
    v18 = sub_1CAD4E8D4();
    v19 = (2 * *(v18 + 16)) | 1;
    v79 = v18;
    v80 = v18 + 32;
    v81 = 0;
    v82 = v19;
    v20 = sub_1CAC2CC0C();
    v21 = v10;
    if (v20 == 2 || v81 != v82 >> 1)
    {
      v24 = sub_1CAD4E704();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465018, &qword_1CAD5E740);
      *v26 = &type metadata for EventRecentLocation;
      sub_1CAD4E814();
      sub_1CAD4E6F4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v44 + 8))(v17, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        LOBYTE(v57) = 1;
        sub_1CAD3A0CC();
        v22 = v15;
        v23 = v21;
        sub_1CAD4E804();
        v28 = v16;
        sub_1CAD3A1C8();
        v29 = v41;
        sub_1CAD4E8C4();
        v30 = v44;
        (*(v42 + 8))(v22, v29);
        (*(v30 + 8))(v12, v23);
        swift_unknownObjectRelease();
        v59 = v48;
        v60 = v49;
        v61 = v50;
        v57 = v46;
        v58 = v47;
        sub_1CAD3A21C(&v57);
        v76 = v65;
        v77 = v66;
        v78 = v67;
        v72 = v61;
        v73 = v62;
        v74 = v63;
        v75 = v64;
        v68 = v57;
        v69 = v58;
        v34 = v59;
        v33 = v60;
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_1CAD3A174();
        sub_1CAD4E804();
        v28 = v16;
        sub_1CAD2DFB8();
        v31 = v45;
        sub_1CAD4E8C4();
        v32 = (v44 + 8);
        (*(v40 + 8))(v9, v31);
        (*v32)(v12, v10);
        swift_unknownObjectRelease();
        v54 = v65;
        v55 = v66;
        v56 = v67;
        v50 = v61;
        v51 = v62;
        v52 = v63;
        v53 = v64;
        v46 = v57;
        v47 = v58;
        v48 = v59;
        v49 = v60;
        sub_1CAD3A230(&v46);
        v76 = v54;
        v77 = v55;
        v78 = v56;
        v72 = v50;
        v73 = v51;
        v74 = v52;
        v75 = v53;
        v68 = v46;
        v69 = v47;
        v34 = v48;
        v33 = v49;
      }

      v70 = v34;
      v71 = v33;
      v35 = v77;
      v28[8] = v76;
      v28[9] = v35;
      v28[10] = v78;
      v36 = v73;
      v28[4] = v72;
      v28[5] = v36;
      v37 = v75;
      v28[6] = v74;
      v28[7] = v37;
      v38 = v69;
      *v28 = v68;
      v28[1] = v38;
      v39 = v71;
      v28[2] = v70;
      v28[3] = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_1CAD377A0()
{
  sub_1CAD4EA84();
  EventRecentLocation.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAD377E4(uint64_t a1)
{
  sub_1CAD4EA84();
  EventRecentLocation.hash(into:)(v2);
  return sub_1CAD4EAC4();
}

uint64_t EventLocationSearchResultsModelObject.contactsSearchResults.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EventLocationSearchResultsModelObject.recentsSearchResults.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t EventLocationSearchResultsModelObject.frequentsSearchResults.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t EventLocationSearchResultsModelObject.eventsSearchResults.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t EventLocationSearchResultsModelObject.textualSearchResults.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t EventLocationSearchResultsModelObject.conferenceRoomSearchResults.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t EventLocationSearchResultsModelObject.init(contactsSearchResults:recentsSearchResults:frequentsSearchResults:eventsSearchResults:textualSearchResults:conferenceRoomSearchResults:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t EventLocationSearchResultsModelObject.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  if (*v2)
  {
    sub_1CAD4EAA4();
    sub_1CACBBB48(a1, v5);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1CAD4EAA4();
    if (v4)
    {
LABEL_3:
      sub_1CAD4EAA4();
      sub_1CACBB5C0(a1, v4);
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_1CAD4EAA4();
  if (v7)
  {
LABEL_4:
    sub_1CAD4EAA4();
    sub_1CACBBB48(a1, v7);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1CAD4EAA4();
  if (v6)
  {
LABEL_5:
    sub_1CAD4EAA4();
    sub_1CACBBB48(a1, v6);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_1CAD4EAA4();
    if (v8)
    {
      goto LABEL_7;
    }

    return sub_1CAD4EAA4();
  }

LABEL_13:
  sub_1CAD4EAA4();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1CAD4EAA4();
  sub_1CACBBB48(a1, v9);
  if (!v8)
  {
    return sub_1CAD4EAA4();
  }

LABEL_7:
  sub_1CAD4EAA4();

  return sub_1CACBB438(a1, v8);
}

uint64_t EventLocationSearchResultsModelObject.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_1CAD4EA84();
  EventLocationSearchResultsModelObject.hash(into:)(v3);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAD37BF4()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_1CAD4EA84();
  EventLocationSearchResultsModelObject.hash(into:)(v3);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAD37C4C(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  sub_1CAD4EA84();
  EventLocationSearchResultsModelObject.hash(into:)(v4);
  return sub_1CAD4EAC4();
}

unint64_t sub_1CAD37CA0()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  v3 = 0xD000000000000013;
  v4 = 0xD00000000000001BLL;
  if (v2 == 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CAD37D48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CAD3AED8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CAD37D70(uint64_t a1)
{
  v2 = sub_1CAD3A3D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAD37DAC(uint64_t a1)
{
  v2 = sub_1CAD3A3D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventLocationSearchResultsModelObject.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468598, &qword_1CAD6A068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAD3A3D0();
  sub_1CAD4EAE4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4685A8, &qword_1CAD6A070);
    v23 = 0;
    v9 = sub_1CAD3A424();
    sub_1CAD4E874();
    v22 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4685B8, &qword_1CAD6A078);
    v23 = 1;
    sub_1CAD3A4A8();
    sub_1CAD4E874();
    v11 = v9;
    v12 = v24;
    v23 = 2;
    v21 = v11;
    sub_1CAD4E874();
    v20 = a2;
    v13 = v24;
    v23 = 3;
    sub_1CAD4E874();
    v19 = v6;
    v14 = v24;
    v23 = 4;
    sub_1CAD4E874();
    v15 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B28, &qword_1CAD6A080);
    v23 = 5;
    sub_1CAD3A580();
    sub_1CAD4E874();
    (*(v19 + 8))(v8, v5);
    v16 = v24;
    v17 = v20;
    *v20 = v22;
    v17[1] = v12;
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = v15;
    v17[5] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EventLocationSearchResultsModelObject.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4685D8, &qword_1CAD6A088);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v11 = v1[5];
  v14 = v1[4];
  v15 = v10;
  v13 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAD3A3D0();

  sub_1CAD4EB04();
  v19 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4685A8, &qword_1CAD6A070);
  sub_1CAD3A604();
  sub_1CAD4E924();
  if (v2)
  {
  }

  else
  {

    v19 = v17;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4685B8, &qword_1CAD6A078);
    sub_1CAD3A688();
    sub_1CAD4E924();
    v19 = v16;
    v18 = 2;
    sub_1CAD4E924();
    v19 = v15;
    v18 = 3;
    sub_1CAD4E924();
    v19 = v14;
    v18 = 4;
    sub_1CAD4E924();
    v19 = v13;
    v18 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B28, &qword_1CAD6A080);
    sub_1CAD3A760();
    sub_1CAD4E924();
  }

  return (*(v5 + 8))(v7, v4);
}

void EventLocationSearchResultsModelObject.init(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v204 = a2;
  v3 = sub_1CAD4DDD4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v207 = &v196 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v196 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v196 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v196 - v13;
  v208 = a1;
  v15 = sub_1CAD4DE24();
  v215 = v4;
  v216 = v12;
  v217 = v14;
  v218 = v9;
  if (v15)
  {
    v16 = v15;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
      goto LABEL_20;
    }

    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v18; i = v3)
    {
      v19 = 0;
      v221 = MEMORY[0x1E69E7CC0];
      v9 = v16 & 0xC000000000000001;
      v3 = 176;
      while (v9)
      {
        v20 = MEMORY[0x1CCAA7940](v19, v16);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_18;
        }

LABEL_8:
        *&v240 = &protocol witness table for EKLocationModelWrapper;
        *(&v239 + 1) = &type metadata for EKLocationModelWrapper;
        *&v238 = v20;
        EventLocationModelObject.init(_:)(&v238, &v249);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v221 = sub_1CAD35810(0, *(v221 + 2) + 1, 1, v221);
        }

        v23 = *(v221 + 2);
        v22 = *(v221 + 3);
        if (v23 >= v22 >> 1)
        {
          v221 = sub_1CAD35810((v22 > 1), v23 + 1, 1, v221);
        }

        v24 = v221;
        *(v221 + 2) = v23 + 1;
        v25 = &v24[176 * v23];
        v26 = v249;
        v27 = v251;
        *(v25 + 3) = v250;
        *(v25 + 4) = v27;
        *(v25 + 2) = v26;
        v28 = v252;
        v29 = v253;
        v30 = v255;
        *(v25 + 7) = v254;
        *(v25 + 8) = v30;
        *(v25 + 5) = v28;
        *(v25 + 6) = v29;
        v31 = v256;
        v32 = v257;
        v33 = v259;
        *(v25 + 11) = v258;
        *(v25 + 12) = v33;
        *(v25 + 9) = v31;
        *(v25 + 10) = v32;
        ++v19;
        v14 = v217;
        if (v21 == v18)
        {
          goto LABEL_22;
        }
      }

      if (v19 >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      v20 = *(v16 + 8 * v19 + 32);
      v21 = v19 + 1;
      if (!__OFADD__(v19, 1))
      {
        goto LABEL_8;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v18 = sub_1CAD4E604();
    }

    v221 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v3 = i;
    v4 = v215;
    v12 = v216;
  }

  else
  {
    v221 = 0;
  }

  v34 = sub_1CAD4DE04();
  if (!v34)
  {
    v205 = 0;
    goto LABEL_58;
  }

  v36 = v34;
  v37 = *(v34 + 16);
  if (!v37)
  {
    v205 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  v38 = 0;
  v219 = v4 + 16;
  v214 = v4 + 88;
  v39 = v4 + 8;
  LODWORD(v213) = *MEMORY[0x1E6966800];
  v202 = v37 - 1;
  v203 = (v4 + 96);
  v205 = MEMORY[0x1E69E7CC0];
  LODWORD(v212) = *MEMORY[0x1E69667F8];
  *&v35 = 136315138;
  v206 = v35;
  v210 = v37;
  v211 = v34;
  do
  {
    v40 = v38;
    while (1)
    {
      if (v40 >= *(v36 + 16))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v9 = v39;
      v42 = v36 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v43 = *(v4 + 72);
      i = v40;
      v44 = v42 + v43 * v40;
      v45 = *(v4 + 16);
      v45(v14, v44, v3);
      v45(v12, v14, v3);
      v46 = (*(v4 + 88))(v12, v3);
      if (v46 == v213)
      {
        (*v203)(v12, v3);
        v60 = *v12;
        *&v240 = &protocol witness table for EKLocationModelWrapper;
        *(&v239 + 1) = &type metadata for EKLocationModelWrapper;
        *&v238 = v60;
        EventLocationModelObject.init(_:)(&v238, &v222);
        v246 = v230;
        v247 = v231;
        v248 = v232;
        v242 = v226;
        v243 = v227;
        v244 = v228;
        v245 = v229;
        v238 = v222;
        v239 = v223;
        v240 = v224;
        v241 = v225;
        sub_1CAD3A230(&v238);
        v257 = v246;
        v258 = v247;
        v259 = v248;
        v253 = v242;
        v254 = v243;
        v255 = v244;
        v256 = v245;
        v249 = v238;
        v250 = v239;
        v251 = v240;
        v252 = v241;
        goto LABEL_49;
      }

      if (v46 == v212)
      {
        break;
      }

      v47 = v3;
      if (qword_1EC462388 != -1)
      {
        swift_once();
      }

      v48 = sub_1CAD4C564();
      __swift_project_value_buffer(v48, qword_1EC47D838);
      v49 = v218;
      v45(v218, v14, v47);
      v50 = sub_1CAD4C544();
      v51 = sub_1CAD4E3E4();
      v52 = v9;
      v9 = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (os_log_type_enabled(v50, v51))
      {
        v53 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        *&v238 = v209;
        *v53 = v206;
        v45(v207, v218, v47);
        v54 = sub_1CAD4DFF4();
        v56 = v55;
        v41 = *v52;
        (*v52)(v218, v47);
        v57 = sub_1CAD39738(v54, v56, &v238);
        v3 = v47;
        v4 = v215;

        *(v53 + 4) = v57;
        _os_log_impl(&dword_1CAB19000, v50, v51, "recent has neither a location nor a conference room: %s", v53, 0xCu);
        v58 = v209;
        __swift_destroy_boxed_opaque_existential_1(v209);
        MEMORY[0x1CCAA9440](v58, -1, -1);
        v59 = v53;
        v14 = v217;
        MEMORY[0x1CCAA9440](v59, -1, -1);

        v39 = v52;
      }

      else
      {

        v41 = *v52;
        (*v52)(v49, v47);
        v39 = v52;
        v3 = v47;
        v4 = v215;
      }

      v40 = i + 1;
      v12 = v216;
      v41(v216, v3);
      v41(v14, v3);
      v36 = v211;
      if (v210 == v40)
      {
        goto LABEL_57;
      }
    }

    (*v203)(v12, v3);
    v61 = *v12;
    v62 = [v61 location];
    if (!v62)
    {
      goto LABEL_163;
    }

    v63 = v62;
    v64 = [v63 preferredAddress];
    if (!v64)
    {

      v61 = v63;
LABEL_163:

      __break(1u);
      return;
    }

    v65 = v64;
    v66 = sub_1CAD4DF94();
    v200 = v67;
    v201 = v66;

    v68 = [v63 displayName];
    if (v68)
    {
      v69 = v68;
      v70 = sub_1CAD4DF94();
      v198 = v71;
      v199 = v70;
    }

    else
    {
      v198 = 0;
      v199 = 0;
    }

    v72 = [v63 firstName];
    if (v72)
    {
      v73 = v72;
      v74 = sub_1CAD4DF94();
      v196 = v75;
      v197 = v74;
    }

    else
    {
      v196 = 0;
      v197 = 0;
    }

    v209 = v61;
    v76 = [v63 lastName];
    if (v76)
    {
      v77 = v76;
      v78 = sub_1CAD4DF94();
      v80 = v79;
    }

    else
    {

      v78 = 0;
      v80 = 0;
    }

    *&v233 = v199;
    *(&v233 + 1) = v198;
    *&v234 = v197;
    *(&v234 + 1) = v196;
    *&v235 = v78;
    *(&v235 + 1) = v80;
    *&v236 = v201;
    *(&v236 + 1) = v200;
    v237[0] = v199;
    v237[1] = v198;
    v237[2] = v197;
    v237[3] = v196;
    v237[4] = v78;
    v237[5] = v80;
    v237[6] = v201;
    v237[7] = v200;
    sub_1CABC1A50(&v233, &v238);
    sub_1CABC1AFC(v237);
    v222 = v233;
    v223 = v234;
    v224 = v235;
    v225 = v236;
    v81 = v209;
    v82 = [v209 supportsAvailability];
    v83 = [v81 availabilityRequestInProgress];
    v84 = [v81 availability];

    v238 = v222;
    v239 = v223;
    v240 = v224;
    v241 = v225;
    LOBYTE(v242) = v82;
    BYTE1(v242) = v83;
    *(&v242 + 1) = v84;
    sub_1CAD3A21C(&v238);
    v257 = v246;
    v258 = v247;
    v259 = v248;
    v253 = v242;
    v254 = v243;
    v255 = v244;
    v256 = v245;
    v249 = v238;
    v250 = v239;
    v251 = v240;
    v252 = v241;
    v12 = v216;
    v14 = v217;
LABEL_49:
    (*v9)(v14, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_1CAD356E8(0, *(v205 + 2) + 1, 1, v205);
    }

    v86 = *(v205 + 2);
    v85 = *(v205 + 3);
    if (v86 >= v85 >> 1)
    {
      v205 = sub_1CAD356E8((v85 > 1), v86 + 1, 1, v205);
    }

    v87 = i;
    v38 = i + 1;
    v88 = v205;
    *(v205 + 2) = v86 + 1;
    v89 = &v88[176 * v86];
    v90 = v249;
    v91 = v251;
    *(v89 + 3) = v250;
    *(v89 + 4) = v91;
    *(v89 + 2) = v90;
    v92 = v252;
    v93 = v253;
    v94 = v255;
    *(v89 + 7) = v254;
    *(v89 + 8) = v94;
    *(v89 + 5) = v92;
    *(v89 + 6) = v93;
    v95 = v256;
    v96 = v257;
    v97 = v259;
    *(v89 + 11) = v258;
    *(v89 + 12) = v97;
    *(v89 + 9) = v95;
    *(v89 + 10) = v96;
    v39 = v9;
  }

  while (v202 != v87);
LABEL_57:

LABEL_58:
  v98 = sub_1CAD4DE34();
  if (!v98)
  {
    v101 = 0;
    goto LABEL_81;
  }

  v39 = v98;
  v9 = v98 & 0xFFFFFFFFFFFFFF8;
  if (v98 >> 62)
  {
LABEL_78:
    v99 = sub_1CAD4E604();
    if (v99)
    {
      goto LABEL_61;
    }

    goto LABEL_79;
  }

  v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v99)
  {
LABEL_61:
    v100 = 0;
    v101 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v102 = MEMORY[0x1CCAA7940](v100, v39);
        v103 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v100 >= *(v9 + 16))
        {
          goto LABEL_77;
        }

        v102 = *(v39 + 8 * v100 + 32);
        v103 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          goto LABEL_76;
        }
      }

      *&v240 = &protocol witness table for EKLocationModelWrapper;
      *(&v239 + 1) = &type metadata for EKLocationModelWrapper;
      *&v238 = v102;
      EventLocationModelObject.init(_:)(&v238, &v249);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_1CAD35810(0, *(v101 + 2) + 1, 1, v101);
      }

      v105 = *(v101 + 2);
      v104 = *(v101 + 3);
      v106 = v101;
      if (v105 >= v104 >> 1)
      {
        v106 = sub_1CAD35810((v104 > 1), v105 + 1, 1, v101);
      }

      *(v106 + 2) = v105 + 1;
      v101 = v106;
      v107 = &v106[176 * v105];
      v108 = v249;
      v109 = v251;
      *(v107 + 3) = v250;
      *(v107 + 4) = v109;
      *(v107 + 2) = v108;
      v110 = v252;
      v111 = v253;
      v112 = v255;
      *(v107 + 7) = v254;
      *(v107 + 8) = v112;
      *(v107 + 5) = v110;
      *(v107 + 6) = v111;
      v113 = v256;
      v114 = v257;
      v115 = v259;
      *(v107 + 11) = v258;
      *(v107 + 12) = v115;
      *(v107 + 9) = v113;
      *(v107 + 10) = v114;
      ++v100;
      if (v103 == v99)
      {
        goto LABEL_80;
      }
    }
  }

LABEL_79:
  v101 = MEMORY[0x1E69E7CC0];
LABEL_80:

LABEL_81:
  v116 = sub_1CAD4DDF4();
  v218 = v101;
  if (v116)
  {
    v117 = v116;
    v118 = v116 & 0xFFFFFFFFFFFFFF8;
    if (v116 >> 62)
    {
      goto LABEL_100;
    }

    for (j = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1CAD4E604())
    {
      v120 = 0;
      v121 = MEMORY[0x1E69E7CC0];
      while ((v117 & 0xC000000000000001) != 0)
      {
        v122 = MEMORY[0x1CCAA7940](v120, v117);
        v123 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_98;
        }

LABEL_88:
        *&v240 = &protocol witness table for EKLocationModelWrapper;
        *(&v239 + 1) = &type metadata for EKLocationModelWrapper;
        *&v238 = v122;
        EventLocationModelObject.init(_:)(&v238, &v249);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_1CAD35810(0, *(v121 + 2) + 1, 1, v121);
        }

        v125 = *(v121 + 2);
        v124 = *(v121 + 3);
        if (v125 >= v124 >> 1)
        {
          v121 = sub_1CAD35810((v124 > 1), v125 + 1, 1, v121);
        }

        *(v121 + 2) = v125 + 1;
        v126 = &v121[176 * v125];
        v127 = v249;
        v128 = v251;
        *(v126 + 3) = v250;
        *(v126 + 4) = v128;
        *(v126 + 2) = v127;
        v129 = v252;
        v130 = v253;
        v131 = v255;
        *(v126 + 7) = v254;
        *(v126 + 8) = v131;
        *(v126 + 5) = v129;
        *(v126 + 6) = v130;
        v132 = v256;
        v133 = v257;
        v134 = v259;
        *(v126 + 11) = v258;
        *(v126 + 12) = v134;
        *(v126 + 9) = v132;
        *(v126 + 10) = v133;
        ++v120;
        if (v123 == j)
        {
          goto LABEL_102;
        }
      }

      if (v120 >= *(v118 + 16))
      {
        goto LABEL_99;
      }

      v122 = *(v117 + 8 * v120 + 32);
      v123 = v120 + 1;
      if (!__OFADD__(v120, 1))
      {
        goto LABEL_88;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      ;
    }

    v121 = MEMORY[0x1E69E7CC0];
LABEL_102:

    v101 = v218;
  }

  else
  {
    v121 = 0;
  }

  v135 = sub_1CAD4DE14();
  if (v135)
  {
    v136 = v135;
    v137 = v135 & 0xFFFFFFFFFFFFFF8;
    if (v135 >> 62)
    {
      goto LABEL_122;
    }

    v138 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v121; v138; i = v121)
    {
      v139 = 0;
      v140 = MEMORY[0x1E69E7CC0];
      v121 = v137;
      while ((v136 & 0xC000000000000001) != 0)
      {
        v141 = MEMORY[0x1CCAA7940](v139, v136);
        v142 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          goto LABEL_120;
        }

LABEL_110:
        *&v240 = &protocol witness table for EKLocationModelWrapper;
        *(&v239 + 1) = &type metadata for EKLocationModelWrapper;
        *&v238 = v141;
        EventLocationModelObject.init(_:)(&v238, &v249);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_1CAD35810(0, *(v140 + 2) + 1, 1, v140);
        }

        v144 = *(v140 + 2);
        v143 = *(v140 + 3);
        if (v144 >= v143 >> 1)
        {
          v140 = sub_1CAD35810((v143 > 1), v144 + 1, 1, v140);
        }

        *(v140 + 2) = v144 + 1;
        v145 = &v140[176 * v144];
        v146 = v249;
        v147 = v251;
        *(v145 + 3) = v250;
        *(v145 + 4) = v147;
        *(v145 + 2) = v146;
        v148 = v252;
        v149 = v253;
        v150 = v255;
        *(v145 + 7) = v254;
        *(v145 + 8) = v150;
        *(v145 + 5) = v148;
        *(v145 + 6) = v149;
        v151 = v256;
        v152 = v257;
        v153 = v259;
        *(v145 + 11) = v258;
        *(v145 + 12) = v153;
        *(v145 + 9) = v151;
        *(v145 + 10) = v152;
        ++v139;
        v137 = v121;
        if (v142 == v138)
        {
          goto LABEL_124;
        }
      }

      if (v139 >= *(v137 + 16))
      {
        goto LABEL_121;
      }

      v141 = *(v136 + 8 * v139 + 32);
      v142 = v139 + 1;
      if (!__OFADD__(v139, 1))
      {
        goto LABEL_110;
      }

LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      v138 = sub_1CAD4E604();
    }

    v140 = MEMORY[0x1E69E7CC0];
LABEL_124:

    v101 = v218;
    v121 = i;
  }

  else
  {
    v140 = 0;
  }

  i = sub_1CAD4DDE4();
  if (!i)
  {
    v192 = 0;
    goto LABEL_161;
  }

  v154 = i & 0xFFFFFFFFFFFFFF8;
  if (!(i >> 62))
  {
    v155 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v155)
    {
      goto LABEL_128;
    }

LABEL_159:
    v217 = MEMORY[0x1E69E7CC0];
    goto LABEL_160;
  }

  while (2)
  {
    v155 = sub_1CAD4E604();
    if (!v155)
    {
      goto LABEL_159;
    }

LABEL_128:
    v156 = 0;
    v219 = i & 0xC000000000000001;
    v217 = MEMORY[0x1E69E7CC0];
LABEL_129:
    v157 = v156;
LABEL_132:
    if (v219)
    {
      v159 = MEMORY[0x1CCAA7940](v157, i);
    }

    else
    {
      if (v157 >= *(v154 + 16))
      {
        goto LABEL_157;
      }

      v159 = *(i + 8 * v157 + 32);
    }

    v160 = v159;
    v156 = v157 + 1;
    if (__OFADD__(v157, 1))
    {
      __break(1u);
LABEL_157:
      __break(1u);
      continue;
    }

    break;
  }

  v161 = [v159 location];
  if (!v161)
  {
    v158 = v160;
    goto LABEL_131;
  }

  v162 = v154;
  v158 = v161;
  v163 = [v158 preferredAddress];
  if (!v163)
  {

LABEL_131:
    ++v157;
    if (v156 == v155)
    {
      goto LABEL_160;
    }

    goto LABEL_132;
  }

  v164 = v163;
  v165 = sub_1CAD4DF94();
  v215 = v166;
  v216 = v165;

  v167 = [v158 displayName];
  if (v167)
  {
    v168 = v167;
    v169 = sub_1CAD4DF94();
    v213 = v170;
    v214 = v169;
  }

  else
  {
    v213 = 0;
    v214 = 0;
  }

  v171 = [v158 firstName];
  if (v171)
  {
    v172 = v171;
    v173 = sub_1CAD4DF94();
    v211 = v174;
    v212 = v173;
  }

  else
  {
    v211 = 0;
    v212 = 0;
  }

  v175 = [v158 lastName];
  if (v175)
  {
    v176 = v175;
    v210 = sub_1CAD4DF94();
    v178 = v177;

    v179 = v210;
  }

  else
  {

    v179 = 0;
    v178 = 0;
  }

  v154 = v162;
  *&v222 = v214;
  *(&v222 + 1) = v213;
  *&v223 = v212;
  *(&v223 + 1) = v211;
  *&v224 = v179;
  *(&v224 + 1) = v178;
  *&v225 = v216;
  *(&v225 + 1) = v215;
  *&v238 = v214;
  *(&v238 + 1) = v213;
  *&v239 = v212;
  *(&v239 + 1) = v211;
  *&v240 = v179;
  *(&v240 + 1) = v178;
  *&v241 = v216;
  *(&v241 + 1) = v215;
  sub_1CABC1A50(&v222, &v249);
  sub_1CABC1AFC(&v238);
  v249 = v222;
  v250 = v223;
  v251 = v224;
  v252 = v225;
  LODWORD(v216) = [v160 supportsAvailability];
  v180 = [v160 availabilityRequestInProgress];
  v181 = [v160 availability];

  v182 = v217;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v182 = sub_1CAD34F64(0, *(v182 + 2) + 1, 1, v182);
  }

  v183 = v182;
  v184 = *(v182 + 2);
  v185 = v183;
  v186 = *(v183 + 3);
  if (v184 >= v186 >> 1)
  {
    v185 = sub_1CAD34F64((v186 > 1), v184 + 1, 1, v185);
  }

  v217 = v185;
  *(v185 + 2) = v184 + 1;
  v187 = &v185[80 * v184];
  v188 = v249;
  v189 = v250;
  v190 = v252;
  *(v187 + 4) = v251;
  *(v187 + 5) = v190;
  *(v187 + 2) = v188;
  *(v187 + 3) = v189;
  v187[96] = v216;
  v187[97] = v180;
  v191 = WORD2(v237[0]);
  *(v187 + 98) = v237[0];
  *(v187 + 51) = v191;
  *(v187 + 13) = v181;
  if (v156 != v155)
  {
    goto LABEL_129;
  }

LABEL_160:

  v192 = v217;
  v101 = v218;
LABEL_161:
  v193 = sub_1CAD4DE44();
  (*(*(v193 - 8) + 8))(v208, v193);
  v194 = v204;
  v195 = v205;
  *v204 = v221;
  v194[1] = v195;
  v194[2] = v101;
  v194[3] = v121;
  v194[4] = v140;
  v194[5] = v192;
}

unint64_t sub_1CAD39738(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CAD39804(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1CABD3CDC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1CAD39804(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1CAD39910(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1CAD4E714();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1CAD39910(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CAD3995C(a1, a2);
  sub_1CAD39A8C(&unk_1F4A9FCE8);
  return v3;
}

void *sub_1CAD3995C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CAD39B78(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1CAD4E714();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1CAD4E0D4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CAD39B78(v10, 0);
        result = sub_1CAD4E684();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1CAD39A8C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1CAD39BEC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1CAD39B78(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468670, &qword_1CAD6A8B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CAD39BEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468670, &qword_1CAD6A8B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t _s13CalendarUIKit19EventRecentLocationO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v79 = a1[8];
  v80 = v3;
  v4 = a1[9];
  v81 = a1[10];
  v5 = a1[3];
  v6 = a1[5];
  v75 = a1[4];
  v76 = v6;
  v7 = a1[5];
  v8 = a1[7];
  v77 = a1[6];
  v78 = v8;
  v9 = a1[1];
  v72[0] = *a1;
  v72[1] = v9;
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v73 = a1[2];
  v74 = v10;
  v13 = a2[7];
  v14 = a2[9];
  v90 = a2[8];
  v91 = v14;
  v15 = a2[9];
  v92 = a2[10];
  v16 = a2[3];
  v17 = a2[5];
  v86 = a2[4];
  v87 = v17;
  v18 = a2[5];
  v19 = a2[7];
  v88 = a2[6];
  v89 = v19;
  v20 = a2[1];
  v82 = *a2;
  v83 = v20;
  v21 = a2[3];
  v23 = *a2;
  v22 = a2[1];
  v84 = a2[2];
  v85 = v21;
  v24 = a1[7];
  v25 = a1[9];
  v93[8] = a1[8];
  v93[9] = v25;
  v26 = a1[3];
  v27 = a1[5];
  v93[4] = a1[4];
  v93[5] = v27;
  v28 = a1[6];
  v93[7] = v24;
  v93[6] = v28;
  v29 = a1[1];
  v93[0] = *a1;
  v93[1] = v29;
  v30 = a1[2];
  v93[3] = v26;
  v93[2] = v30;
  v93[18] = v13;
  v93[19] = v90;
  v31 = a2[10];
  v93[20] = v15;
  v93[21] = v31;
  v93[14] = v16;
  v93[15] = v86;
  v93[16] = v18;
  v93[17] = v88;
  v93[10] = a1[10];
  v93[11] = v23;
  v93[12] = v22;
  v93[13] = v84;
  v94[8] = v79;
  v94[9] = v4;
  v94[10] = a1[10];
  v94[4] = v75;
  v94[5] = v7;
  v94[6] = v77;
  v94[7] = v2;
  v94[0] = v11;
  v94[1] = v12;
  v94[2] = v73;
  v94[3] = v5;
  if (sub_1CACACF10(v94) == 1)
  {
    v32 = sub_1CAB32D60(v94);
    v69 = v90;
    v70 = v91;
    v71 = v92;
    v65 = v86;
    v66 = v87;
    v67 = v88;
    v68 = v89;
    v61 = v82;
    v62 = v83;
    v63 = v84;
    v64 = v85;
    v33 = sub_1CACACF10(&v61);
    v34 = sub_1CAB32D60(&v61);
    if (v33 == 1)
    {
      v35 = v32[3];
      v51 = v32[2];
      v52 = v35;
      v53 = v32[4];
      v36 = v32[1];
      v49 = *v32;
      v50 = v36;
      v48[1] = v34[1];
      v48[2] = v34[2];
      v48[3] = v34[3];
      v48[4] = v34[4];
      v48[0] = *v34;
      sub_1CACACF1C(&v82, v60);
      sub_1CACACF1C(v72, v60);
      sub_1CACACF1C(v72, v60);
      sub_1CACACF1C(&v82, v60);
      v37 = _s13CalendarUIKit30EventConferenceRoomModelObjectV2eeoiySbAC_ACtFZ_0(&v49, v48);
LABEL_7:
      v41 = v37;
      sub_1CAD3B0D8(v93);
      sub_1CACACF78(&v82);
      sub_1CACACF78(v72);
      return v41 & 1;
    }
  }

  else
  {
    v38 = sub_1CAB32D60(v94);
    v69 = v90;
    v70 = v91;
    v71 = v92;
    v65 = v86;
    v66 = v87;
    v67 = v88;
    v68 = v89;
    v61 = v82;
    v62 = v83;
    v63 = v84;
    v64 = v85;
    v39 = sub_1CACACF10(&v61);
    v40 = sub_1CAB32D60(&v61);
    if (v39 != 1)
    {
      v60[7] = v38[7];
      v60[8] = v38[8];
      v60[9] = v38[9];
      v60[10] = v38[10];
      v60[3] = v38[3];
      v60[4] = v38[4];
      v60[5] = v38[5];
      v60[6] = v38[6];
      v60[0] = *v38;
      v60[1] = v38[1];
      v60[2] = v38[2];
      v42 = v40[9];
      v57 = v40[8];
      v58 = v42;
      v59 = v40[10];
      v43 = v40[5];
      v53 = v40[4];
      v54 = v43;
      v44 = v40[7];
      v55 = v40[6];
      v56 = v44;
      v45 = v40[1];
      v49 = *v40;
      v50 = v45;
      v46 = v40[3];
      v51 = v40[2];
      v52 = v46;
      sub_1CACACF1C(&v82, v48);
      sub_1CACACF1C(v72, v48);
      sub_1CACACF1C(v72, v48);
      sub_1CACACF1C(&v82, v48);
      v37 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(v60, &v49);
      goto LABEL_7;
    }
  }

  sub_1CACACF1C(v72, &v61);
  sub_1CACACF1C(&v82, &v61);
  sub_1CAD3B0D8(v93);
  v41 = 0;
  return v41 & 1;
}

unint64_t sub_1CAD3A078()
{
  result = qword_1EC468558;
  if (!qword_1EC468558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468558);
  }

  return result;
}

unint64_t sub_1CAD3A0CC()
{
  result = qword_1EC468560;
  if (!qword_1EC468560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468560);
  }

  return result;
}

unint64_t sub_1CAD3A120()
{
  result = qword_1EC468568;
  if (!qword_1EC468568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468568);
  }

  return result;
}

unint64_t sub_1CAD3A174()
{
  result = qword_1EC468570;
  if (!qword_1EC468570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468570);
  }

  return result;
}

unint64_t sub_1CAD3A1C8()
{
  result = qword_1EC468590;
  if (!qword_1EC468590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468590);
  }

  return result;
}

uint64_t _s13CalendarUIKit37EventLocationSearchResultsModelObjectV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v18 = a2[5];
  v19 = a1[5];
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v12 = sub_1CACA709C(v2, v7);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = sub_1CACA7288(v3, v8);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    v14 = sub_1CACA709C(v5, v10);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    v15 = sub_1CACA709C(v4, v9);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v16 = sub_1CACA709C(v6, v11);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v19)
  {
    if (v18 && (sub_1CACA788C(v19, v18) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1CAD3A3D0()
{
  result = qword_1EC4685A0;
  if (!qword_1EC4685A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4685A0);
  }

  return result;
}

unint64_t sub_1CAD3A424()
{
  result = qword_1EC4685B0;
  if (!qword_1EC4685B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4685A8, &qword_1CAD6A070);
    sub_1CAD2DFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4685B0);
  }

  return result;
}

unint64_t sub_1CAD3A4A8()
{
  result = qword_1EC4685C0;
  if (!qword_1EC4685C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4685B8, &qword_1CAD6A078);
    sub_1CAD3A52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4685C0);
  }

  return result;
}

unint64_t sub_1CAD3A52C()
{
  result = qword_1EC4685C8;
  if (!qword_1EC4685C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4685C8);
  }

  return result;
}

unint64_t sub_1CAD3A580()
{
  result = qword_1EC4685D0;
  if (!qword_1EC4685D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467B28, &qword_1CAD6A080);
    sub_1CAD3A1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4685D0);
  }

  return result;
}

unint64_t sub_1CAD3A604()
{
  result = qword_1EC4685E0;
  if (!qword_1EC4685E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4685A8, &qword_1CAD6A070);
    sub_1CAD2E330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4685E0);
  }

  return result;
}

unint64_t sub_1CAD3A688()
{
  result = qword_1EC4685E8;
  if (!qword_1EC4685E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4685B8, &qword_1CAD6A078);
    sub_1CAD3A70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4685E8);
  }

  return result;
}

unint64_t sub_1CAD3A70C()
{
  result = qword_1EC4685F0;
  if (!qword_1EC4685F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4685F0);
  }

  return result;
}

unint64_t sub_1CAD3A760()
{
  result = qword_1EC4685F8;
  if (!qword_1EC4685F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467B28, &qword_1CAD6A080);
    sub_1CAD3A120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4685F8);
  }

  return result;
}

unint64_t sub_1CAD3A7E8()
{
  result = qword_1EC468600;
  if (!qword_1EC468600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468600);
  }

  return result;
}

unint64_t sub_1CAD3A840()
{
  result = qword_1EC468608;
  if (!qword_1EC468608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468608);
  }

  return result;
}

uint64_t sub_1CAD3A8A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80) >> 1;
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

double sub_1CAD3A8F0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 168) = 0;
    result = 0.0;
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
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 176) = 1;
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
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 2 * -a2;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0;
      return result;
    }

    *(a1 + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CAD3A9AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CAD3AA08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1CAD3AABC()
{
  result = qword_1EC468610;
  if (!qword_1EC468610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468610);
  }

  return result;
}

unint64_t sub_1CAD3AB14()
{
  result = qword_1EC468618;
  if (!qword_1EC468618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468618);
  }

  return result;
}

unint64_t sub_1CAD3AB6C()
{
  result = qword_1EC468620;
  if (!qword_1EC468620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468620);
  }

  return result;
}

unint64_t sub_1CAD3ABC4()
{
  result = qword_1EC468628;
  if (!qword_1EC468628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468628);
  }

  return result;
}

unint64_t sub_1CAD3AC1C()
{
  result = qword_1EC468630;
  if (!qword_1EC468630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468630);
  }

  return result;
}

unint64_t sub_1CAD3AC74()
{
  result = qword_1EC468638;
  if (!qword_1EC468638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468638);
  }

  return result;
}

unint64_t sub_1CAD3ACCC()
{
  result = qword_1EC468640;
  if (!qword_1EC468640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468640);
  }

  return result;
}

unint64_t sub_1CAD3AD24()
{
  result = qword_1EC468648;
  if (!qword_1EC468648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468648);
  }

  return result;
}

unint64_t sub_1CAD3AD7C()
{
  result = qword_1EC468650;
  if (!qword_1EC468650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468650);
  }

  return result;
}

unint64_t sub_1CAD3ADD4()
{
  result = qword_1EC468658;
  if (!qword_1EC468658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468658);
  }

  return result;
}

unint64_t sub_1CAD3AE2C()
{
  result = qword_1EC468660;
  if (!qword_1EC468660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468660);
  }

  return result;
}

unint64_t sub_1CAD3AE84()
{
  result = qword_1EC468668;
  if (!qword_1EC468668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468668);
  }

  return result;
}

uint64_t sub_1CAD3AED8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001CAD77A10 == a2;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CAD77A30 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001CAD77A50 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CAD77A70 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CAD77A90 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001CAD77AB0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

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

uint64_t sub_1CAD3B0D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4667F0, &qword_1CAD65030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1CAD3B144()
{
  swift_getKeyPath("X-q!");
  *&v9[0] = v0;
  sub_1CAC5ACF8();
  sub_1CAD4C424();

  v1 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing;
  if ((*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing) & 1) == 0)
  {
    swift_getKeyPath("X-q!");
    *&v9[0] = v0;
    sub_1CAD4C424();

    if (*(v0 + v1))
    {
      return 0;
    }

    swift_getKeyPath(byte_1CAD6A9A8);
    sub_1CAD4C424();

    v3 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
    v9[8] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
    v9[9] = v3;
    v9[10] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 160);
    v4 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 80);
    v9[4] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 64);
    v9[5] = v4;
    v5 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 112);
    v9[6] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 96);
    v9[7] = v5;
    v6 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 16);
    v9[0] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
    v9[1] = v6;
    v7 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 48);
    v9[2] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 32);
    v9[3] = v7;
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v9) == 1)
    {
      return sub_1CAD3B930();
    }
  }

  return 1;
}

BOOL sub_1CAD3B2A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC8, &qword_1CAD64240);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  swift_getKeyPath("X-q!");
  v10 = v0;
  sub_1CAC5ACF8();
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing;
  if (*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing))
  {
    return 1;
  }

  swift_getKeyPath("X-q!");
  v10 = v0;
  sub_1CAD4C424();

  if (*(v0 + v4))
  {
    return 0;
  }

  swift_getKeyPath(byte_1CAD6A958);
  v10 = v0;
  sub_1CAD4C424();

  if (*(*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____displayPeople) + 16))
  {
    return 1;
  }

  swift_getKeyPath(byte_1CAD6A980);
  v10 = v0;
  sub_1CAD4C424();

  v6 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__displayOrganizer;
  swift_beginAccess();
  sub_1CAB23A9C(v0 + v6, v3, &qword_1EC465AC8, &qword_1CAD64240);
  v7 = type metadata accessor for DisplayOrganizerPerson(0);
  v8 = (*(*(v7 - 8) + 48))(v3, 1, v7) != 1;
  sub_1CAB21B68(v3, &qword_1EC465AC8, &qword_1CAD64240);
  return v8;
}

BOOL sub_1CAD3B4D8()
{
  v1 = v0;
  swift_getKeyPath("X-q!");
  sub_1CAC5ACF8();
  sub_1CAD4C424();

  v2 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing;
  if (*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing))
  {
    return 1;
  }

  swift_getKeyPath("X-q!");
  sub_1CAD4C424();

  if (*(v0 + v2))
  {
    return 0;
  }

  swift_getKeyPath(byte_1CAD6A930);
  sub_1CAD4C424();

  v4 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__url + 8);
  if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__url) & 0xFFFFFFFFFFFFLL)
  {
    return 1;
  }

  swift_getKeyPath("8-q!");
  sub_1CAD4C424();

  v6 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__attachments;
  swift_beginAccess();
  if (*(*(v1 + v6) + 16))
  {
    return 1;
  }

  swift_getKeyPath(byte_1CAD6A908);
  sub_1CAD4C424();

  v7 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__notes + 8);
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__notes) & 0xFFFFFFFFFFFFLL;
  }

  return v8 != 0;
}

BOOL sub_1CAD3B6D4(const char *a1, void *a2)
{
  swift_getKeyPath("X-q!");
  sub_1CAC5ACF8();
  sub_1CAD4C424();

  v5 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing;
  if (*(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing))
  {
    return 1;
  }

  swift_getKeyPath("X-q!");
  sub_1CAD4C424();

  if (*(v2 + v5))
  {
    return 0;
  }

  swift_getKeyPath(a1);
  sub_1CAD4C424();

  v7 = (v2 + *a2);
  v9 = *v7;
  v8 = v7[1];
  v10 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v11 = v10;
  }

  return v11 != 0;
}

BOOL sub_1CAD3B804()
{
  v1 = v0;
  swift_getKeyPath("X-q!");
  sub_1CAC5ACF8();
  sub_1CAD4C424();

  v2 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing;
  if (*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing))
  {
    return 1;
  }

  swift_getKeyPath("X-q!");
  sub_1CAD4C424();

  if (*(v0 + v2))
  {
    return 0;
  }

  swift_getKeyPath("8-q!");
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__attachments;
  swift_beginAccess();
  return *(*(v1 + v4) + 16) != 0;
}

BOOL sub_1CAD3B930()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40, &qword_1CAD5E390);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath("x,q!");
  v12 = v0;
  sub_1CAC5ACF8();
  sub_1CAD4C424();

  v5 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v6 = type metadata accessor for EventModelObject(0);
  sub_1CAB23A9C(v5 + *(v6 + 60), v4, &qword_1EC467A40, &qword_1CAD5E390);
  v7 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v8 = 1;
  v9 = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_1CAB21B68(v4, &qword_1EC467A40, &qword_1CAD5E390);
  if (v9 == 1)
  {
    swift_getKeyPath("X,q!");
    v11 = v1;
    sub_1CAD4C424();

    return *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus + 8) != 0;
  }

  return v8;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1CAD3BB18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1CAD3BB60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CAD3BBEC@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v171 = a2;
  v3 = sub_1CAD4CDC4();
  v158 = *(v3 - 8);
  v159 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v157 = v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DC0, &unk_1CAD5E030);
  v152 = *(v5 - 8);
  v153 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v151 = v145 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468698, &qword_1CAD6AAE0);
  v155 = *(v7 - 8);
  v156 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v154 = v145 - v8;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686A0, &qword_1CAD6AAE8);
  MEMORY[0x1EEE9AC00](v160);
  v161 = v145 - v9;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686A8, &qword_1CAD6AAF0);
  v10 = MEMORY[0x1EEE9AC00](v162);
  v183 = v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v188 = v145 - v12;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686B0, &qword_1CAD6AAF8);
  v13 = MEMORY[0x1EEE9AC00](v173);
  v181 = v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v182 = v145 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v186 = v145 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v187 = v145 - v19;
  v180 = sub_1CAD4CF64();
  v185 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686B8, &qword_1CAD6AB00);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v164 = v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v145 - v24;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686C0, &qword_1CAD6AB08);
  v26 = MEMORY[0x1EEE9AC00](v174);
  v167 = v145 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v145 - v28;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686C8, &qword_1CAD6AB10);
  v30 = MEMORY[0x1EEE9AC00](v176);
  v165 = v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v145 - v32;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686D0, &qword_1CAD6AB18);
  v34 = MEMORY[0x1EEE9AC00](v175);
  v166 = v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v145 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686D8, &qword_1CAD6AB20);
  v169 = *(v38 - 8);
  v170 = v38;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v168 = v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v179 = v145 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v177 = v145 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v184 = v145 - v45;
  v46 = swift_allocObject();
  v47 = a1[5];
  *(v46 + 80) = a1[4];
  *(v46 + 96) = v47;
  *(v46 + 112) = a1[6];
  *(v46 + 128) = *(a1 + 112);
  v48 = a1[1];
  *(v46 + 16) = *a1;
  *(v46 + 32) = v48;
  v49 = a1[3];
  *(v46 + 48) = a1[2];
  *(v46 + 64) = v49;
  sub_1CABA634C(a1, &v192);
  sub_1CAD4D9E4();
  v51 = *(a1 + 9);
  v50 = *(a1 + 10);
  sub_1CAD4DC94();
  v149 = v51;
  v150 = v50;
  sub_1CAD4C744();
  v163 = v21;
  v52 = &v25[*(v21 + 36)];
  v53 = v195[1];
  *v52 = v195[0];
  *(v52 + 1) = v53;
  *(v52 + 2) = v195[2];
  v197 = *a1;
  v198 = *(a1 + 2);
  v192 = *a1;
  *&v193 = *(a1 + 2);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686E0, &qword_1CAD6AB28);
  MEMORY[0x1CCAA6D30](v196);
  if (*&v196[0] < 2)
  {
    v54 = 1;
  }

  else
  {
    v54 = *(a1 + 40);
  }

  KeyPath = swift_getKeyPath(byte_1CAD6AB30);
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  sub_1CABA62E4(v25, v29, &qword_1EC4686B8, &qword_1CAD6AB00);
  v57 = &v29[*(v174 + 36)];
  *v57 = KeyPath;
  v57[1] = sub_1CAD3D78C;
  v57[2] = v56;
  v192 = v197;
  *&v193 = v198;
  MEMORY[0x1CCAA6D30](v196, v172);
  if (*&v196[0] < 2 || (*(a1 + 40) & 1) != 0)
  {
    v58 = sub_1CAD4D8B4();
  }

  else
  {
    v58 = sub_1CAD4D8A4();
  }

  v59 = v58;
  v60 = swift_getKeyPath(byte_1CAD6AB60);
  sub_1CABA62E4(v29, v33, &qword_1EC4686C0, &qword_1CAD6AB08);
  v61 = &v33[*(v176 + 36)];
  *v61 = v60;
  v61[1] = v59;
  sub_1CABA62E4(v33, v37, &qword_1EC4686C8, &qword_1CAD6AB10);
  v37[*(v175 + 36)] = 0;
  v62 = v178;
  sub_1CAD4CF54();
  v63 = sub_1CAD3D794();
  v64 = sub_1CAD3DAE4(&qword_1EC464380, MEMORY[0x1E697C728], MEMORY[0x1E697C710]);
  v65 = v180;
  v147 = v64;
  v148 = v63;
  sub_1CAD4D4E4();
  v66 = *(v185 + 8);
  v185 += 8;
  v146 = v66;
  v66(v62, v65);
  sub_1CAB21B68(v37, &qword_1EC4686D0, &qword_1CAD6AB18);
  v67 = v187;
  sub_1CAD4DB44();
  LOBYTE(v59) = sub_1CAD4D224();
  sub_1CAD4C5F4();
  v68 = v67 + *(v173 + 36);
  *v68 = v59;
  *(v68 + 8) = v69;
  *(v68 + 16) = v70;
  *(v68 + 24) = v71;
  *(v68 + 32) = v72;
  *(v68 + 40) = 0;
  sub_1CAD4E2C4();
  sub_1CABA634C(a1, &v192);
  v73 = sub_1CAD4E2B4();
  v74 = swift_allocObject();
  v75 = MEMORY[0x1E69E85E0];
  *(v74 + 16) = v73;
  *(v74 + 24) = v75;
  v76 = a1[5];
  *(v74 + 96) = a1[4];
  *(v74 + 112) = v76;
  *(v74 + 128) = a1[6];
  *(v74 + 144) = *(a1 + 112);
  v77 = a1[1];
  *(v74 + 32) = *a1;
  *(v74 + 48) = v77;
  v78 = a1[3];
  *(v74 + 64) = a1[2];
  *(v74 + 80) = v78;
  sub_1CABA634C(a1, &v192);
  v79 = sub_1CAD4E2B4();
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v75;
  v81 = a1[5];
  *(v80 + 96) = a1[4];
  *(v80 + 112) = v81;
  *(v80 + 128) = a1[6];
  *(v80 + 144) = *(a1 + 112);
  v82 = a1[1];
  *(v80 + 32) = *a1;
  *(v80 + 48) = v82;
  v83 = a1[3];
  *(v80 + 64) = a1[2];
  *(v80 + 80) = v83;
  sub_1CAD4DAF4();
  v84 = v192;
  v85 = *(&v193 + 1);
  sub_1CAD4CD04();

  v86 = v151;
  v145[2] = *(&v84 + 1);
  v145[3] = v84;
  v145[1] = v85;
  sub_1CAD4DD14();
  v87 = sub_1CAB23B0C(&qword_1EC464DC8, &qword_1EC464DC0, &unk_1CAD5E030, MEMORY[0x1E697D7D8]);
  v89 = v153;
  v88 = v154;
  sub_1CAD4D524();
  (*(v152 + 8))(v86, v89);
  v90 = v157;
  sub_1CAD4CDB4();
  *&v192 = v89;
  *(&v192 + 1) = v87;
  swift_getOpaqueTypeConformance2();
  sub_1CAD3DAE4(&qword_1EC464DD0, MEMORY[0x1E697C5B8], MEMORY[0x1E697C5A0]);
  v91 = v161;
  v92 = v156;
  v93 = v159;
  sub_1CAD4D594();
  (*(v158 + 8))(v90, v93);
  (*(v155 + 8))(v88, v92);
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v94 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468728, &qword_1CAD6ABA0) + 36));
  v95 = v196[1];
  *v94 = v196[0];
  v94[1] = v95;
  v94[2] = v196[2];
  v96 = swift_getKeyPath("H+q!");
  v97 = v91 + *(v160 + 36);
  *v97 = v96;
  *(v97 + 8) = 1;
  v192 = a1[6];
  LOBYTE(v193) = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EA8, &qword_1CAD5B8C8);
  sub_1CAD4C624();
  sub_1CAD3DB2C();
  v98 = v188;
  sub_1CAD4D704();

  sub_1CAB21B68(v91, &qword_1EC4686A0, &qword_1CAD6AAE8);
  v99 = *(a1 + 40);
  v100 = swift_getKeyPath(byte_1CAD6AB30);
  v101 = swift_allocObject();
  *(v101 + 16) = v99;
  v102 = (v98 + *(v162 + 36));
  *v102 = v100;
  v102[1] = sub_1CAD3E0B0;
  v102[2] = v101;
  v103 = v186;
  sub_1CAD4DB44();
  LOBYTE(v100) = sub_1CAD4D224();
  sub_1CAD4C5F4();
  v104 = v103 + *(v173 + 36);
  *v104 = v100;
  *(v104 + 8) = v105;
  *(v104 + 16) = v106;
  *(v104 + 24) = v107;
  *(v104 + 32) = v108;
  *(v104 + 40) = 0;
  v109 = swift_allocObject();
  v110 = a1[5];
  *(v109 + 80) = a1[4];
  *(v109 + 96) = v110;
  *(v109 + 112) = a1[6];
  *(v109 + 128) = *(a1 + 112);
  v111 = a1[1];
  *(v109 + 16) = *a1;
  *(v109 + 32) = v111;
  v112 = a1[3];
  *(v109 + 48) = a1[2];
  *(v109 + 64) = v112;
  sub_1CABA634C(a1, &v192);
  v113 = v164;
  sub_1CAD4D9E4();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v114 = &v113[*(v163 + 36)];
  v115 = v193;
  *v114 = v192;
  *(v114 + 1) = v115;
  *(v114 + 2) = v194;
  v190 = v197;
  v191 = v198;
  v116 = v172;
  MEMORY[0x1CCAA6D30](&v189, v172);
  v117 = *(a1 + 11);
  LOBYTE(v92) = (v189 >= v117) | v99;
  v118 = swift_getKeyPath(byte_1CAD6AB30);
  v119 = swift_allocObject();
  *(v119 + 16) = v92 & 1;
  v120 = v113;
  v121 = v167;
  sub_1CABA62E4(v120, v167, &qword_1EC4686B8, &qword_1CAD6AB00);
  v122 = (v121 + *(v174 + 36));
  *v122 = v118;
  v122[1] = sub_1CAD3E0B0;
  v122[2] = v119;
  v190 = v197;
  v191 = v198;
  MEMORY[0x1CCAA6D30](&v189, v116);
  if (v189 >= v117 || v99)
  {
    v123 = sub_1CAD4D8B4();
  }

  else
  {
    v123 = sub_1CAD4D8A4();
  }

  v124 = v123;
  v125 = swift_getKeyPath(byte_1CAD6AB60);
  v126 = v121;
  v127 = v165;
  sub_1CABA62E4(v126, v165, &qword_1EC4686C0, &qword_1CAD6AB08);
  v128 = (v127 + *(v176 + 36));
  *v128 = v125;
  v128[1] = v124;
  v129 = v166;
  sub_1CABA62E4(v127, v166, &qword_1EC4686C8, &qword_1CAD6AB10);
  *(v129 + *(v175 + 36)) = 0;
  v130 = v178;
  sub_1CAD4CF54();
  v131 = v177;
  v132 = v180;
  sub_1CAD4D4E4();
  v146(v130, v132);
  sub_1CAB21B68(v129, &qword_1EC4686D0, &qword_1CAD6AB18);
  v133 = v169;
  v134 = v170;
  v135 = *(v169 + 16);
  v136 = v179;
  v135(v179, v184, v170);
  v137 = v182;
  sub_1CAD3DDC4(v187, v182);
  v138 = v183;
  sub_1CAB37E20(v188, v183);
  sub_1CAD3DDC4(v186, v181);
  v139 = v168;
  v135(v168, v131, v134);
  v140 = v171;
  v135(v171, v136, v134);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468740, &qword_1CAD6ABD8);
  sub_1CAD3DDC4(v137, &v140[v141[12]]);
  sub_1CAB37E20(v138, &v140[v141[16]]);
  v142 = v181;
  sub_1CAD3DDC4(v181, &v140[v141[20]]);
  v135(&v140[v141[24]], v139, v134);

  v143 = *(v133 + 8);
  v143(v177, v134);
  sub_1CAB21B68(v186, &qword_1EC4686B0, &qword_1CAD6AAF8);
  sub_1CAB21B68(v188, &qword_1EC4686A8, &qword_1CAD6AAF0);
  sub_1CAB21B68(v187, &qword_1EC4686B0, &qword_1CAD6AAF8);
  v143(v184, v134);
  v143(v139, v134);
  sub_1CAB21B68(v142, &qword_1EC4686B0, &qword_1CAD6AAF8);
  sub_1CAB21B68(v183, &qword_1EC4686A8, &qword_1CAD6AAF0);
  sub_1CAB21B68(v182, &qword_1EC4686B0, &qword_1CAD6AAF8);
  return (v143)(v179, v134);
}

void *sub_1CAD3CED0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v8 = v3;
  v9 = v2;
  v6 = v2;
  v7 = v1;
  sub_1CAC546A8(&v9, &v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686E0, &qword_1CAD6AB28);
  result = MEMORY[0x1CCAA6D30](&v5);
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v2;
    v7 = v1;
    v8 = v3;
    --v5;
    sub_1CAD4DAC4();
    sub_1CAD3DE34(&v9);
  }

  return result;
}

uint64_t sub_1CAD3CF88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAD4D8F4();
  *a1 = result;
  return result;
}

uint64_t sub_1CAD3CFC0@<X0>(__int128 *a1@<X2>, uint64_t *a2@<X8>)
{
  v15 = a1[6];
  LOBYTE(v16) = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EA8, &qword_1CAD5B8C8);
  sub_1CAD4C604();
  if (v14 == 1)
  {
    v15 = *a1;
    v16 = *(a1 + 2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686E0, &qword_1CAD6AB28);
    MEMORY[0x1CCAA6D30](&v14, v4);
    result = sub_1CAD4E9B4();
    v6 = result;
    v8 = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920, &qword_1CAD5A170);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1CAD58380;
    v15 = *a1;
    v16 = *(a1 + 2);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686E0, &qword_1CAD6AB28);
    MEMORY[0x1CCAA6D30](&v14, v10);
    v11 = v14;
    v12 = MEMORY[0x1E69E65A8];
    *(v9 + 56) = MEMORY[0x1E69E6530];
    *(v9 + 64) = v12;
    *(v9 + 32) = v11;
    v6 = sub_1CAD4DF64();
    v8 = v13;
  }

  *a2 = v6;
  a2[1] = v8;
  return result;
}

unsigned __int8 *sub_1CAD3D130(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = a1[1];
  *&v35 = *a1;
  *(&v35 + 1) = v5;
  v6 = 0xE100000000000000;
  v37 = 32;
  v38 = 0xE100000000000000;
  sub_1CABA6054();
  v7 = sub_1CAD4E504();
  if (v7[2])
  {
    v8 = v7[4];
    v6 = v7[5];
  }

  else
  {
    v8 = 49;
  }

  v10 = HIBYTE(v6) & 0xF;
  v11 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      *&v35 = v8;
      *(&v35 + 1) = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v8 == 43)
      {
        if (v10)
        {
          if (--v10)
          {
            v14 = 0;
            v24 = &v35 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                break;
              }

              v14 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v10)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_77:
        __break(1u);
        return result;
      }

      if (v8 != 45)
      {
        if (v10)
        {
          v14 = 0;
          v29 = &v35;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v10)
      {
        if (--v10)
        {
          v14 = 0;
          v18 = &v35 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        result = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1CAD4E714();
      }

      v13 = *result;
      if (v13 == 43)
      {
        if (v11 >= 1)
        {
          v10 = v11 - 1;
          if (v11 != 1)
          {
            v14 = 0;
            if (result)
            {
              v21 = result + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_64;
                }

                v23 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  goto LABEL_64;
                }

                v14 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_64;
                }

                ++v21;
                if (!--v10)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_76;
      }

      if (v13 != 45)
      {
        if (v11)
        {
          v14 = 0;
          if (result)
          {
            while (1)
            {
              v27 = *result - 48;
              if (v27 > 9)
              {
                goto LABEL_64;
              }

              v28 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_64;
              }

              v14 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_64;
              }

              ++result;
              if (!--v11)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v14 = 0;
        LOBYTE(v10) = 1;
        goto LABEL_65;
      }

      if (v11 >= 1)
      {
        v10 = v11 - 1;
        if (v11 != 1)
        {
          v14 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_64;
              }

              v17 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_64;
              }

              v14 = v17 - v16;
              if (__OFSUB__(v17, v16))
              {
                goto LABEL_64;
              }

              ++v15;
              if (!--v10)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v10) = 0;
LABEL_65:
          LOBYTE(v37) = v10;
          v32 = v10;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v14 = sub_1CAC42CA8(v8, v6, 10);
  v32 = v34;
LABEL_66:

  if (v32)
  {
LABEL_67:
    v14 = 1;
  }

  v33 = *(a4 + 11);
  if (v33 >= v14)
  {
    v33 = v14;
  }

  v35 = *a4;
  v36 = *(a4 + 2);
  v37 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686E0, &qword_1CAD6AB28);
  return sub_1CAD4DAC4();
}

void *sub_1CAD3D4C8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v8 = v3;
  v9 = v2;
  v6 = v2;
  v7 = v1;
  sub_1CAC546A8(&v9, &v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686E0, &qword_1CAD6AB28);
  result = MEMORY[0x1CCAA6D30](&v5);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v2;
    v7 = v1;
    v8 = v3;
    ++v5;
    sub_1CAD4DAC4();
    sub_1CAD3DE34(&v9);
  }

  return result;
}

uint64_t sub_1CAD3D580@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAD4D8F4();
  *a1 = result;
  return result;
}

double sub_1CAD3D5B4@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 80);
  v24 = *(v2 + 64);
  v25 = v4;
  v26 = *(v2 + 96);
  v27 = *(v2 + 112);
  v5 = *(v2 + 16);
  v22[0] = *v2;
  v22[1] = v5;
  v6 = *(v2 + 48);
  v22[2] = *(v2 + 32);
  v23 = v6;
  *a2 = sub_1CAD4CC94();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468678, &qword_1CAD6AAC0);
  sub_1CAD3BBEC(v22, (a2 + *(v7 + 44)));
  v8 = [objc_opt_self() quaternarySystemFillColor];
  v9 = sub_1CAD4D7D4();
  v10 = sub_1CAD4D1D4();
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468680, &qword_1CAD6AAC8) + 36);
  *v11 = v9;
  *(v11 + 8) = v10;
  v12 = *(&v23 + 1);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468688, &qword_1CAD6AAD0) + 36));
  v14 = *(sub_1CAD4C974() + 20);
  v15 = *MEMORY[0x1E697F470];
  v16 = sub_1CAD4CD24();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v13 = v12;
  *(v13 + 1) = v12;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463808, &qword_1CAD5A0B8) + 36)] = 256;
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468690, &qword_1CAD6AAD8) + 36));
  *v17 = v19;
  v17[1] = v20;
  result = *&v21;
  v17[2] = v21;
  return result;
}

unint64_t sub_1CAD3D794()
{
  result = qword_1EC4686E8;
  if (!qword_1EC4686E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4686D0, &qword_1CAD6AB18);
    sub_1CAD3D84C();
    sub_1CAB23B0C(&qword_1EC464A90, &qword_1EC464A98, &unk_1CAD5D658, MEMORY[0x1E697FD50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4686E8);
  }

  return result;
}

unint64_t sub_1CAD3D84C()
{
  result = qword_1EC4686F0;
  if (!qword_1EC4686F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4686C8, &qword_1CAD6AB10);
    sub_1CAD3D904();
    sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0, &qword_1CAD5CBB0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4686F0);
  }

  return result;
}

unint64_t sub_1CAD3D904()
{
  result = qword_1EC4686F8;
  if (!qword_1EC4686F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4686C0, &qword_1CAD6AB08);
    sub_1CAD3D9BC();
    sub_1CAB23B0C(&qword_1EC468718, &qword_1EC468720, &qword_1CAD6AB98, MEMORY[0x1E6980B38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4686F8);
  }

  return result;
}

unint64_t sub_1CAD3D9BC()
{
  result = qword_1EC468700;
  if (!qword_1EC468700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4686B8, &qword_1CAD6AB00);
    sub_1CAB23B0C(&qword_1EC468708, &qword_1EC468710, &qword_1CAD6AB90, MEMORY[0x1E697D678]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468700);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 145, 7);
}

uint64_t sub_1CAD3DAE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CAD3DB2C()
{
  result = qword_1EC468730;
  if (!qword_1EC468730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4686A0, &qword_1CAD6AAE8);
    sub_1CAD3DBE4();
    sub_1CAB23B0C(&qword_1EC465868, &qword_1EC465870, &qword_1CAD60AD0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468730);
  }

  return result;
}

unint64_t sub_1CAD3DBE4()
{
  result = qword_1EC468738;
  if (!qword_1EC468738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468728, &qword_1CAD6ABA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468698, &qword_1CAD6AAE0);
    sub_1CAD4CDC4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464DC0, &unk_1CAD5E030);
    sub_1CAB23B0C(&qword_1EC464DC8, &qword_1EC464DC0, &unk_1CAD5E030, MEMORY[0x1E697D7D8]);
    swift_getOpaqueTypeConformance2();
    sub_1CAD3DAE4(&qword_1EC464DD0, MEMORY[0x1E697C5B8], MEMORY[0x1E697C5A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468738);
  }

  return result;
}

uint64_t objectdestroyTm_15()
{

  return MEMORY[0x1EEE6BDD0](v0, 129, 7);
}

uint64_t sub_1CAD3DDC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4686B0, &qword_1CAD6AAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CAD3DE88()
{
  result = qword_1EC468748;
  if (!qword_1EC468748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468690, &qword_1CAD6AAD8);
    sub_1CAD3DF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468748);
  }

  return result;
}

unint64_t sub_1CAD3DF14()
{
  result = qword_1EC468750;
  if (!qword_1EC468750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468688, &qword_1CAD6AAD0);
    sub_1CAD3DFCC();
    sub_1CAB23B0C(&qword_1EC463838, &qword_1EC463808, &qword_1CAD5A0B8, MEMORY[0x1E697DDA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468750);
  }

  return result;
}

unint64_t sub_1CAD3DFCC()
{
  result = qword_1EC468758;
  if (!qword_1EC468758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468680, &qword_1CAD6AAC8);
    sub_1CAB23B0C(&qword_1EC468760, qword_1EC468768, &unk_1CAD6ABE0, MEMORY[0x1E6981800]);
    sub_1CAB23B0C(&qword_1EC465858, &qword_1EC465860, &qword_1CAD60AC8, MEMORY[0x1E6980470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468758);
  }

  return result;
}

uint64_t EventParticipantModel.nameUsingAddressAsBackup.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450, &qword_1CAD5A1B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  result = (*(a2 + 24))(a1, a2);
  if (v8)
  {
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return result;
    }
  }

  result = (*(a2 + 32))(a1, a2);
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      return result;
    }
  }

  result = (*(a2 + 40))(a1, a2);
  if (v12)
  {
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      return result;
    }
  }

  (*(a2 + 48))(a1, a2);
  v14 = sub_1CAD4BFF4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_1CAC3F2C0(v6);
  }

  else
  {
    v16 = sub_1CAD4BFA4();
    v18 = v17;
    (*(v15 + 8))(v6, v14);
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      return v16;
    }
  }

  return 0;
}

char *EKVirtualConferenceModelWrapper.joinMethods.getter()
{
  v1 = [*v0 joinMethods];
  sub_1CAD3E578();
  v2 = sub_1CAD4E214();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1CAD4E604();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v11 = MEMORY[0x1E69E7CC0];
  result = sub_1CACB9F3C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v11;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCAA7940](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = v7;
        sub_1CACB9F3C((v8 > 1), v9 + 1, 1);
        v7 = v10;
      }

      ++v5;
      *(v11 + 16) = v9 + 1;
      *(v11 + 8 * v9 + 32) = v7;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CAD3E578()
{
  result = qword_1EC464E70;
  if (!qword_1EC464E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC464E70);
  }

  return result;
}

uint64_t sub_1CAD3E628@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_1CAD4BFC4();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1CAD4BFF4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_1CAD3E734@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_1CAD4BFC4();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1CAD4BFF4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t EKVirtualConferenceJoinMethodModelWrapper.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 URL];
  sub_1CAD4BFC4();

  v4 = sub_1CAD4BFF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

void sub_1CAD3E8FC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1CABDB2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CAD3E98C(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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

_BYTE *sub_1CAD3EAD0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1CAD3ECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463760, qword_1CAD647B0);
  sub_1CAD4C904();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4687F0, &qword_1CAD6ADB0);
  sub_1CAD4C904();
  sub_1CAD4C904();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4687F8, &qword_1CAD6ADB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468800, &unk_1CAD6ADC0);
  swift_getTupleTypeMetadata3();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  v4 = sub_1CAD4DA94();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = sub_1CAD4C904();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *(a1 + 24);
  v22 = v3;
  v23 = v14;
  v24 = v20;
  sub_1CAD4CD94();
  sub_1CAD4DA84();
  sub_1CAD4D1C4();
  WitnessTable = swift_getWitnessTable();
  sub_1CAD4D724();
  (*(v19 + 8))(v6, v4);
  v25 = WitnessTable;
  v26 = MEMORY[0x1E697E5D0];
  swift_getWitnessTable();
  sub_1CAC06984();
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_1CAC06984();
  return (v16)(v13, v7);
}

uint64_t sub_1CAD3F074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a4;
  v93 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463760, qword_1CAD647B0);
  v87 = a2;
  v6 = sub_1CAD4C904();
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v85 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4687F0, &qword_1CAD6ADB0);
  v8 = sub_1CAD4C904();
  v91 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v85 - v9;
  v96 = sub_1CAD4C904();
  v94 = *(v96 - 8);
  v10 = MEMORY[0x1EEE9AC00](v96);
  v12 = (&v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v95 = &v85 - v14;
  v15 = CUIKAppTintColor(v13);
  *&v126[0] = sub_1CAD4D7D4();
  v86 = a3;
  sub_1CAD4D5C4();

  v16 = [objc_opt_self() cuik_tertiaryGroupedBackgroundColor];
  v17 = sub_1CAD4D7D4();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  *&v124[19] = v125;
  *&v124[11] = *&v124[35];
  *&v124[3] = *&v124[27];
  *&v126[0] = v17;
  WORD4(v126[0]) = 256;
  *(v126 + 10) = *v124;
  *(&v126[1] + 10) = *&v124[8];
  *(&v126[2] + 10) = *&v124[16];
  *(&v126[3] + 1) = *(&v125 + 1);
  sub_1CAD4DC94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646C8, &unk_1CAD5CDC0);
  v18 = sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760, qword_1CAD647B0, MEMORY[0x1E6980488]);
  v122 = a3;
  v123 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_1CAC0584C();
  v20 = v89;
  v21 = v88;
  sub_1CAD4D4B4();
  v130[0] = v126[0];
  v130[1] = v126[1];
  v130[2] = v126[2];
  v130[3] = v126[3];
  sub_1CAB21B68(v130, &qword_1EC4646C8, &unk_1CAD5CDC0);
  (*(v90 + 8))(v21, v6);
  sub_1CAD4D1E4();
  v22 = sub_1CAB23B0C(&qword_1EC468808, &qword_1EC4687F0, &qword_1CAD6ADB0, MEMORY[0x1E697F938]);
  v120 = WitnessTable;
  v121 = v22;
  v23 = swift_getWitnessTable();
  sub_1CAD4D724();
  v91[1](v20, v8);
  v118 = v23;
  v119 = MEMORY[0x1E697E5D0];
  v24 = v96;
  v88 = swift_getWitnessTable();
  sub_1CAC06984();
  v25 = *(v94 + 8);
  v90 = v94 + 8;
  v91 = v12;
  v89 = v25;
  (v25)(v12, v24);
  v87 = type metadata accessor for OnboardingHeaderView(0, v87, v86, v26);
  v27 = (v93 + *(v87 + 36));
  v28 = v27[1];
  *&v126[0] = *v27;
  *(&v126[0] + 1) = v28;
  v29 = sub_1CABA6054();

  v86 = v29;
  v30 = sub_1CAD4D444();
  v32 = v31;
  LOBYTE(v20) = v33;
  *&v126[0] = sub_1CAD4D8A4();
  v34 = sub_1CAD4D3E4();
  v36 = v35;
  LOBYTE(v8) = v37;
  sub_1CABA6128(v30, v32, v20 & 1);

  sub_1CAD4D244();
  v38 = sub_1CAD4D424();
  v40 = v39;
  LOBYTE(a3) = v41;

  sub_1CABA6128(v34, v36, v8 & 1);

  v42 = sub_1CAD4D414();
  v44 = v43;
  LOBYTE(v30) = v45;
  v47 = v46;
  sub_1CABA6128(v38, v40, a3 & 1);

  LOBYTE(v38) = sub_1CAD4D1E4();
  sub_1CAD4C5F4();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  LOBYTE(v30) = v30 & 1;
  LOBYTE(v126[0]) = v30;
  LOBYTE(v114[0]) = 0;
  KeyPath = swift_getKeyPath(byte_1CAD6ADD8);
  *&v131 = v42;
  *(&v131 + 1) = v44;
  LOBYTE(v132) = v30;
  *(&v132 + 1) = v47;
  LOBYTE(v133) = v38;
  *(&v133 + 1) = v49;
  *&v134 = v51;
  *(&v134 + 1) = v53;
  *v135 = v55;
  v135[8] = 0;
  *&v135[16] = KeyPath;
  *&v135[24] = 1;
  v135[26] = 1;
  v57 = (v93 + *(v87 + 40));
  v58 = v57[1];
  if (v58)
  {
    *&v126[0] = *v57;
    *(&v126[0] + 1) = v58;

    v59 = sub_1CAD4D444();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = sub_1CAD4D1E4();
    sub_1CAD4C5F4();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v63 & 1;
    LOBYTE(v126[0]) = v63 & 1;
    LOBYTE(v114[0]) = 0;
    v76 = sub_1CAD4D8A4();
    v77 = sub_1CAD4D264();
    v78 = swift_getKeyPath("@)q!");
    v79 = swift_getKeyPath(byte_1CAD6ADD8);
    *&v126[0] = v59;
    *(&v126[0] + 1) = v61;
    LOBYTE(v126[1]) = v75;
    *(&v126[1] + 1) = v65;
    LOBYTE(v126[2]) = v66;
    *(&v126[2] + 1) = v68;
    *&v126[3] = v70;
    *(&v126[3] + 1) = v72;
    *&v127 = v74;
    BYTE8(v127) = 0;
    *&v128 = v76;
    *(&v128 + 1) = v78;
    *&v129[0] = v77;
    *(&v129[0] + 1) = v79;
    LOWORD(v129[1]) = 1;
    BYTE2(v129[1]) = 1;
  }

  else
  {
    v128 = 0u;
    memset(v129, 0, 19);
    v127 = 0u;
    memset(v126, 0, sizeof(v126));
  }

  v80 = v95;
  v81 = v91;
  v82 = v96;
  (*(v94 + 16))(v91, v95, v96);
  v110 = v133;
  v111 = v134;
  v112[0] = *v135;
  *(v112 + 11) = *&v135[11];
  v108 = v131;
  v109 = v132;
  v113[0] = v81;
  v113[1] = &v108;
  v105 = v127;
  v106 = v128;
  v107[0] = v129[0];
  *(v107 + 15) = *(v129 + 15);
  v101 = v126[0];
  v102 = v126[1];
  v103 = v126[2];
  v104 = v126[3];
  v113[2] = &v101;
  sub_1CAB23A9C(&v131, v114, &qword_1EC4687F8, &qword_1CAD6ADB8);
  sub_1CAB23A9C(v126, v114, &qword_1EC468800, &unk_1CAD6ADC0);
  v100[0] = v82;
  v100[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4687F8, &qword_1CAD6ADB8);
  v100[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468800, &unk_1CAD6ADC0);
  v97 = v88;
  v98 = sub_1CAD3FA8C(&qword_1EC468810, &qword_1EC4687F8, &qword_1CAD6ADB8, sub_1CAD3FB10);
  v99 = sub_1CAD3FBC8();
  sub_1CACDFC20(v113, 3uLL, v100);
  sub_1CAB21B68(v126, &qword_1EC468800, &unk_1CAD6ADC0);
  sub_1CAB21B68(&v131, &qword_1EC4687F8, &qword_1CAD6ADB8);
  v83 = v89;
  (v89)(v80, v82);
  v114[4] = v105;
  v114[5] = v106;
  v115[0] = v107[0];
  *(v115 + 15) = *(v107 + 15);
  v114[0] = v101;
  v114[1] = v102;
  v114[2] = v103;
  v114[3] = v104;
  sub_1CAB21B68(v114, &qword_1EC468800, &unk_1CAD6ADC0);
  v116[2] = v110;
  v116[3] = v111;
  v117[0] = v112[0];
  *(v117 + 11) = *(v112 + 11);
  v116[0] = v108;
  v116[1] = v109;
  sub_1CAB21B68(v116, &qword_1EC4687F8, &qword_1CAD6ADB8);
  return v83(v81, v82);
}

uint64_t sub_1CAD3FA38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CAD4CAF4();
  *a1 = result;
  return result;
}

uint64_t sub_1CAD3FA8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1CAD3FB10()
{
  result = qword_1EC468818;
  if (!qword_1EC468818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468820, &qword_1CAD6AE08);
    sub_1CAC1ADF0();
    sub_1CAB23B0C(&qword_1EC465868, &qword_1EC465870, &qword_1CAD60AD0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468818);
  }

  return result;
}

unint64_t sub_1CAD3FBC8()
{
  result = qword_1EC468828;
  if (!qword_1EC468828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468800, &unk_1CAD6ADC0);
    sub_1CAD3FA8C(&qword_1EC468830, &qword_1EC468838, &qword_1CAD6AE20, sub_1CAD3FC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468828);
  }

  return result;
}

unint64_t sub_1CAD3FC78()
{
  result = qword_1EC468840;
  if (!qword_1EC468840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468848, &qword_1CAD6AE28);
    sub_1CAD3FD30();
    sub_1CAB23B0C(&qword_1EC465868, &qword_1EC465870, &qword_1CAD60AD0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468840);
  }

  return result;
}

unint64_t sub_1CAD3FD30()
{
  result = qword_1EC468850;
  if (!qword_1EC468850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468858, &qword_1CAD6AE30);
    sub_1CAD3FDE8();
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008, &unk_1CAD5CB30, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468850);
  }

  return result;
}

unint64_t sub_1CAD3FDE8()
{
  result = qword_1EC468860;
  if (!qword_1EC468860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468868, &unk_1CAD6AE38);
    sub_1CAC1ADF0();
    sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760, qword_1CAD647B0, MEMORY[0x1E6980488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468860);
  }

  return result;
}

uint64_t EventRecurrenceRuleModel.humanReadableDescription(startDate:isConcise:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1CAD3FF78(0, 0, a3, a4);
  v5 = objc_opt_self();
  v6 = sub_1CAD4C084();
  v7 = sub_1CAD4DF54();

  v8 = [v5 humanReadableDescriptionWithStartDate:v6 ofRecurrenceRuleICSString:v7 isConcise:a2 & 1];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1CAD4DF94();

  return v9;
}

uint64_t sub_1CAD3FF78(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v121 = a2;
  v128 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v134 = *(AssociatedTypeWitness - 8);
  v116 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v136 = &v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70, &unk_1CAD61F00);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v119 = &v115 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v129 = &v115 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v125 = &v115 - v17;
  v132 = sub_1CAD4C0F4();
  v18 = *(v132 - 1);
  MEMORY[0x1EEE9AC00](v132);
  v127 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_getAssociatedTypeWitness();
  v21 = sub_1CAD4E4D4();
  v124 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v131 = &v115 - v23;
  v133 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v115 - v24;
  v140 = 0;
  v141 = 0xE000000000000000;
  v25 = objc_opt_self();
  v122 = *(a4 + 48);
  v123 = a4 + 48;
  v26 = v122(a3, a4);
  v126 = v25;
  v27 = [v25 iCalendarValueFromRecurrenceType_];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1CAD4DF94();
    v30 = a4;
    v31 = v20;
    v32 = v5;
    v33 = v18;
    v34 = v21;
    v36 = v35;

    v138 = 0x3D51455246;
    v139 = 0xE500000000000000;
    MEMORY[0x1CCAA7330](v29, v36);
    v21 = v34;
    v18 = v33;
    v5 = v32;
    v20 = v31;
    a4 = v30;

    MEMORY[0x1CCAA7330](v138, v139);
  }

  v138 = 0x41565245544E493BLL;
  v139 = 0xEA00000000003D4CLL;
  v37 = *(a4 + 56);
  v118 = a4 + 56;
  v117 = v37;
  v137 = v37(a3, a4);
  v38 = sub_1CAD4E9B4();
  MEMORY[0x1CCAA7330](v38);

  MEMORY[0x1CCAA7330](v138, v139);

  v39 = v131;
  (*(a4 + 40))(a3, a4);
  v40 = (*(v133 + 48))(v39, 1, v20);
  v135 = a3;
  if (v40 == 1)
  {
    (*(v124 + 8))(v39, v21);
  }

  else
  {
    v41 = v130;
    (*(v133 + 32))(v130, v39, v20);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v43 = v125;
    (*(AssociatedConformanceWitness + 8))(v20, AssociatedConformanceWitness);
    v44 = v132;
    v131 = *(v18 + 48);
    if ((v131)(v43, 1, v132) == 1)
    {
      sub_1CAD410D4(v43);
      v138 = 0x3D544E554F433BLL;
      v139 = 0xE700000000000000;
      v137 = (*(AssociatedConformanceWitness + 16))(v20, AssociatedConformanceWitness);
      v45 = sub_1CAD4E9B4();
      MEMORY[0x1CCAA7330](v45);

      MEMORY[0x1CCAA7330](v138, v139);

      (*(v133 + 8))(v41, v20);
      a3 = v135;
    }

    else
    {
      v124 = v18;
      (*(v18 + 32))(v127, v43, v44);
      v46 = sub_1CAD4C084();
      v47 = v121;
      v48 = [v126 adjustDateIntoUTC:v46 dateOnly:v128 & 1 floating:v121 & 1];

      if (v48)
      {
        v49 = v119;
        sub_1CAD4C0B4();

        v50 = v49;
        v51 = 0;
      }

      else
      {
        v51 = 1;
        v50 = v119;
      }

      v53 = v131;
      v52 = v132;
      v54 = v124;
      (*(v124 + 56))(v50, v51, 1, v132);
      v55 = v50;
      v56 = v129;
      sub_1CAC8BAA0(v55, v129);
      v57 = v56;
      v58 = v120;
      sub_1CAD4113C(v57, v120);
      if (v53(v58, 1, v52) == 1)
      {
        v59 = 0;
      }

      else
      {
        v60 = v58;
        v59 = sub_1CAD4C084();
        (*(v54 + 8))(v60, v52);
      }

      a3 = v135;
      v61 = [v126 iCalendarValueFromDate:v59 isDateOnly:v128 & 1 isFloating:v47 & 1];

      if (v61)
      {
        v62 = sub_1CAD4DF94();
        v64 = v63;

        v138 = 0x3D4C49544E553BLL;
        v139 = 0xE700000000000000;
        MEMORY[0x1CCAA7330](v62, v64);
        v54 = v124;

        MEMORY[0x1CCAA7330](v138, v139);
      }

      sub_1CAD410D4(v129);
      (*(v54 + 8))(v127, v132);
      (*(v133 + 8))(v130, v20);
    }
  }

  v65 = (*(a4 + 104))(a3, a4);
  if (v65)
  {
    v66 = v65;
    v67 = *(v65 + 16);
    if (v67)
    {
      MEMORY[0x1CCAA7330](0x48544E4F4D59423BLL, 0xE90000000000003DLL);
      v68 = 32;
      do
      {
        v137 = *(v66 + v68);
        v138 = sub_1CAD4E9B4();
        v139 = v69;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v138, v139);

        v68 += 8;
        --v67;
      }

      while (v67);

      sub_1CAC8ACF0(v70);

      a3 = v135;
    }

    else
    {
    }
  }

  v71 = (*(a4 + 80))(a3, a4);
  if (v71)
  {
    v72 = v71;
    v73 = *(v71 + 16);
    if (v73)
    {
      MEMORY[0x1CCAA7330](0x48544E4F4D59423BLL, 0xEC0000003D594144);
      v74 = 32;
      do
      {
        v137 = *(v72 + v74);
        v138 = sub_1CAD4E9B4();
        v139 = v75;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v138, v139);

        v74 += 8;
        --v73;
      }

      while (v73);

      sub_1CAC8ACF0(v76);

      a3 = v135;
    }

    else
    {
    }
  }

  v77 = (*(a4 + 88))(a3, a4);
  if (v77)
  {
    v78 = v77;
    v79 = *(v77 + 16);
    if (v79)
    {
      MEMORY[0x1CCAA7330](0x445241455959423BLL, 0xEB000000003D5941);
      v80 = 32;
      do
      {
        v137 = *(v78 + v80);
        v138 = sub_1CAD4E9B4();
        v139 = v81;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v138, v139);

        v80 += 8;
        --v79;
      }

      while (v79);

      sub_1CAC8ACF0(v82);

      a3 = v135;
    }

    else
    {
    }
  }

  v83 = (*(a4 + 96))(a3, a4);
  if (v83)
  {
    v84 = v83;
    v85 = *(v83 + 16);
    if (v85)
    {
      MEMORY[0x1CCAA7330](0x4E4B45455759423BLL, 0xEA00000000003D4FLL);
      v86 = 32;
      do
      {
        v137 = *(v84 + v86);
        v138 = sub_1CAD4E9B4();
        v139 = v87;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v138, v139);

        v86 += 8;
        --v85;
      }

      while (v85);

      sub_1CAC8ACF0(v88);

      a3 = v135;
    }

    else
    {
    }
  }

  v132 = *(a4 + 72);
  v133 = a4 + 72;
  v89 = (v132)(a3, a4);
  if (!v89)
  {
    goto LABEL_54;
  }

  v90 = v89;
  v138 = v89;
  sub_1CAD4E294();
  swift_getWitnessTable();
  if (sub_1CAD4E3B4())
  {

    goto LABEL_54;
  }

  v131 = v5;
  MEMORY[0x1CCAA7330](0x3D59414459423BLL, 0xE700000000000000);
  if (!sub_1CAD4E274())
  {
    goto LABEL_53;
  }

  v91 = 0;
  v92 = (v134 + 16);
  v93 = (v134 + 8);
  v94 = v136;
  while (1)
  {
    v95 = sub_1CAD4E254();
    sub_1CAD4E224();
    if ((v95 & 1) == 0)
    {
      break;
    }

    (*(v134 + 16))(v136, v90 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v91, AssociatedTypeWitness);
    v96 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      goto LABEL_52;
    }

LABEL_47:
    v97 = swift_getAssociatedConformanceWitness();
    v138 = sub_1CAD40FAC(AssociatedTypeWitness, v97);
    v139 = v98;
    MEMORY[0x1CCAA7330](44, 0xE100000000000000);
    MEMORY[0x1CCAA7330](v138, v139);

    (*v93)(v94, AssociatedTypeWitness);
    ++v91;
    if (v96 == sub_1CAD4E274())
    {
      goto LABEL_53;
    }
  }

  result = sub_1CAD4E6B4();
  if (v116 != 8)
  {
    goto LABEL_71;
  }

  v138 = result;
  (*v92)(v136, &v138, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  v96 = v91 + 1;
  if (!__OFADD__(v91, 1))
  {
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:

  sub_1CAC8ACF0(v100);

  a3 = v135;
LABEL_54:
  v101 = (*(a4 + 112))(a3, a4);
  if (v101)
  {
    v102 = v101;
    v103 = *(v101 + 16);
    if (v103)
    {
      MEMORY[0x1CCAA7330](0x4F5054455359423BLL, 0xEA00000000003D53);
      v104 = 32;
      do
      {
        v137 = *(v102 + v104);
        v138 = sub_1CAD4E9B4();
        v139 = v105;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v138, v139);

        v104 += 8;
        --v103;
      }

      while (v103);

      sub_1CAC8ACF0(v106);

      a3 = v135;
    }

    else
    {
    }
  }

  v107 = (*(a4 + 64))(a3, a4);
  if (v108)
  {
    return v140;
  }

  v109 = v107;
  if (v122(a3, a4) != 1)
  {
    return v140;
  }

  if (v117(a3, a4) < 2)
  {
    return v140;
  }

  if (!(v132)(a3, a4))
  {
    return v140;
  }

  v110 = sub_1CAD4E274();

  if (v110 < 1)
  {
    return v140;
  }

  v111 = v109 - 1;
  if (__OFSUB__(v109, 1))
  {
    __break(1u);
  }

  else if (v111 <= 6)
  {
    v112 = (&unk_1F4AA0108 + 16 * v111);
    v113 = *v112;
    v114 = v112[1];

    swift_arrayDestroy();
    v138 = 0x3D54534B573BLL;
    v139 = 0xE600000000000000;
    MEMORY[0x1CCAA7330](v113, v114);

    MEMORY[0x1CCAA7330](v138, v139);

    return v140;
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1CAD40FAC(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 iCalendarValueFromDayOfTheWeek_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1CAD4DF94();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = *(a2 + 16);
  if ((v10)(a1, a2))
  {
    v10(a1, a2);
    v12 = sub_1CAD4E9B4();
    MEMORY[0x1CCAA7330](v7, v9);

    return v12;
  }

  return v7;
}

uint64_t sub_1CAD410D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70, &unk_1CAD61F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAD4113C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70, &unk_1CAD61F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1CAD411D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468870, &qword_1CAD6AF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468878, &qword_1CAD6AF18) + 36);
  result = 8.0;
  *v5 = xmmword_1CAD6AE80;
  *(v5 + 16) = xmmword_1CAD6AE90;
  *(v5 + 32) = 0;
  return result;
}

unint64_t sub_1CAD41278()
{
  result = qword_1EC468880;
  if (!qword_1EC468880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC468878, &qword_1CAD6AF18);
    sub_1CAB23B0C(&qword_1EC468888, &qword_1EC468870, &qword_1CAD6AF10, MEMORY[0x1E697FDF0]);
    sub_1CAB23B0C(&qword_1EC464178, &qword_1EC464180, &unk_1CAD6AF20, MEMORY[0x1E697FDC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468880);
  }

  return result;
}

uint64_t sub_1CAD4135C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t EventModel.isExternallyOrganizedInvitation.getter(uint64_t a1, uint64_t a2)
{
  if (EventModel.hasAttendees.getter(a1, a2))
  {
    v4 = EventModel.isSelfOrganizedInvitation.getter(a1, a2) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1CAD41654(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1CAD41700(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

BOOL sub_1CAD417B0(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 32;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t EventModel.currentUserMayActAsOrganizer.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  (*(a2 + 336))(a1, a2);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) != 1)
  {
    (*(v10 + 32))(v12, v9, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    if ((*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness))
    {
      if (EventModel.isSelfOrganizedInvitation.getter(a1, a2))
      {
        v13 = 1;
LABEL_9:
        (*(v10 + 8))(v12, AssociatedTypeWitness);
        return v13 & 1;
      }

      if (EventCalendarModel.isSharedToMe.getter(AssociatedTypeWitness, AssociatedConformanceWitness))
      {
        v13 = EventModel.isOrganizedBySharedCalendarOwner.getter(a1, a2);
        goto LABEL_9;
      }
    }

    v13 = 0;
    goto LABEL_9;
  }

  (*(v6 + 8))(v9, v5);
  v13 = EventModel.isSelfOrganizedInvitation.getter(a1, a2);
  return v13 & 1;
}

uint64_t EventModel.selfAttendeeStatus.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 424))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    v10 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v6 = v9;
    v5 = AssociatedTypeWitness;
  }

  (*(v6 + 8))(v8, v5);
  return v10;
}

id EventModel.dateRange.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  (*(a2 + 176))(a1, a2);
  (*(a2 + 184))(a1, a2);
  v11 = objc_allocWithZone(MEMORY[0x1E6992F70]);
  v12 = sub_1CAD4C084();
  v13 = sub_1CAD4C084();
  v14 = [v11 initWithStartDate:v12 endDate:v13];

  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return v14;
}

uint64_t EventModel.isSelfOrganizedInvitation.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 408))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    v10 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(*(AssociatedConformanceWitness + 8) + 56))(AssociatedTypeWitness);
    v6 = v9;
    v5 = AssociatedTypeWitness;
  }

  (*(v6 + 8))(v8, v5);
  return v10 & 1;
}

uint64_t EventModel.hasAttendees.getter(uint64_t a1, uint64_t a2)
{
  v6[6] = (*(a2 + 416))();
  v6[2] = a1;
  v6[3] = a2;
  swift_getAssociatedTypeWitness();
  sub_1CAD4E294();
  sub_1CAD4E4D4();
  sub_1CAD4135C(sub_1CAD463E0, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v4, &v7);

  return v7 & 1;
}

BOOL EventModel.isCurrentUserInvitedAttendee.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  if ((EventModel.isExternallyOrganizedInvitation.getter(a1, a2) & 1) == 0)
  {
    return 0;
  }

  (*(a2 + 424))(a1, a2);
  v9 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t EventModel.hasAbsoluteAlarms.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 360))();
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    swift_getAssociatedTypeWitness();
    sub_1CAD4E294();
    swift_getWitnessTable();
    v3 = sub_1CAD4E174();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL EventModel.isRecurring.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(a2 + 400))(a1, a2);
  v9 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v8, v5);
  return v9;
}

BOOL EventModel.hasURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450, &qword_1CAD5A1B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  (*(a2 + 432))(a1, a2);
  v7 = sub_1CAD4BFF4();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_1CAB21B68(v6, &qword_1EC465450, &qword_1CAD5A1B0);
  return v8;
}

uint64_t EventModel.attendeesNotIncludingOrganizerOrLocationsOrResources.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 416))();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    swift_getAssociatedTypeWitness();
    sub_1CAD4E294();
    swift_getWitnessTable();
    return sub_1CAD4E724();
  }

  return result;
}

BOOL EventModel.supportsAddingAttachments.getter(uint64_t a1, uint64_t a2)
{
  v26 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CAD4E4D4();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = sub_1CAD4E4D4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - v12;
  if (EventModel.isExternallyOrganizedInvitation.getter(a1, a2))
  {
    return 0;
  }

  v22[1] = v2;
  v23 = AssociatedTypeWitness;
  (*(a2 + 336))(a1, a2);
  v15 = *(v9 - 8);
  if ((*(v15 + 48))(v13, 1, v9) == 1)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 88))(v9, AssociatedConformanceWitness);
    (*(v15 + 8))(v13, v9);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  (*(v26 + 24))(a1, v26);
  v18 = v23;
  v19 = *(v23 - 8);
  if ((*(v19 + 48))(v8, 1, v23) != 1)
  {
    v20 = swift_getAssociatedConformanceWitness();
    v21 = (*(v20 + 144))(v18, v20);
    (*(v19 + 8))(v8, v18);
    return (v21 & 1) != 0;
  }

  (*(v24 + 8))(v8, v25);
  return 1;
}

uint64_t EventModel.isHoliday.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 336))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    v10 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 120))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v6 = v9;
    v5 = AssociatedTypeWitness;
  }

  (*(v6 + 8))(v8, v5);
  return v10 & 1;
}

BOOL EventModel.isBirthday.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1CAD4E4D4();
  v19 = *(v11 - 8);
  v20 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  (*(a2 + 336))(a1, a2);
  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  else
  {
    (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v14 + 8))(v8, AssociatedTypeWitness);
    v16 = *(v10 - 8);
    if ((*(v16 + 48))(v13, 1, v10) == 1)
    {
      (*(v19 + 8))(v13, v20);
      return 0;
    }

    else
    {
      v17 = swift_getAssociatedConformanceWitness();
      v18 = (*(v17 + 40))(v10, v17);
      (*(v16 + 8))(v13, v10);
      return v18 == 5;
    }
  }
}

uint64_t EventModel.isIntegrationBirthdayEvent.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = sub_1CAD4E4D4();
  v6 = *(v49 - 8);
  v7 = MEMORY[0x1EEE9AC00](v49);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1CAD4E4D4();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = *(a2 + 336);
  v45 = a1;
  v46 = v2;
  v42 = a2 + 336;
  v43 = a2;
  v41 = v16;
  v16(a1, a2);
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 48);
  if (v18(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v10, v49);
LABEL_5:
    sub_1CAD4DF94();
    goto LABEL_6;
  }

  v40 = v6;
  (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = *(v17 + 8);
  v19(v10, AssociatedTypeWitness);
  v20 = *(v12 - 8);
  if ((*(v20 + 48))(v15, 1, v12) == 1)
  {
    (*(v47 + 8))(v15, v48);
    goto LABEL_5;
  }

  v48 = v18;
  v23 = swift_getAssociatedConformanceWitness();
  v24 = (*(v23 + 32))(v12, v23);
  v26 = v25;
  (*(v20 + 8))(v15, v12);
  v27 = sub_1CAD4DF94();
  if (!v26)
  {
    goto LABEL_6;
  }

  v29 = v19;
  if (v24 == v27 && v26 == v28)
  {

    v32 = v49;
    v33 = v40;
  }

  else
  {
    v31 = sub_1CAD4E9E4();

    v21 = 0;
    v32 = v49;
    v33 = v40;
    if ((v31 & 1) == 0)
    {
      return v21 & 1;
    }
  }

  v34 = v44;
  v41(v45, v43);
  if (v48(v34, 1, AssociatedTypeWitness) == 1)
  {
    (*(v33 + 8))(v34, v32);
    goto LABEL_5;
  }

  v35 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v37 = v36;
  v29(v34, AssociatedTypeWitness);
  v38 = sub_1CAD4DF94();
  if (v37)
  {
    if (v35 == v38 && v37 == v39)
    {

      v21 = 1;
    }

    else
    {
      v21 = sub_1CAD4E9E4();
    }

    goto LABEL_7;
  }

LABEL_6:
  v21 = 0;
LABEL_7:

  return v21 & 1;
}

uint64_t sub_1CAD43400@<X0>(BOOL *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_1CAD4E294();
  swift_getWitnessTable();
  result = sub_1CAD4E3B4();
  *a3 = (result & 1) == 0;
  return result;
}

uint64_t EventModel.isOrganizedBySharedCalendarOwner.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1CAD4E4D4();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450, &qword_1CAD5A1B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v48 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = sub_1CAD4E4D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v48 - v16;
  (*(a2 + 336))(a1, a2);
  if ((*(v15 + 48))(v14, 1, v9) == 1)
  {
    (*(v11 + 8))(v14, v10);
    return 0;
  }

  (*(v15 + 32))(v17, v14, v9);
  (*(a2 + 408))(a1, a2);
  v18 = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  if ((*(v19 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v17, v9);
    (*(v49 + 8))(v6, v50);
    return 0;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = v51;
  (*(*(AssociatedConformanceWitness + 8) + 48))(v18);
  (*(v19 + 8))(v6, v18);
  v22 = sub_1CAD4BFF4();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    (*(v15 + 8))(v17, v9);
    sub_1CAB21B68(v21, &qword_1EC465450, &qword_1CAD5A1B0);
    return 0;
  }

  v49 = v15;
  v50 = v17;
  AssociatedTypeWitness = v9;
  v24 = sub_1CAD4BFA4();
  v26 = v25;
  (*(v23 + 8))(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E88, &qword_1CAD5E3D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAD5A590;
  *(inited + 32) = v24;
  v51 = (inited + 32);
  *(inited + 40) = v26;

  v28 = sub_1CAD4DF54();
  v29 = [v28 stringRemovingMailto];

  if (v29)
  {
    v30 = sub_1CAD4DF94();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  *(inited + 48) = v30;
  *(inited + 56) = v32;
  v33 = sub_1CAD4DF54();

  v34 = [v33 stringRemovingTel];

  if (v34)
  {
    v35 = sub_1CAD4DF94();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  *(inited + 64) = v35;
  *(inited + 72) = v37;
  v38 = AssociatedTypeWitness;
  v39 = swift_getAssociatedConformanceWitness();
  result = (*(v39 + 184))(v38, v39);
  v41 = result;
  v42 = (result + 40);
  v43 = -*(result + 16);
  v44 = -1;
  while (1)
  {
    if (v43 + v44 == -1)
    {

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643D0, &unk_1CAD5C590);
      swift_arrayDestroy();
      (*(v49 + 8))(v50, AssociatedTypeWitness);
      return 0;
    }

    if (++v44 >= *(v41 + 16))
    {
      break;
    }

    v45 = v42 + 2;
    v46 = *v42;
    v53[0] = *(v42 - 1);
    v53[1] = v46;
    MEMORY[0x1EEE9AC00](result);
    *(&v48 - 2) = v53;

    v47 = sub_1CAD41700(sub_1CAC297B0, (&v48 - 4), inited);

    v42 = v45;
    if (v47)
    {
      (*(v49 + 8))(v50, AssociatedTypeWitness);

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643D0, &unk_1CAD5C590);
      swift_arrayDestroy();
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAD43BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CAD4E4D4();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v58 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450, &qword_1CAD5A1B0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 32);
  v19 = swift_checkMetadataState();
  if (v18(v19, AssociatedConformanceWitness) == 2 || v18(v19, AssociatedConformanceWitness) == 3)
  {
    return 0;
  }

  v21 = *(AssociatedConformanceWitness + 8);
  v21[6](v19, v21);
  v22 = sub_1CAD4BFF4();
  v23 = *(v22 - 8);
  v52 = *(v23 + 48);
  v53 = v23 + 48;
  v24 = v52(v16, 1, v22);
  v51 = v23;
  if (v24 == 1)
  {
    v25 = v22;
    sub_1CAB21B68(v16, &qword_1EC465450, &qword_1CAD5A1B0);
    v56 = 0;
  }

  else
  {
    v56 = sub_1CAD4BFA4();
    v26 = *(v23 + 8);
    v25 = v22;
    v26(v16, v22);
    v56 = sub_1CAD4DF54();
  }

  v27 = AssociatedTypeWitness;
  v21[4](v19, v21);
  if (v28)
  {
    v55 = sub_1CAD4DF54();
  }

  else
  {
    v55 = 0;
  }

  v21[5](v19, v21);
  if (v29)
  {
    v54 = sub_1CAD4DF54();
  }

  else
  {
    v54 = 0;
  }

  v30 = v57;
  v31 = *(a4 + 408);
  AssociatedTypeWitness = a4 + 408;
  v57 = v31;
  v31(a3, a4);
  v32 = v63;
  v33 = *(v27 - 8);
  v34 = *(v33 + 48);
  if (v34(v63, 1, v27) == 1)
  {
    (*(v61 + 8))(v32, v62);
LABEL_17:
    v63 = 0;
    goto LABEL_19;
  }

  v35 = swift_getAssociatedConformanceWitness();
  (*(*(v35 + 8) + 48))(v27);
  (*(v33 + 8))(v32, v27);
  if (v52(v30, 1, v25) == 1)
  {
    sub_1CAB21B68(v30, &qword_1EC465450, &qword_1CAD5A1B0);
    goto LABEL_17;
  }

  sub_1CAD4BFA4();
  (*(v51 + 8))(v30, v25);
  v63 = sub_1CAD4DF54();

LABEL_19:
  v36 = v58;
  v57(a3, a4);
  if (v34(v36, 1, v27) == 1)
  {
    (*(v61 + 8))(v36, v62);
  }

  else
  {
    v37 = swift_getAssociatedConformanceWitness();
    (*(*(v37 + 8) + 32))(v27);
    v39 = v38;
    (*(v33 + 8))(v36, v27);
    if (v39)
    {
      v40 = sub_1CAD4DF54();

      goto LABEL_24;
    }
  }

  v40 = 0;
LABEL_24:
  v41 = v59;
  v57(a3, a4);
  if (v34(v41, 1, v27) == 1)
  {
    (*(v61 + 8))(v41, v62);
LABEL_28:
    v45 = 0;
    goto LABEL_29;
  }

  v42 = swift_getAssociatedConformanceWitness();
  (*(*(v42 + 8) + 40))(v27);
  v44 = v43;
  (*(v33 + 8))(v41, v27);
  if (!v44)
  {
    goto LABEL_28;
  }

  v45 = sub_1CAD4DF54();

LABEL_29:
  v47 = v55;
  v46 = v56;
  v48 = v54;
  v49 = v63;
  v50 = doURLsEmailsPhoneNumbersMatch();

  return v50 ^ 1u;
}

uint64_t EventModel.isDelegate.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1CAD4E4D4();
  v19 = *(v11 - 8);
  v20 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  (*(a2 + 336))(a1, a2);
  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  else
  {
    (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v14 + 8))(v8, AssociatedTypeWitness);
    v16 = *(v10 - 8);
    if ((*(v16 + 48))(v13, 1, v10) == 1)
    {
      (*(v19 + 8))(v13, v20);
      v15 = 0;
    }

    else
    {
      v17 = swift_getAssociatedConformanceWitness();
      v15 = (*(v17 + 56))(v10, v17);
      (*(v16 + 8))(v13, v10);
    }
  }

  return v15 & 1;
}

BOOL EventModel.isSharedToMe.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 336))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = (*(AssociatedConformanceWitness + 96))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
    return v12 == 2;
  }
}

BOOL EventModel.isIntegrationEvent.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(a2 + 472))(a1, a2);
  v9 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t EventModel.displayColor.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1CAD4E4D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  if (EventModel.isIntegrationEvent.getter(a1, a2))
  {
    (*(a2 + 472))(a1, a2);
    v13 = *(v8 - 8);
    if ((*(v13 + 48))(v12, 1, v8) == 1)
    {
      (*(v10 + 8))(v12, v9);
      return 0;
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = EventIntegrationModel.displayColor.getter(v8, AssociatedConformanceWitness);
    (*(v13 + 8))(v12, v8);
  }

  else
  {
    (*(a2 + 336))(a1, a2);
    v14 = *(AssociatedTypeWitness - 8);
    if ((*(v14 + 48))(v7, 1, AssociatedTypeWitness) == 1)
    {
      (*(v20 + 8))(v7, v5);
      return 0;
    }

    v18 = swift_getAssociatedConformanceWitness();
    v17 = EventCalendarModel.displayColor.getter(AssociatedTypeWitness, v18);
    (*(v14 + 8))(v7, AssociatedTypeWitness);
  }

  return v17;
}

BOOL sub_1CAD44C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return EventAlarmModel.isAbsolute.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t EventModel.isDeletable.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1CAD4E4D4();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - v10;
  v11 = sub_1CAD4E4D4();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  if ((*(a2 + 344))(a1, a2))
  {
    v19 = (EventModel.isDelegate.getter(a1, a2) & 1) != 0 || EventModel.isSharedToMe.getter(a1, a2);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a2 + 336);
  v47 = a2 + 336;
  v48 = v2;
  v46 = v20;
  v20(a1, a2);
  v21 = *(AssociatedTypeWitness - 8);
  v45 = *(v21 + 48);
  if (v45(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v42 + 8))(v18, v43);
  }

  else
  {
    v22 = (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness);
    (*(v21 + 8))(v18, AssociatedTypeWitness);
    if (!v19 && (v22 & 1) != 0)
    {
LABEL_24:
      v32 = 1;
      return v32 & 1;
    }
  }

  v40 = (*(a2 + 352))(a1, a2);
  v46(a1, a2);
  if (v45(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v42 + 8))(v16, v43);
    v23 = 0;
    v24 = AssociatedConformanceWitness;
  }

  else
  {
    v24 = AssociatedConformanceWitness;
    v25 = v36;
    (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v26 = v25;
    (*(v21 + 8))(v16, AssociatedTypeWitness);
    v27 = *(v6 - 8);
    if ((*(v27 + 48))(v26, 1, v6) == 1)
    {
      (*(v37 + 8))(v26, v38);
      v23 = 0;
    }

    else
    {
      v28 = swift_getAssociatedConformanceWitness();
      v23 = (*(v28 + 56))(v6, v28);
      (*(v27 + 8))(v26, v6);
    }
  }

  v29 = v41;
  v46(a1, a2);
  if (v45(v29, 1, AssociatedTypeWitness) == 1)
  {
    (*(v42 + 8))(v29, v43);
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = v39;
    (*(v24 + 104))(AssociatedTypeWitness, v24);
    (*(v21 + 8))(v29, AssociatedTypeWitness);
    v31 = *(v6 - 8);
    if ((*(v31 + 48))(v30, 1, v6) != 1)
    {
      v33 = swift_getAssociatedConformanceWitness();
      v32 = (*(v33 + 72))(v6, v33);
      (*(v31 + 8))(v30, v6);
      if (v23)
      {
        if (v40 == 3)
        {
          return v32 & 1;
        }

        goto LABEL_25;
      }

LABEL_23:
      if (v40 == 3)
      {
        goto LABEL_24;
      }

LABEL_25:
      v32 = 0;
      return v32 & 1;
    }

    (*(v37 + 8))(v30, v38);
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v32 = 0;
  return v32 & 1;
}

uint64_t EventModel.externalURL.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v6 = sub_1CAD4C0F4();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CAD4BC14();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CAD4E4D4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1CAD4E4D4();
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = *(a2 + 336);
  v48 = a1;
  v49 = v3;
  v50 = a2;
  v20(a1, a2);
  v21 = *(AssociatedTypeWitness - 8);
  if ((*(v21 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v14, v11);
LABEL_12:
    v43 = sub_1CAD4BFF4();
    return (*(*(v43 - 8) + 56))(v56, 1, 1, v43);
  }

  (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v21 + 8))(v14, AssociatedTypeWitness);
  v22 = *(v16 - 8);
  if ((*(v22 + 48))(v19, 1, v16) == 1)
  {
    (*(v53 + 8))(v19, v54);
    goto LABEL_12;
  }

  v23 = swift_getAssociatedConformanceWitness();
  v24 = (*(v23 + 24))(v16, v23);
  v26 = v25;
  (*(v22 + 8))(v19, v16);
  v27 = v55;
  sub_1CAD4BBC4();
  sub_1CAD4BBE4();
  v58 = v24;
  v59 = v26;
  sub_1CABA6054();
  v28 = sub_1CAD4E554();
  v30 = v29;

  if (!v30)
  {
    (*(v51 + 8))(v27, v52);
    goto LABEL_12;
  }

  v31 = v50;
  v32 = v48;
  v58 = (*(v50 + 168))(v48, v50);
  v59 = v33;
  v34 = sub_1CAD4E554();
  v36 = v35;

  if (!v36)
  {
    (*(v51 + 8))(v27, v52);

    goto LABEL_12;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1CAD4E694();

  v58 = 0xD000000000000013;
  v59 = 0x80000001CAD77AD0;
  MEMORY[0x1CCAA7330](v28, v30);

  MEMORY[0x1CCAA7330](47, 0xE100000000000000);
  MEMORY[0x1CCAA7330](v34, v36);

  MEMORY[0x1CCAA7330](4026175, 0xE300000000000000);
  v37 = v45;
  (*(v31 + 176))(v32, v31);
  sub_1CAD4C044();
  v39 = v38;
  v40 = v38;
  result = (*(v46 + 8))(v37, v47);
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v39 > -9.22337204e18)
  {
    if (v39 < 9.22337204e18)
    {
      v57 = v39;
      v42 = sub_1CAD4E9B4();
      MEMORY[0x1CCAA7330](v42);

      sub_1CAD4BFE4();

      return (*(v51 + 8))(v27, v52);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t EventModel.uniqueIDWithoutRID.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8, &qword_1CAD59BA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = *(a2 + 168);
  v21[2] = v7(a1, a2);
  v21[3] = v8;
  v21[0] = 0x3D4449522FLL;
  v21[1] = 0xE500000000000000;
  v9 = sub_1CAD4C1D4();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_1CABA6054();
  sub_1CAD4E584();
  v11 = v10;
  sub_1CAB21B68(v6, &qword_1EC4636A8, &qword_1CAD59BA0);

  if (v11)
  {
    return v7(a1, a2);
  }

  v7(a1, a2);
  v13 = sub_1CAD4E164();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = MEMORY[0x1CCAA72A0](v13, v15, v17, v19);

  return v20;
}

uint64_t EventModel.defaultAlarmOffset.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1CAD4E4D4();
  v31 = *(v13 - 8);
  v32 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = (*(a2 + 200))(a1, a2);
  v20 = *(a2 + 336);
  if (v19)
  {
    v20(a1, a2);
    v21 = *(AssociatedTypeWitness - 8);
    if ((*(v21 + 48))(v10, 1, AssociatedTypeWitness) == 1)
    {
      v22 = *(v33 + 8);
      v23 = v10;
LABEL_6:
      v22(v23, v34);
      return 0;
    }

    (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v21 + 8))(v10, AssociatedTypeWitness);
    v26 = *(v12 - 8);
    if ((*(v26 + 48))(v18, 1, v12) == 1)
    {
      (*(v31 + 8))(v18, v32);
      return 0;
    }

    v28 = swift_getAssociatedConformanceWitness();
    v29 = (*(v28 + 112))(v12, v28);
    (*(v26 + 8))(v18, v12);
  }

  else
  {
    v20(a1, a2);
    v24 = *(AssociatedTypeWitness - 8);
    if ((*(v24 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      v22 = *(v33 + 8);
      v23 = v8;
      goto LABEL_6;
    }

    (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v24 + 8))(v8, AssociatedTypeWitness);
    v27 = *(v12 - 8);
    if ((*(v27 + 48))(v16, 1, v12) == 1)
    {
      (*(v31 + 8))(v16, v32);
      return 0;
    }

    v30 = swift_getAssociatedConformanceWitness();
    v29 = (*(v30 + 104))(v12, v30);
    (*(v27 + 8))(v16, v12);
  }

  return v29;
}

uint64_t EventModel.isNonCompletableReminder.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  (*(a2 + 472))(a1, a2);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v13 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v9, AssociatedTypeWitness);
    if ((*(a2 + 480))(a1, a2))
    {
      v13 = 0;
    }

    else
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v13 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness) ^ 1;
    }

    (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  return v13 & 1;
}

BOOL sub_1CAD46444(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1CAD4E9E4() & 1;
    }
  }

  return result;
}

uint64_t EKLocationPredictedLOIModelWrapper.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EC47D828 == -1)
  {
    if (qword_1EC47D830)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EC47D830)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EC47D820 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EC47D814 > a3)
      {
        return 1;
      }

      if (dword_1EC47D814 >= a3)
      {
        return dword_1EC47D818 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC47D830;
  if (qword_1EC47D830)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC47D830 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1CCAA89A0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EC47D814, &dword_1EC47D818);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

void __getQLPreviewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CUIKAttachmentPreviewController.m" lineNumber:15 description:{@"Unable to find class %s", "QLPreviewController"}];

  __break(1u);
}

void __getQLPreviewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuickLookLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CUIKAttachmentPreviewController.m" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}
uint64_t sub_17DA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1A144(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_17DD0(uint64_t a1)
{
  v2 = sub_18448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_17E0C(uint64_t a1)
{
  v2 = sub_18448();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MediaEngageEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27E4A8, &qword_1E5FB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v58 - v7;
  sub_48B8(a1, a1[3]);
  sub_18448();
  sub_1E1E00();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = *(v3 + 8);
  v97 = *v3;
  v98 = v9;
  v99 = v10;
  v100 = v11;
  v101 = v12;
  v106 = 0;
  sub_16778();

  sub_1E1CF0();
  v13 = v98;
  v100, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  if (!v2)
  {
    v28 = *(v3 + 11);
    v96[2] = *(v3 + 9);
    v96[3] = v28;
    v29 = *(v3 + 15);
    v96[4] = *(v3 + 13);
    v96[5] = v29;
    v30 = *(v3 + 7);
    v96[0] = *(v3 + 5);
    v96[1] = v30;
    v31 = *(v3 + 11);
    v92 = *(v3 + 9);
    v93 = v31;
    v32 = *(v3 + 15);
    v94 = *(v3 + 13);
    v95 = v32;
    v33 = *(v3 + 7);
    v90 = *(v3 + 5);
    v91 = v33;
    v105 = 1;
    sub_177D8(v96, &v70);
    sub_1849C();
    sub_1E1CF0();
    v88[2] = v92;
    v88[3] = v93;
    v88[4] = v94;
    v88[5] = v95;
    v88[0] = v90;
    v88[1] = v91;
    sub_184F0(v88);
    v34 = *(v3 + 23);
    v35 = *(v3 + 27);
    v89[4] = *(v3 + 25);
    v89[5] = v35;
    v89[6] = *(v3 + 29);
    v36 = *(v3 + 19);
    v89[0] = *(v3 + 17);
    v89[1] = v36;
    v89[2] = *(v3 + 21);
    v89[3] = v34;
    v37 = *(v3 + 23);
    v38 = *(v3 + 27);
    v85 = *(v3 + 25);
    v86 = v38;
    v87 = *(v3 + 29);
    v39 = *(v3 + 19);
    v81 = *(v3 + 17);
    v82 = v39;
    v83 = *(v3 + 21);
    v84 = v37;
    v104 = 2;
    sub_17AA4(v89, &v70, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v80[4] = v85;
    v80[5] = v86;
    v80[6] = v87;
    v80[0] = v81;
    v80[1] = v82;
    v80[2] = v83;
    v80[3] = v84;
    sub_18E48(v80, &qword_27E490, &qword_205F90);
    v40 = v3[32];
    v41 = v3[33];
    v42 = v3[34];
    *&v70 = v3[31];
    *(&v70 + 1) = v40;
    *&v71 = v41;
    *(&v71 + 1) = v42;
    LOBYTE(v60) = 3;
    sub_178BC(v70, v40, v41, v42);
    sub_18598();
    sub_1E1C80();
    sub_185EC(v70, *(&v70 + 1), v71, *(&v71 + 1), v43, v44, v45, v46);
    v47 = type metadata accessor for MediaEngageEvent.Model(0);
    LOBYTE(v70) = 4;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v103 = 5;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1C80();
    v49 = (v3 + *(v47 + 40));
    v50 = v49[7];
    v51 = v49[5];
    v76 = v49[6];
    v77 = v50;
    v52 = v49[7];
    v78 = v49[8];
    v53 = v49[3];
    v54 = v49[1];
    v72 = v49[2];
    v73 = v53;
    v55 = v49[3];
    v56 = v49[5];
    v74 = v49[4];
    v75 = v56;
    v57 = v49[1];
    v70 = *v49;
    v71 = v57;
    v66 = v76;
    v67 = v52;
    v68 = v49[8];
    v62 = v72;
    v63 = v55;
    v64 = v74;
    v65 = v51;
    v79 = *(v49 + 18);
    v69 = *(v49 + 18);
    v60 = v70;
    v61 = v54;
    v102 = 6;
    sub_17AA4(&v70, v58, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v58[6] = v66;
    v58[7] = v67;
    v58[8] = v68;
    v59 = v69;
    v58[2] = v62;
    v58[3] = v63;
    v58[4] = v64;
    v58[5] = v65;
    v58[0] = v60;
    v58[1] = v61;
    sub_18E48(v58, &qword_27E4A0, &qword_1E8860);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_18448()
{
  result = qword_27E4B0;
  if (!qword_27E4B0)
  {
    result = swift_getWitnessTable(byte_1E61AC, &type metadata for MediaEngageEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E4B0);
  }

  return result;
}

unint64_t sub_1849C()
{
  result = qword_27E4B8;
  if (!qword_27E4B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaEngagementData, &type metadata for MediaEngagementData, v0, v1);
    atomic_store(result, &qword_27E4B8);
  }

  return result;
}

unint64_t sub_18544()
{
  result = qword_27E4C0;
  if (!qword_27E4C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionData, &type metadata for SectionData, v0, v1);
    atomic_store(result, &qword_27E4C0);
  }

  return result;
}

unint64_t sub_18598()
{
  result = qword_27E4C8;
  if (!qword_27E4C8)
  {
    result = swift_getWitnessTable("9m\a", &type metadata for PageData, v0, v1);
    atomic_store(result, &qword_27E4C8);
  }

  return result;
}

void sub_185EC(uint64_t a1, char *a2, void *a3, BAEventReporter *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (a4)
  {
    a4, a2, a3, a4, a5, a6, a7, a8;

    a2, v9, v10, v11, v12, v13, v14, v15;
  }
}

unint64_t sub_18630()
{
  result = qword_27E4D0;
  if (!qword_27E4D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkData, &type metadata for LinkData, v0, v1);
    atomic_store(result, &qword_27E4D0);
  }

  return result;
}

void MediaEngageEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_3D68(&qword_27E498, &unk_1E5FA0);
  __chkstk_darwin(v3 - 8);
  v51 = &v49 - v4;
  v5 = sub_1E1150();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_27E4D8, &qword_1E5FB8);
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for MediaEngageEvent.Model(0);
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_18448();
  v56 = v10;
  v14 = v83;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(a1, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v83 = v7;
    v22 = a1;
    v23 = v13;
    LOBYTE(v69) = 0;
    sub_16720();
    v24 = v55;
    sub_1E1C20();
    v25 = v58;
    v26 = v59;
    *v23 = v57;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    v76 = 1;
    sub_18EA8();
    sub_1E1C20();
    v49 = v11;
    v27 = v80;
    *(v23 + 72) = v79;
    *(v23 + 88) = v27;
    v28 = v82;
    *(v23 + 104) = v81;
    *(v23 + 120) = v28;
    v29 = v78;
    *(v23 + 40) = v77;
    *(v23 + 56) = v29;
    v68 = 2;
    sub_18EFC();
    sub_1E1BB0();
    v30 = v71;
    *(v23 + 184) = v72;
    v31 = v74;
    *(v23 + 200) = v73;
    *(v23 + 216) = v31;
    *(v23 + 232) = v75;
    v32 = v70;
    *(v23 + 136) = v69;
    *(v23 + 152) = v32;
    *(v23 + 168) = v30;
    v67 = 3;
    sub_18F50();
    sub_1E1BB0();
    v33 = v54;
    v34 = v58;
    *(v23 + 248) = v57;
    *(v23 + 264) = v34;
    LOBYTE(v57) = 4;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v35 = v53;
    sub_1E1C20();
    (*(v52 + 32))(v23 + v49[8], v83, v35);
    sub_1E11A0();
    LOBYTE(v57) = 5;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v36 = v51;
    sub_1E1BB0();
    sub_17C54(v36, v23 + v49[9]);
    v67 = 6;
    sub_18FA4();
    sub_1E1BB0();
    (*(v33 + 8))(v56, v24);
    v37 = v23 + v49[10];
    v38 = v64;
    *(v37 + 96) = v63;
    *(v37 + 112) = v38;
    *(v37 + 128) = v65;
    *(v37 + 144) = v66;
    v39 = v60;
    *(v37 + 32) = v59;
    *(v37 + 48) = v39;
    v40 = v62;
    *(v37 + 64) = v61;
    *(v37 + 80) = v40;
    v41 = v58;
    *v37 = v57;
    *(v37 + 16) = v41;
    sub_18FF8(v23, v50);
    sub_4E48(v22, v42, v43, v44, v45, v46, v47, v48);
    sub_1905C(v23);
  }
}

uint64_t sub_18E48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3D68(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_18EA8()
{
  result = qword_27E4E0;
  if (!qword_27E4E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaEngagementData, &type metadata for MediaEngagementData, v0, v1);
    atomic_store(result, &qword_27E4E0);
  }

  return result;
}

unint64_t sub_18EFC()
{
  result = qword_27E4E8;
  if (!qword_27E4E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionData, &type metadata for SectionData, v0, v1);
    atomic_store(result, &qword_27E4E8);
  }

  return result;
}

unint64_t sub_18F50()
{
  result = qword_27E4F0;
  if (!qword_27E4F0)
  {
    result = swift_getWitnessTable("Qm\a", &type metadata for PageData, v0, v1);
    atomic_store(result, &qword_27E4F0);
  }

  return result;
}

unint64_t sub_18FA4()
{
  result = qword_27E4F8;
  if (!qword_27E4F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkData, &type metadata for LinkData, v0, v1);
    atomic_store(result, &qword_27E4F8);
  }

  return result;
}

uint64_t sub_18FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1905C(uint64_t a1)
{
  v2 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19158@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E470, &qword_1E5F78);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v9, v18);
}

uint64_t sub_193D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E470, &qword_1E5F78);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_1969C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E470, &qword_1E5F78);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v21 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[10];

  return v22(v23, a2, a2, v21);
}

void sub_1995C(uint64_t a1)
{
  sub_19B70(319, &qword_27E568, sub_16720, sub_16778, &type metadata for MediaData);
  if (v1 <= 0x3F)
  {
    sub_19B70(319, &qword_27E570, sub_18EA8, sub_1849C, &type metadata for MediaEngagementData);
    if (v2 <= 0x3F)
    {
      sub_19B70(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
      if (v3 <= 0x3F)
      {
        sub_19B70(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
        if (v4 <= 0x3F)
        {
          sub_5684(319);
          if (v5 <= 0x3F)
          {
            sub_5750(319);
            if (v6 <= 0x3F)
            {
              sub_19B70(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
              if (v7 <= 0x3F)
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

void sub_19B70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_19C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_3D68(&qword_27E498, &unk_1E5FA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19D44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_3D68(&qword_27E498, &unk_1E5FA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_19E74(uint64_t a1)
{
  sub_19FE0(319, &qword_27E638, &type metadata for SectionData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E640, &type metadata for PageData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        sub_19F88(319);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &unk_27E650, &type metadata for LinkData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_19F88(uint64_t a1)
{
  if (!qword_27E648)
  {
    sub_1E11A0();
    v1 = sub_1E1A20();
    if (!v2)
    {
      atomic_store(v1, &qword_27E648);
    }
  }
}

void sub_19FE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E1A20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A040()
{
  result = qword_27E698;
  if (!qword_27E698)
  {
    result = swift_getWitnessTable(byte_1E6184, &type metadata for MediaEngageEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E698);
  }

  return result;
}

unint64_t sub_1A098()
{
  result = qword_27E6A0;
  if (!qword_27E6A0)
  {
    result = swift_getWitnessTable("-u\a", &type metadata for MediaEngageEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E6A0);
  }

  return result;
}

unint64_t sub_1A0F0()
{
  result = qword_27E6A8;
  if (!qword_27E6A8)
  {
    result = swift_getWitnessTable(byte_1E611C, &type metadata for MediaEngageEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E6A8);
  }

  return result;
}

uint64_t sub_1A144(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x746144616964656DLL && a2 == 0xE900000000000061;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000213990;
    if (a1 == 0xD000000000000013 && 0x8000000000213990 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEB00000000617461;
      if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000)
      {
        0xE800000000000000, v13, a3, a4, a5, a6, a7, a8;
        return 6;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 6;
        }

        else
        {
          return 7;
        }
      }
    }
  }
}

BookAnalytics::SortBy_optional __swiftcall SortBy.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F330;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 5;
  if (v5 < 5)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t SortBy.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E69646E65637361;
  v3 = 0x44657361656C6572;
  v4 = 0x6972616C75706F70;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69646E6563736564;
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

unint64_t sub_1A4C0()
{
  result = qword_27E6B0;
  if (!qword_27E6B0)
  {
    result = swift_getWitnessTable("mt\a", &type metadata for SortBy, v0, v1);
    atomic_store(result, &qword_27E6B0);
  }

  return result;
}

Swift::Int sub_1A514()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE900000000000067;
  v3 = 0xEB00000000657461;
  v4 = 0xEA00000000007974;
  if (v1 != 3)
  {
    v4 = 0xE500000000000000;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xEA0000000000676ELL;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_1A608(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEB00000000657461;
  v5 = 0xEA00000000007974;
  if (v2 != 3)
  {
    v5 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

Swift::Int sub_1A6E8(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE900000000000067;
  v4 = 0xEB00000000657461;
  v5 = 0xEA00000000007974;
  if (v2 != 3)
  {
    v5 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xEA0000000000676ELL;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

void sub_1A7E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0x6E69646E65637361;
  v5 = 0xEB00000000657461;
  v6 = 0x44657361656C6572;
  v7 = 0xEA00000000007974;
  v8 = 0x6972616C75706F70;
  if (v2 != 3)
  {
    v8 = 0x656C746974;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x69646E6563736564;
    v3 = 0xEA0000000000676ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1A954()
{
  result = qword_27E6B8;
  if (!qword_27E6B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SortBy, &type metadata for SortBy, v0, v1);
    atomic_store(result, &qword_27E6B8);
  }

  return result;
}

uint64_t ClickData.targetType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void ClickData.targetType.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
}

uint64_t LinkData.previousSeriesID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void LinkData.previousSeriesID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
}

uint64_t SearchResultsItemTypeData.section.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void SearchResultsItemTypeData.section.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 80) = a1;
  *(v8 + 88) = a2;
}

void __swiftcall MediaEngagementData.init(mediaPlayMethod:mediaTimePlayed:mediaUserAction:videoMode:muteStatus:isBuffering:isFailed:isMediaCompleted:isPlaying:)(BookAnalytics::MediaEngagementData *__return_ptr retstr, Swift::String mediaPlayMethod, Swift::Int64 mediaTimePlayed, Swift::String mediaUserAction, Swift::String videoMode, Swift::String muteStatus, Swift::Bool isBuffering, Swift::Bool isFailed, Swift::Bool isMediaCompleted, Swift::String isPlaying)
{
  retstr->mediaPlayMethod = mediaPlayMethod;
  retstr->mediaTimePlayed = mediaTimePlayed;
  retstr->mediaUserAction = mediaUserAction;
  retstr->videoMode = videoMode;
  retstr->muteStatus = muteStatus;
  retstr->isBuffering = isBuffering;
  retstr->isFailed = isFailed;
  retstr->isMediaCompleted = isMediaCompleted;
  retstr->isPlaying = isPlaying;
}

uint64_t sub_1AC20(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x616C50616964656DLL;
    v6 = 0x657355616964656DLL;
    if (a1 != 2)
    {
      v6 = 0x646F4D6F65646976;
    }

    if (a1)
    {
      v5 = 0x6D6954616964656DLL;
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
    v1 = 0x64656C6961467369;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x6E6979616C507369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746174536574756DLL;
    if (a1 != 4)
    {
      v3 = 0x7265666675427369;
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

uint64_t sub_1AD84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1BBD0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1ADB8(uint64_t a1)
{
  v2 = sub_1B850();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1ADF4(uint64_t a1)
{
  v2 = sub_1B850();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MediaEngagementData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E6C0, &qword_1E6310);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - v5;
  v7 = *(v1 + 16);
  v27 = *(v1 + 24);
  v28 = v7;
  v8 = *(v1 + 32);
  v25 = *(v1 + 40);
  v26 = v8;
  v9 = *(v1 + 48);
  v23 = *(v1 + 56);
  v24 = v9;
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v20[2] = *(v1 + 73);
  v20[3] = v11;
  v20[1] = *(v1 + 74);
  v12 = *(v1 + 80);
  v13 = *(v1 + 88);
  v21 = v10;
  v22 = v12;
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  sub_48B8(v15, v14);
  sub_1B850();
  sub_1E1E00();
  v38 = 0;
  v18 = v29;
  sub_1E1CB0();
  if (v18)
  {
    return (*(v4 + 8))(v6, v17);
  }

  v29 = v13;
  v37 = 1;
  sub_1E1D10();
  v36 = 2;
  sub_1E1CB0();
  v35 = 3;
  sub_1E1CB0();
  v34 = 4;
  sub_1E1CB0();
  v33 = 5;
  sub_1E1CC0();
  v32 = 6;
  sub_1E1CC0();
  v31 = 7;
  sub_1E1CC0();
  v30 = 8;
  sub_1E1CB0();
  return (*(v4 + 8))(v6, v17);
}

void MediaEngagementData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_27E6D0, &qword_1E6318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  sub_48B8(a1, a1[3]);
  sub_1B850();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v55[0]) = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    LOBYTE(v55[0]) = 1;
    v46 = sub_1E1C40();
    LOBYTE(v55[0]) = 2;
    v45 = sub_1E1BE0();
    v48 = v19;
    LOBYTE(v55[0]) = 3;
    v44 = sub_1E1BE0();
    v47 = v20;
    LOBYTE(v55[0]) = 4;
    v42 = sub_1E1BE0();
    v43 = v21;
    LOBYTE(v55[0]) = 5;
    v60 = sub_1E1BF0();
    LOBYTE(v55[0]) = 6;
    v41 = sub_1E1BF0();
    LOBYTE(v55[0]) = 7;
    v39 = sub_1E1BF0();
    v61 = 8;
    *&v40 = sub_1E1BE0();
    *(&v40 + 1) = v22;
    v38 = v60 & 1;
    v60 = v41 & 1;
    v23 = v39 & 1;
    v41 = v39 & 1;
    (*(v6 + 8))(v8, v5);
    *&v49 = v16;
    *(&v49 + 1) = v18;
    *&v50 = v46;
    v24 = v48;
    *(&v50 + 1) = v45;
    *&v51 = v48;
    v25 = v47;
    *(&v51 + 1) = v44;
    *&v52 = v47;
    v26 = v43;
    *(&v52 + 1) = v42;
    *&v53 = v43;
    BYTE8(v53) = v38;
    BYTE9(v53) = v60;
    BYTE10(v53) = v23;
    v27 = v40;
    v54 = v40;
    v28 = v52;
    a2[2] = v51;
    a2[3] = v28;
    v29 = v54;
    a2[4] = v53;
    a2[5] = v29;
    v30 = v50;
    *a2 = v49;
    a2[1] = v30;
    sub_177D8(&v49, v55);
    sub_4E48(a1, v31, v32, v33, v34, v35, v36, v37);
    v55[0] = v16;
    v55[1] = v18;
    v55[2] = v46;
    v55[3] = v45;
    v55[4] = v24;
    v55[5] = v44;
    v55[6] = v25;
    v55[7] = v42;
    v55[8] = v26;
    v56 = v38;
    v57 = v60;
    v58 = v41;
    v59 = __PAIR128__(*(&v40 + 1), v27);
    sub_184F0(v55);
  }
}

uint64_t _s13BookAnalytics19MediaEngagementDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v25 = a1[8];
  v26 = a1[7];
  v27 = *(a1 + 72);
  v28 = *(a1 + 73);
  v20 = *(a1 + 74);
  v17 = a1[11];
  v18 = a1[10];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v21 = *(a2 + 64);
  v22 = *(a2 + 56);
  v23 = *(a2 + 72);
  v24 = *(a2 + 73);
  v19 = *(a2 + 74);
  v15 = *(a2 + 88);
  v16 = *(a2 + 80);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v8)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_1E1D30();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v8)
    {
      return result;
    }
  }

  if ((v4 != v7 || v3 != v10) && (sub_1E1D30() & 1) == 0 || (v5 != v9 || v6 != v11) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v14 = v20 ^ v19;
  if (v26 != v22 || v25 != v21)
  {
    if (!((v27 ^ v23) & 1 | ((sub_1E1D30() & 1) == 0) | ((v28 ^ v24) | v14) & 1))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if ((v27 ^ v23 | v28 ^ v24 | v14))
  {
    return 0;
  }

LABEL_16:
  if (v18 == v16 && v17 == v15)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_1B850()
{
  result = qword_27E6C8;
  if (!qword_27E6C8)
  {
    result = swift_getWitnessTable("Aq\a", &type metadata for MediaEngagementData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E6C8);
  }

  return result;
}

__n128 sub_1B8AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B8C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1B910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaEngagementData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaEngagementData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BACC()
{
  result = qword_27E6D8;
  if (!qword_27E6D8)
  {
    result = swift_getWitnessTable("Yq\a", &type metadata for MediaEngagementData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E6D8);
  }

  return result;
}

unint64_t sub_1BB24()
{
  result = qword_27E6E0;
  if (!qword_27E6E0)
  {
    result = swift_getWitnessTable(byte_1E6480, &type metadata for MediaEngagementData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E6E0);
  }

  return result;
}

unint64_t sub_1BB7C()
{
  result = qword_27E6E8;
  if (!qword_27E6E8)
  {
    result = swift_getWitnessTable(byte_1E64A8, &type metadata for MediaEngagementData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E6E8);
  }

  return result;
}

uint64_t sub_1BBD0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEF646F6874654D79;
  v11 = a1 == 0x616C50616964656DLL && a2 == 0xEF646F6874654D79;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEF646579616C5065;
    if (a1 == 0x6D6954616964656DLL && a2 == 0xEF646579616C5065 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0xEF6E6F6974634172;
      if (a1 == 0x657355616964656DLL && a2 == 0xEF6E6F6974634172 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x646F4D6F65646976 && a2 == 0xE900000000000065 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x746174536574756DLL && a2 == 0xEA00000000007375 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v15 = 0xEB00000000676E69;
        if (a1 == 0x7265666675427369 && a2 == 0xEB00000000676E69 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else if (a1 == 0x64656C6961467369 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else
        {
          v16 = 0x80000000002139B0;
          if (a1 == 0xD000000000000010 && 0x80000000002139B0 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 7;
          }

          else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067)
          {
            0xE900000000000067, 0xE900000000000067, a3, a4, a5, a6, a7, a8;
            return 8;
          }

          else
          {
            v17 = sub_1E1D30();
            a2, v18, v19, v20, v21, v22, v23, v24;
            if (v17)
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

uint64_t YIRSourceData.longestAudiobook.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void __swiftcall FlowcaseData.init(name:positionInSection:flowcaseID:lastRefreshedTimestamp:flowcaseType:)(BookAnalytics::FlowcaseData *__return_ptr retstr, Swift::String name, Swift::Int32 positionInSection, Swift::String flowcaseID, Swift::Int64_optional lastRefreshedTimestamp, Swift::String_optional flowcaseType)
{
  retstr->name = name;
  retstr->positionInSection = positionInSection;
  retstr->flowcaseID = flowcaseID;
  retstr->lastRefreshedTimestamp.value = lastRefreshedTimestamp.value;
  retstr->lastRefreshedTimestamp.is_nil = lastRefreshedTimestamp.is_nil;
  retstr->flowcaseType = flowcaseType;
}

unint64_t sub_1BF2C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x65736163776F6C66;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x65736163776F6C66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1BFD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CA98(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1C000(uint64_t a1)
{
  v2 = sub_1C748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C03C(uint64_t a1)
{
  v2 = sub_1C748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowcaseData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E6F0, &qword_1E6588);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v16 = *(v1 + 16);
  v7 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = v7;
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v8 = *(v1 + 56);
  v11[0] = *(v1 + 64);
  v11[1] = v8;
  sub_48B8(a1, a1[3]);
  sub_1C748();
  sub_1E1E00();
  v22 = 0;
  v9 = v17;
  sub_1E1CB0();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v21 = 1;
  sub_1E1D00();
  v20 = 2;
  sub_1E1CB0();
  v19 = 3;
  sub_1E1CA0();
  v18 = 4;
  sub_1E1C50();
  return (*(v4 + 8))(v6, v3);
}

void FlowcaseData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27E700, &qword_1E6590);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  sub_48B8(a1, a1[3]);
  sub_1C748();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v48[0]) = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v19 = v16;
    LOBYTE(v48[0]) = 1;
    v41 = sub_1E1C30();
    LOBYTE(v48[0]) = 2;
    v20 = sub_1E1BE0();
    v42 = v21;
    v40 = v20;
    LOBYTE(v48[0]) = 3;
    v39 = sub_1E1BD0();
    v56 = v22 & 1;
    v57 = 4;
    v23 = sub_1E1B80();
    v24 = v8;
    v26 = v25;
    (*(v6 + 8))(v24, v5);
    *&v43 = v19;
    *(&v43 + 1) = v18;
    v27 = v41;
    LODWORD(v44) = v41;
    *(&v44 + 1) = v40;
    *&v45 = v42;
    v28 = v39;
    *(&v45 + 1) = v39;
    HIDWORD(v38) = v56;
    LOBYTE(v46) = v56;
    *(&v46 + 1) = v23;
    v47 = v26;
    *(a2 + 64) = v26;
    v29 = v44;
    *a2 = v43;
    *(a2 + 16) = v29;
    v30 = v46;
    *(a2 + 32) = v45;
    *(a2 + 48) = v30;
    sub_1C79C(&v43, v48);
    sub_4E48(a1, v31, v32, v33, v34, v35, v36, v37);
    v48[0] = v19;
    v48[1] = v18;
    v49 = v27;
    v50 = v40;
    v51 = v42;
    v52 = v28;
    v53 = BYTE4(v38);
    v54 = v23;
    v55 = v26;
    sub_1C7D4(v48);
  }
}

uint64_t _s13BookAnalytics12FlowcaseDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 48);
  v16 = a1[7];
  v17 = a1[5];
  v18 = a1[8];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v15 = *(a2 + 56);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }

LABEL_7:
    if ((v3 != v7 || v4 != v8) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      if (v17 == v9)
      {
        v14 = v10;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    if (v18)
    {
      if (!v11 || (v16 != v15 || v18 != v11) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  v12 = sub_1E1D30();
  result = 0;
  if ((v12 & 1) != 0 && v2 == v6)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1C748()
{
  result = qword_27E6F8;
  if (!qword_27E6F8)
  {
    result = swift_getWitnessTable(byte_1E6788, &type metadata for FlowcaseData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E6F8);
  }

  return result;
}

unint64_t sub_1C808()
{
  result = qword_27E708;
  if (!qword_27E708)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlowcaseData, &type metadata for FlowcaseData, v0, v1);
    atomic_store(result, &qword_27E708);
  }

  return result;
}

unint64_t sub_1C860()
{
  result = qword_27E710;
  if (!qword_27E710)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlowcaseData, &type metadata for FlowcaseData, v0, v1);
    atomic_store(result, &qword_27E710);
  }

  return result;
}

__n128 sub_1C8B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C8D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C920(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C994()
{
  result = qword_27E718;
  if (!qword_27E718)
  {
    result = swift_getWitnessTable("\to\a", &type metadata for FlowcaseData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E718);
  }

  return result;
}

unint64_t sub_1C9EC()
{
  result = qword_27E720;
  if (!qword_27E720)
  {
    result = swift_getWitnessTable("Qo\a", &type metadata for FlowcaseData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E720);
  }

  return result;
}

unint64_t sub_1CA44()
{
  result = qword_27E728;
  if (!qword_27E728)
  {
    result = swift_getWitnessTable("9o\a", &type metadata for FlowcaseData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E728);
  }

  return result;
}

uint64_t sub_1CA98(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v9 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000000002139D0;
    if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x65736163776F6C66 && a2 == 0xEA00000000004449 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0x80000000002139F0;
      if (a1 == 0xD000000000000016 && 0x80000000002139F0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000065707954)
      {
        0xEC00000065707954, 0xEC00000065707954, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
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

BookAnalytics::ErrorData __swiftcall ErrorData.init(errorCode:errorDescription:)(Swift::String errorCode, Swift::String errorDescription)
{
  *v2 = errorCode;
  v2[1] = errorDescription;
  result.errorDescription = errorDescription;
  result.errorCode = errorCode;
  return result;
}

uint64_t sub_1CC68()
{
  if (*v0)
  {
    return 0x6570795465676170;
  }

  else
  {
    return 0x444965676170;
  }
}

void sub_1CCA0(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x6570795465676170 && a2 == 0xE800000000000000)
  {
    0xE800000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CD78(uint64_t a1)
{
  v2 = sub_1D260();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CDB4(uint64_t a1)
{
  v2 = sub_1D260();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PageData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E730, &qword_1E67D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_48B8(a1, a1[3]);
  sub_1D260();
  sub_1E1E00();
  v12 = 0;
  v8 = v10[3];
  sub_1E1C50();
  if (!v8)
  {
    v11 = 1;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v3);
}

void PageData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_27E740, &qword_1E67E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_48B8(a1, a1[3]);
  sub_1D260();
  sub_1E1DF0();
  if (v2)
  {
    v16 = 0;
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v46 = 0;
    v17 = sub_1E1B80();
    v16 = v18;
    v44 = v17;
    v45 = 1;
    v26 = sub_1E1BE0();
    v28 = v27;
    (*(v6 + 8))(v8, v5);
    *a2 = v44;
    a2[1] = v16;
    a2[2] = v26;
    a2[3] = v28;

    sub_4E48(a1, v29, v30, v31, v32, v33, v34, v35);
    v28, v36, v37, v38, v39, v40, v41, v42;
  }

  v16, v19, v20, v21, v22, v23, v24, v25;
}

uint64_t _s13BookAnalytics8PageDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_1E1D30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_1D260()
{
  result = qword_27E738;
  if (!qword_27E738)
  {
    result = swift_getWitnessTable(byte_1E69BC, &type metadata for PageData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E738);
  }

  return result;
}

__n128 sub_1D2BC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D310(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1D374()
{
  result = qword_27E748;
  if (!qword_27E748)
  {
    result = swift_getWitnessTable(byte_1E6994, &type metadata for PageData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E748);
  }

  return result;
}

unint64_t sub_1D3CC()
{
  result = qword_27E750;
  if (!qword_27E750)
  {
    result = swift_getWitnessTable(byte_1E6904, &type metadata for PageData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E750);
  }

  return result;
}

unint64_t sub_1D424()
{
  result = qword_27E758;
  if (!qword_27E758)
  {
    result = swift_getWitnessTable(byte_1E692C, &type metadata for PageData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E758);
  }

  return result;
}

void __swiftcall ReadingGoalsData.init(defaultReadingGoal:defaultReadingGoalChangeDate:dailyReadingGoalDuration:dailyReadingGoalStatus:weeklyGoalsStatus:longestGoalReachedDays:lastLongestGoalReachedDate:defaultYearlyReadingGoal:defaultYearlyReadingGoalChangeDate:yearlyReadingGoalCount:yearlyReadingGoalStatus:)(BookAnalytics::ReadingGoalsData *__return_ptr retstr, BookAnalytics::DefaultReadingGoal defaultReadingGoal, Swift::Double defaultReadingGoalChangeDate, Swift::Int64 dailyReadingGoalDuration, BookAnalytics::DailyReadingGoalStatus dailyReadingGoalStatus, Swift::Int32 weeklyGoalsStatus, Swift::Int32 longestGoalReachedDays, Swift::Double lastLongestGoalReachedDate, BookAnalytics::DefaultReadingGoal defaultYearlyReadingGoal, Swift::Double defaultYearlyReadingGoalChangeDate, Swift::Int64 yearlyReadingGoalCount, BookAnalytics::DailyReadingGoalStatus yearlyReadingGoalStatus)
{
  v12 = *dailyReadingGoalStatus;
  v13 = *defaultYearlyReadingGoal;
  v14 = *yearlyReadingGoalStatus;
  retstr->defaultReadingGoal = *defaultReadingGoal;
  retstr->defaultReadingGoalChangeDate = defaultReadingGoalChangeDate;
  retstr->dailyReadingGoalDuration = dailyReadingGoalDuration;
  retstr->dailyReadingGoalStatus = v12;
  retstr->weeklyGoalsStatus = weeklyGoalsStatus;
  retstr->longestGoalReachedDays = longestGoalReachedDays;
  retstr->lastLongestGoalReachedDate = lastLongestGoalReachedDate;
  retstr->defaultYearlyReadingGoal = v13;
  retstr->defaultYearlyReadingGoalChangeDate = defaultYearlyReadingGoalChangeDate;
  retstr->yearlyReadingGoalCount = yearlyReadingGoalCount;
  retstr->yearlyReadingGoalStatus = v14;
}

unint64_t sub_1D5D0(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  if (a1 <= 4u)
  {
    v6 = 0xD000000000000018;
    v7 = 0xD000000000000011;
    if (a1 == 3)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001CLL;
    if (!a1)
    {
      v8 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000022;
    if (a1 == 9)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001ALL;
    if (a1 != 6)
    {
      v4 = 0xD000000000000018;
    }

    if (a1 != 5)
    {
      v1 = v4;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D708@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1E764(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1D73C(uint64_t a1)
{
  v2 = sub_1E1E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D778(uint64_t a1)
{
  v2 = sub_1E1E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalsData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E760, &qword_1E6A10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *v1;
  v21 = *(v1 + 2);
  v8 = v1[24];
  v9 = *(v1 + 8);
  v19 = *(v1 + 7);
  v20 = v8;
  v17 = v1[48];
  v18 = v9;
  v16[1] = *(v1 + 8);
  v10 = v1[72];
  sub_48B8(a1, a1[3]);
  sub_1E1E8();
  v11 = v3;
  sub_1E1E00();
  v37 = v7;
  v36 = 0;
  sub_1E23C();
  v12 = v22;
  sub_1E1CF0();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = v20;
  v35 = 1;
  sub_1E1CD0();
  v34 = 2;
  v22 = v11;
  sub_1E1D10();
  v33 = v13;
  v32 = 3;
  sub_1E290();
  sub_1E1CF0();
  v31 = 4;
  sub_1E1D00();
  v30 = 5;
  sub_1E1D00();
  v29 = 6;
  sub_1E1CD0();
  v28 = v17;
  v27 = 7;
  sub_1E1CF0();
  v26 = 8;
  sub_1E1CD0();
  v25 = 9;
  sub_1E1D10();
  v24 = v10;
  v23 = 10;
  v14 = v22;
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v14);
}

void ReadingGoalsData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27E780, &qword_1E6A18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  sub_48B8(a1, a1[3]);
  sub_1E1E8();
  sub_1E1DF0();
  if (!v2)
  {
    v51 = 0;
    sub_1E2E4();
    sub_1E1C20();
    v16 = v52;
    v50 = 1;
    sub_1E1C00();
    v18 = v17;
    v49 = 2;
    v19 = sub_1E1C40();
    v36 = v16;
    v37 = v19;
    v47 = 3;
    v20 = sub_1E338();
    sub_1E1C20();
    v35 = v20;
    LODWORD(v20) = v48;
    v46 = 4;
    v21 = sub_1E1C30();
    v33 = v20;
    v34 = v21;
    v45 = 5;
    v32 = sub_1E1C30();
    v44 = 6;
    sub_1E1C00();
    v23 = v22;
    v42 = 7;
    sub_1E1C20();
    v24 = v43;
    v41 = 8;
    sub_1E1C00();
    v26 = v25;
    v40 = 9;
    v27 = sub_1E1C40();
    v38 = 10;
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v28 = v39;
    *a2 = v36;
    *(a2 + 8) = v18;
    *(a2 + 16) = v37;
    v29 = v34;
    *(a2 + 24) = v33;
    v30 = v32;
    *(a2 + 28) = v29;
    *(a2 + 32) = v30;
    *(a2 + 40) = v23;
    *(a2 + 48) = v24;
    *(a2 + 56) = v26;
    *(a2 + 64) = v27;
    *(a2 + 72) = v28;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics16ReadingGoalsDataV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 2);
  v11 = *(a1 + 24);
  v12 = *(a1 + 7);
  v102 = *(a1 + 8);
  v13 = a1[5];
  v100 = *(a1 + 48);
  v14 = a1[7];
  v99 = *(a1 + 8);
  v97 = *(a1 + 72);
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 28);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = 89;
  v101 = *(a2 + 48);
  v22 = *(a2 + 56);
  if (v8 != 1)
  {
    v21 = 78;
  }

  v98 = *(a2 + 64);
  if (*a1)
  {
    v23 = v21;
  }

  else
  {
    v23 = 16718;
  }

  if (v8)
  {
    v24 = 0xE100000000000000;
  }

  else
  {
    v24 = 0xE200000000000000;
  }

  v96 = *(a2 + 72);
  v25 = 89;
  if (*a2 != 1)
  {
    v25 = 78;
  }

  if (*a2)
  {
    v26 = v25;
  }

  else
  {
    v26 = &loc_414C + 2;
  }

  if (*a2)
  {
    v27 = 0xE100000000000000;
  }

  else
  {
    v27 = 0xE200000000000000;
  }

  if (v23 == v26 && v24 == v27)
  {
    v24, a2, v26, a4, a5, a6, a7, a8;
    v27, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v41 = sub_1E1D30();
    v24, v42, v43, v44, v45, v46, v47, v48;
    v27, v49, v50, v51, v52, v53, v54, v55;
    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  if (v9 != v15 || v10 != v16 || (sub_228B4(v11, v17, v35, v36, v37, v38, v39, v40) & 1) == 0 || v12 != v18 || v102 != v19 || v13 != v20)
  {
    return 0;
  }

  if (!v100)
  {
    v63 = 0xE200000000000000;
    v64 = 16718;
    v62 = v101;
    if (!v101)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v62 = v101;
  v63 = 0xE100000000000000;
  if (v100 != 1)
  {
    v64 = 78;
    if (!v101)
    {
      goto LABEL_36;
    }

LABEL_32:
    v65 = 0xE100000000000000;
    if (v62 == 1)
    {
      v66 = &stru_20 + 57;
      if (v64 != 89)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v66 = &stru_20 + 46;
      if (v64 != 78)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_39;
  }

  v64 = 89;
  if (v101)
  {
    goto LABEL_32;
  }

LABEL_36:
  v65 = 0xE200000000000000;
  v66 = &loc_414C + 2;
  if (v64 != 16718)
  {
LABEL_41:
    v80 = sub_1E1D30();
    v63, v81, v82, v83, v84, v85, v86, v87;
    v65, v88, v89, v90, v91, v92, v93, v94;
    if (v80)
    {
      goto LABEL_42;
    }

    return 0;
  }

LABEL_39:
  if (v63 != v65)
  {
    goto LABEL_41;
  }

  v63, v56, v66, v57, v58, v59, v60, v61;
  v65, v67, v68, v69, v70, v71, v72, v73;
LABEL_42:
  if (v14 != v22 || v99 != v98)
  {
    return 0;
  }

  return sub_228B4(v97, v96, v74, v75, v76, v77, v78, v79);
}

unint64_t sub_1E1E8()
{
  result = qword_27E768;
  if (!qword_27E768)
  {
    result = swift_getWitnessTable("ej\a", &type metadata for ReadingGoalsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E768);
  }

  return result;
}

unint64_t sub_1E23C()
{
  result = qword_27E770;
  if (!qword_27E770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultReadingGoal, &type metadata for DefaultReadingGoal, v0, v1);
    atomic_store(result, &qword_27E770);
  }

  return result;
}

unint64_t sub_1E290()
{
  result = qword_27E778;
  if (!qword_27E778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DailyReadingGoalStatus, &type metadata for DailyReadingGoalStatus, v0, v1);
    atomic_store(result, &qword_27E778);
  }

  return result;
}

unint64_t sub_1E2E4()
{
  result = qword_27E788;
  if (!qword_27E788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultReadingGoal, &type metadata for DefaultReadingGoal, v0, v1);
    atomic_store(result, &qword_27E788);
  }

  return result;
}

unint64_t sub_1E338()
{
  result = qword_27E790;
  if (!qword_27E790)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DailyReadingGoalStatus, &type metadata for DailyReadingGoalStatus, v0, v1);
    atomic_store(result, &qword_27E790);
  }

  return result;
}

unint64_t sub_1E390()
{
  result = qword_27E798;
  if (!qword_27E798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingGoalsData, &type metadata for ReadingGoalsData, v0, v1);
    atomic_store(result, &qword_27E798);
  }

  return result;
}

unint64_t sub_1E3E8()
{
  result = qword_27E7A0;
  if (!qword_27E7A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingGoalsData, &type metadata for ReadingGoalsData, v0, v1);
    atomic_store(result, &qword_27E7A0);
  }

  return result;
}

__n128 sub_1E43C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E460(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[73])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoalsData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReadingGoalsData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E660()
{
  result = qword_27E7A8;
  if (!qword_27E7A8)
  {
    result = swift_getWitnessTable("}j\a", &type metadata for ReadingGoalsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E7A8);
  }

  return result;
}

unint64_t sub_1E6B8()
{
  result = qword_27E7B0;
  if (!qword_27E7B0)
  {
    result = swift_getWitnessTable(byte_1E6B5C, &type metadata for ReadingGoalsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E7B0);
  }

  return result;
}

unint64_t sub_1E710()
{
  result = qword_27E7B8;
  if (!qword_27E7B8)
  {
    result = swift_getWitnessTable(byte_1E6B84, &type metadata for ReadingGoalsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E7B8);
  }

  return result;
}

uint64_t sub_1E764(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000213A10;
  v11 = a1 == 0xD000000000000012 && 0x8000000000213A10 == a2;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000213A30;
    if (a1 == 0xD00000000000001CLL && 0x8000000000213A30 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x8000000000213A50;
      if (a1 == 0xD000000000000018 && 0x8000000000213A50 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0x8000000000213A70;
        if (a1 == 0xD000000000000016 && 0x8000000000213A70 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v16 = 0x8000000000213A90;
          if (a1 == 0xD000000000000011 && 0x8000000000213A90 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else
          {
            v17 = 0x8000000000213AB0;
            if (a1 == 0xD000000000000016 && 0x8000000000213AB0 == a2 || (sub_1E1D30() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 5;
            }

            else
            {
              v18 = 0x8000000000213AD0;
              if (a1 == 0xD00000000000001ALL && 0x8000000000213AD0 == a2 || (sub_1E1D30() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 6;
              }

              else
              {
                v19 = 0x8000000000213AF0;
                if (a1 == 0xD000000000000018 && 0x8000000000213AF0 == a2 || (sub_1E1D30() & 1) != 0)
                {
                  a2, v19, a3, a4, a5, a6, a7, a8;
                  return 7;
                }

                else
                {
                  v20 = 0x8000000000213B10;
                  if (a1 == 0xD000000000000022 && 0x8000000000213B10 == a2 || (sub_1E1D30() & 1) != 0)
                  {
                    a2, v20, a3, a4, a5, a6, a7, a8;
                    return 8;
                  }

                  else
                  {
                    v21 = 0x8000000000213B40;
                    if (a1 == 0xD000000000000016 && 0x8000000000213B40 == a2 || (sub_1E1D30() & 1) != 0)
                    {
                      a2, v21, a3, a4, a5, a6, a7, a8;
                      return 9;
                    }

                    else if (a1 == 0xD000000000000017 && 0x8000000000213B60 == a2)
                    {
                      a2, 0x8000000000213B60, a3, a4, a5, a6, a7, a8;
                      return 10;
                    }

                    else
                    {
                      v22 = sub_1E1D30();
                      a2, v23, v24, v25, v26, v27, v28, v29;
                      if (v22)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

uint64_t AccountEvent.accountData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccountEvent.accountData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AccountEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccountEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AccountEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AccountEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountEvent.Model.init(accountData:eventData:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for AccountEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_1EFFC()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x44746E756F636361;
  }
}

void sub_1F044(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEB00000000617461;
  v13 = a1 == 0x44746E756F636361 && a2 == 0xEB00000000617461;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_1F12C(uint64_t a1)
{
  v2 = sub_1F360();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1F168(uint64_t a1)
{
  v2 = sub_1F360();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27E7F8, &qword_1E6C70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_1F360();
  sub_1E1E00();
  v11 = *v3;
  v10[13] = 0;
  sub_1F3B4();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for AccountEvent.Model(0);
    v10[12] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1F360()
{
  result = qword_27E800;
  if (!qword_27E800)
  {
    result = swift_getWitnessTable("Uh\a", &type metadata for AccountEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E800);
  }

  return result;
}

unint64_t sub_1F3B4()
{
  result = qword_27E808;
  if (!qword_27E808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountData, &type metadata for AccountData, v0, v1);
    atomic_store(result, &qword_27E808);
  }

  return result;
}

void AccountEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E1150();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_27E810, &qword_1E6C78);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AccountEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_1F360();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = v10;
    v25 = v8;
    v19 = v28;
    v20 = v29;
    v32 = 0;
    sub_1F704();
    v21 = v30;
    sub_1E1C20();
    v24 = v18;
    *v18 = v33;
    v31 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v23 = v5;
    sub_1E1C20();
    (*(v19 + 8))(v7, v21);
    v22 = v24;
    (*(v26 + 32))(&v24[*(v25 + 20)], v23, v20);
    sub_1F758(v22, v27);
  }

  sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_1F704()
{
  result = qword_27E818;
  if (!qword_27E818)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountData, &type metadata for AccountData, v0, v1);
    atomic_store(result, &qword_27E818);
  }

  return result;
}

uint64_t sub_1F758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_1F948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1FA64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1FB78(uint64_t a1)
{
  sub_1FBFC(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1FBFC(uint64_t a1)
{
  if (!qword_27E888)
  {
    sub_1F704();
    sub_1F3B4();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_27E888);
    }
  }
}

uint64_t sub_1FC78(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1FD30(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1FDD0(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1FE60()
{
  result = qword_27E948;
  if (!qword_27E948)
  {
    result = swift_getWitnessTable("mh\a", &type metadata for AccountEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E948);
  }

  return result;
}

unint64_t sub_1FEB8()
{
  result = qword_27E950;
  if (!qword_27E950)
  {
    result = swift_getWitnessTable(byte_1E6D6C, &type metadata for AccountEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E950);
  }

  return result;
}

unint64_t sub_1FF10()
{
  result = qword_27E958;
  if (!qword_27E958)
  {
    result = swift_getWitnessTable(byte_1E6D94, &type metadata for AccountEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E958);
  }

  return result;
}

uint64_t sub_1FF64(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0x43676E6964616572;
  v12 = 0xEF676E696863616FLL;
  if (a1 != 5)
  {
    v11 = 0x6F72446563697270;
    v12 = 0xE900000000000070;
  }

  v13 = 0xE500000000000000;
  v14 = 0x736C616F67;
  if (a1 != 3)
  {
    v14 = 0x62756C636B6F6F62;
    v13 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v11 = v14;
    v12 = v13;
  }

  v15 = 0xE600000000000000;
  v16 = 0x6C61626F6C67;
  if (a1 != 1)
  {
    v16 = 0x6E656D6D6F636572;
    v15 = 0xEF736E6F69746164;
  }

  if (a1)
  {
    v10 = v15;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v19 = 0xE600000000000000;
        v8 = 0x6C61626F6C67;
        if (v17 != 0x6C61626F6C67)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v8 = 0x6E656D6D6F636572;
        v19 = 0xEF736E6F69746164;
        if (v17 != 0x6E656D6D6F636572)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v17 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v8 = 0x43676E6964616572;
      v19 = 0xEF676E696863616FLL;
      if (v17 != 0x43676E6964616572)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = 0x6F72446563697270;
      v19 = 0xE900000000000070;
      if (v17 != 0x6F72446563697270)
      {
LABEL_39:
        v20 = sub_1E1D30();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v19 = 0xE500000000000000;
    v8 = 0x736C616F67;
    if (v17 != 0x736C616F67)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    v8 = 0x62756C636B6F6F62;
    if (v17 != 0x62756C636B6F6F62)
    {
      goto LABEL_39;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_39;
  }

  v20 = 1;
LABEL_40:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_201BC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0xE500000000000000;
  v12 = 0x6570697773;
  v13 = 0xD000000000000015;
  v14 = 0x8000000000212890;
  if (a1 != 4)
  {
    v13 = 0x776F6C6C6F66;
    v14 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v12 = v13;
    v11 = v14;
  }

  v15 = 0x696C43656C746974;
  v16 = 0xEA00000000006B63;
  if (a1 != 1)
  {
    v15 = 0x6B63696C63;
    v16 = 0xE500000000000000;
  }

  if (a1)
  {
    v10 = v16;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v11;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v19 = 0xE500000000000000;
      v8 = 0x6570697773;
      if (v17 != 0x6570697773)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0xD000000000000015;
      v19 = 0x8000000000212890;
      if (v17 != 0xD000000000000015)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = 0xE600000000000000;
      v8 = 0x776F6C6C6F66;
      if (v17 != 0x776F6C6C6F66)
      {
LABEL_34:
        v20 = sub_1E1D30();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0x696C43656C746974;
      v19 = 0xEA00000000006B63;
      if (v17 != 0x696C43656C746974)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = 0xE500000000000000;
      v8 = 0x6B63696C63;
      if (v17 != 0x6B63696C63)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v19 = 0xE700000000000000;
    if (v17 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_34;
  }

  v20 = 1;
LABEL_35:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_20390(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xEF646165526F5474;
  v9 = 0x6E61576F54646461;
  v10 = a1;
  if (a1 <= 4u)
  {
    v20 = 0xE600000000000000;
    v21 = 0x6E6F74747562;
    v22 = 0xE300000000000000;
    v23 = 7959906;
    if (a1 != 3)
    {
      v23 = 0x6574656C6564;
      v22 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v21 = v23;
      v20 = v22;
    }

    v24 = 0x6D61536F69647561;
    v25 = 0xEB00000000656C70;
    if (!a1)
    {
      v24 = 0x6E61576F54646461;
      v25 = 0xEF646165526F5474;
    }

    if (a1 <= 1u)
    {
      v18 = v24;
    }

    else
    {
      v18 = v21;
    }

    if (v10 <= 1)
    {
      v19 = v25;
    }

    else
    {
      v19 = v20;
    }
  }

  else
  {
    v11 = 0x706D615364616572;
    v12 = 0xEA0000000000656CLL;
    v13 = 0xE600000000000000;
    v14 = 0x64616F6C6572;
    if (a1 != 9)
    {
      v14 = 0xD000000000000014;
      v13 = 0x8000000000213310;
    }

    if (a1 != 8)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0xE700000000000000;
    v16 = 0x7373696D736964;
    v17 = 0x64616F6C6E776F64;
    if (a1 != 6)
    {
      v17 = 0x657461676976616ELL;
    }

    if (a1 != 5)
    {
      v16 = v17;
      v15 = 0xE800000000000000;
    }

    if (a1 <= 7u)
    {
      v18 = v16;
    }

    else
    {
      v18 = v11;
    }

    if (v10 <= 7)
    {
      v19 = v15;
    }

    else
    {
      v19 = v12;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v8 = 0xE600000000000000;
        v9 = 0x6E6F74747562;
        if (v18 != 0x6E6F74747562)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 3)
      {
        v8 = 0xE300000000000000;
        v9 = 7959906;
        if (v18 != 7959906)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v8 = 0xE600000000000000;
        v9 = 0x6574656C6564;
        if (v18 != 0x6574656C6564)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_56;
    }

    if (a2)
    {
      v9 = 0x6D61536F69647561;
      v8 = 0xEB00000000656C70;
      if (v18 != 0x6D61536F69647561)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v9 = 0x706D615364616572;
        v8 = 0xEA0000000000656CLL;
        if (v18 != 0x706D615364616572)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 9)
      {
        v8 = 0xE600000000000000;
        v9 = 0x64616F6C6572;
        if (v18 != 0x64616F6C6572)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v9 = 0xD000000000000014;
        v8 = 0x8000000000213310;
        if (v18 != 0xD000000000000014)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_56;
    }

    if (a2 == 5)
    {
      v8 = 0xE700000000000000;
      v9 = 0x7373696D736964;
      if (v18 != 0x7373696D736964)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    v8 = 0xE800000000000000;
    if (a2 == 6)
    {
      v9 = 0x64616F6C6E776F64;
      if (v18 != 0x64616F6C6E776F64)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    v9 = 0x657461676976616ELL;
  }

  if (v18 != v9)
  {
LABEL_59:
    v26 = sub_1E1D30();
    goto LABEL_60;
  }

LABEL_56:
  if (v19 != v8)
  {
    goto LABEL_59;
  }

  v26 = 1;
LABEL_60:
  v19, a2, v9, a4, a5, a6, a7, a8;
  v8, v27, v28, v29, v30, v31, v32, v33;
  return v26 & 1;
}

uint64_t sub_206CC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v10 = 7368564;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v8)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v9 = 0xE800000000000000;
    v10 = 0x6B72616D6B6F6F62;
  }

  else if (a1 == 3)
  {
    v9 = 0xE500000000000000;
    v10 = 0x7365746F6ELL;
  }

  else
  {
    v10 = 0x6867696C68676968;
    v9 = 0xEA00000000007374;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 7368564;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    if (v10 != v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    v12 = 0x7365746F6ELL;
    if (a2 != 3)
    {
      v12 = 0x6867696C68676968;
      v11 = 0xEA00000000007374;
    }

    if (a2 == 2)
    {
      v13 = 0x6B72616D6B6F6F62;
    }

    else
    {
      v13 = v12;
    }

    if (a2 == 2)
    {
      v14 = 0xE800000000000000;
    }

    else
    {
      v14 = v11;
    }

    if (v10 != v13)
    {
      goto LABEL_33;
    }
  }

  if (v9 != v14)
  {
LABEL_33:
    v15 = sub_1E1D30();
    goto LABEL_34;
  }

  v15 = 1;
LABEL_34:
  v9, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_20848(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 6579297;
  v12 = 0xE600000000000000;
  if (a1 == 5)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    v11 = 0x65766F6D6572;
  }

  v13 = 0x80000000002128B0;
  if (a1 == 3)
  {
    v14 = 0xD000000000000016;
  }

  else
  {
    v14 = 0x63656C6553626174;
  }

  if (a1 != 3)
  {
    v13 = 0xEC0000006E6F6974;
  }

  if (a1 <= 4u)
  {
    v12 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = 0xD000000000000015;
  v16 = 0x8000000000212890;
  if (a1 != 1)
  {
    v15 = 0x6570697773;
    v16 = 0xE500000000000000;
  }

  if (a1)
  {
    v10 = v16;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0xD000000000000015;
        v19 = 0x8000000000212890;
        if (v17 != 0xD000000000000015)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v19 = 0xE500000000000000;
        v8 = 0x6570697773;
        if (v17 != 0x6570697773)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v17 != 0x6E776F6E6B6E75)
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v19 = 0xE300000000000000;
      v8 = 6579297;
      if (v17 != 6579297)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v19 = 0xE600000000000000;
      v8 = 0x65766F6D6572;
      if (v17 != 0x65766F6D6572)
      {
LABEL_44:
        v20 = sub_1E1D30();
        goto LABEL_45;
      }
    }
  }

  else if (a2 == 3)
  {
    v19 = 0x80000000002128B0;
    v8 = 0xD000000000000016;
    if (v17 != 0xD000000000000016)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v8 = 0x63656C6553626174;
    v19 = 0xEC0000006E6F6974;
    if (v17 != 0x63656C6553626174)
    {
      goto LABEL_44;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_44;
  }

  v20 = 1;
LABEL_45:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_20A64(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v10 = 0x746E65636572;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v8)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v9 = 0xE500000000000000;
    v10 = 0x656C746974;
  }

  else
  {
    v9 = 0xE600000000000000;
    if (a1 == 3)
    {
      v10 = 0x726F68747561;
    }

    else
    {
      v10 = 0x6C61756E616DLL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v12 = 0x746E65636572;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (v10 != v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = 0x726F68747561;
    if (a2 != 3)
    {
      v11 = 0x6C61756E616DLL;
    }

    if (a2 == 2)
    {
      v12 = 0x656C746974;
    }

    else
    {
      v12 = v11;
    }

    if (a2 == 2)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    if (v10 != v12)
    {
      goto LABEL_33;
    }
  }

  if (v9 != v13)
  {
LABEL_33:
    v14 = sub_1E1D30();
    goto LABEL_34;
  }

  v14 = 1;
LABEL_34:
  v9, a2, v12, a4, a5, a6, a7, a8;
  v13, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

uint64_t sub_20BCC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0x6172447265766F63;
  if (a1 == 2)
  {
    v11 = 0x6E69626275726373;
  }

  v12 = 0x61546E6F74747562;
  v13 = 0xE900000000000070;
  if (a1)
  {
    v10 = 0xE900000000000070;
  }

  else
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  if (v9 <= 1)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0xE900000000000067;
  }

  v16 = 0x6E69626275726373;
  if (a2 != 2)
  {
    v16 = 0x6172447265766F63;
  }

  if (a2)
  {
    v8 = 0x61546E6F74747562;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v17 = v8;
  }

  else
  {
    v17 = v16;
  }

  if (a2 <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0xE900000000000067;
  }

  if (v14 == v17 && v15 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1E1D30();
  }

  v15, a2, v17, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_20CFC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0xD000000000000010;
  v12 = 0x8000000000212A80;
  v13 = 0x4C6465726564726FLL;
  v14 = 0xEF6D6F6F52747369;
  if (a1 != 4)
  {
    v13 = 0x676E6970756F7267;
    v14 = 0xEC00000065676150;
  }

  if (a1 != 3)
  {
    v11 = v13;
    v12 = v14;
  }

  v15 = 0x6F6F527265707573;
  v16 = 0xE90000000000006DLL;
  if (a1 != 1)
  {
    v15 = 0x6F52656C706D6973;
    v16 = 0xEA00000000006D6FLL;
  }

  if (a1)
  {
    v10 = v16;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v11;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0xD000000000000010;
      v19 = 0x8000000000212A80;
      if (v17 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0x4C6465726564726FLL;
      v19 = 0xEF6D6F6F52747369;
      if (v17 != 0x4C6465726564726FLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v8 = 0x676E6970756F7267;
      v19 = 0xEC00000065676150;
      if (v17 != 0x676E6970756F7267)
      {
LABEL_34:
        v20 = sub_1E1D30();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0x6F6F527265707573;
      v19 = 0xE90000000000006DLL;
      if (v17 != 0x6F6F527265707573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v8 = 0x6F52656C706D6973;
      v19 = 0xEA00000000006D6FLL;
      if (v17 != 0x6F52656C706D6973)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v19 = 0xE700000000000000;
    if (v17 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_34;
  }

  v20 = 1;
LABEL_35:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_20F18(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v11 = 0x65536E497478656ELL;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (v8)
    {
      v12 = 0xEC00000073656972;
    }

    else
    {
      v12 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0x48676E6964616572;
    v10 = 0xEE0079726F747369;
    if (a1 != 3)
    {
      v9 = 0xD000000000000010;
      v10 = 0x8000000000212870;
    }

    if (a1 == 2)
    {
      v11 = 0x6D6F724665726F6DLL;
    }

    else
    {
      v11 = v9;
    }

    if (v8 == 2)
    {
      v12 = 0xEE00726F68747541;
    }

    else
    {
      v12 = v10;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v15 = 0x65536E497478656ELL;
    }

    else
    {
      v15 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v16 = 0xEC00000073656972;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    if (v11 != v15)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = 0x48676E6964616572;
    v14 = 0x8000000000212870;
    if (a2 == 3)
    {
      v14 = 0xEE0079726F747369;
    }

    else
    {
      v13 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v15 = 0x6D6F724665726F6DLL;
    }

    else
    {
      v15 = v13;
    }

    if (a2 == 2)
    {
      v16 = 0xEE00726F68747541;
    }

    else
    {
      v16 = v14;
    }

    if (v11 != v15)
    {
      goto LABEL_37;
    }
  }

  if (v12 != v16)
  {
LABEL_37:
    v17 = sub_1E1D30();
    goto LABEL_38;
  }

  v17 = 1;
LABEL_38:
  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_210E4(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = 0x656D6F636C6577;
    }

    else
    {
      v11 = 0xD000000000000012;
    }

    if (v9 == 2)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0x8000000000212480;
    }
  }

  else
  {
    if (a1)
    {
      v11 = 0x6553656369766564;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v12 = 0xEE0073676E697474;
    }

    else
    {
      v12 = 0xE700000000000000;
    }
  }

  v13 = 0x656D6F636C6577;
  v14 = 0x8000000000212480;
  if (a2 == 2)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xD000000000000012;
  }

  if (a2)
  {
    v8 = 0x6553656369766564;
    v10 = 0xEE0073676E697474;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v10;
  }

  else
  {
    v16 = v14;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_21238(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0xE600000000000000;
  v12 = 0x686372616573;
  if (a1 != 5)
  {
    v12 = 0x61676E616DLL;
    v11 = 0xE500000000000000;
  }

  v13 = 0x726F74736B6F6F62;
  v14 = 0xE900000000000065;
  if (a1 != 3)
  {
    v13 = 0x6F6F626F69647561;
    v14 = 0xEA0000000000736BLL;
  }

  if (a1 <= 4u)
  {
    v12 = v13;
    v11 = v14;
  }

  v15 = 0x4E676E6964616572;
  v16 = 0xEA0000000000776FLL;
  if (a1 != 1)
  {
    v15 = 0x7972617262696CLL;
    v16 = 0xE700000000000000;
  }

  if (a1)
  {
    v10 = v16;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v11;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x4E676E6964616572;
        v19 = 0xEA0000000000776FLL;
        if (v17 != 0x4E676E6964616572)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        v8 = 0x7972617262696CLL;
        if (v17 != 0x7972617262696CLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v17 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v19 = 0xE600000000000000;
      v8 = 0x686372616573;
      if (v17 != 0x686372616573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v19 = 0xE500000000000000;
      v8 = 0x61676E616DLL;
      if (v17 != 0x61676E616DLL)
      {
LABEL_39:
        v20 = sub_1E1D30();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v8 = 0x726F74736B6F6F62;
    v19 = 0xE900000000000065;
    if (v17 != 0x726F74736B6F6F62)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0x6F6F626F69647561;
    v19 = 0xEA0000000000736BLL;
    if (v17 != 0x6F6F626F69647561)
    {
      goto LABEL_39;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_39;
  }

  v20 = 1;
LABEL_40:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_21478(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xE900000000000067;
  v9 = 0x6E69646E65637361;
  v10 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v11 = 0x69646E6563736564;
    }

    else
    {
      v11 = 0x6E69646E65637361;
    }

    if (v10)
    {
      v12 = 0xEA0000000000676ELL;
    }

    else
    {
      v12 = 0xE900000000000067;
    }
  }

  else if (a1 == 2)
  {
    v11 = 0x44657361656C6572;
    v12 = 0xEB00000000657461;
  }

  else
  {
    if (a1 == 3)
    {
      v11 = 0x6972616C75706F70;
    }

    else
    {
      v11 = 0x656C746974;
    }

    if (v10 == 3)
    {
      v12 = 0xEA00000000007974;
    }

    else
    {
      v12 = 0xE500000000000000;
    }
  }

  v13 = 0x44657361656C6572;
  v14 = 0xEB00000000657461;
  v15 = 0x6972616C75706F70;
  v16 = 0xEA00000000007974;
  if (a2 != 3)
  {
    v15 = 0x656C746974;
    v16 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v13 = v15;
    v14 = v16;
  }

  if (a2)
  {
    v9 = 0x69646E6563736564;
    v8 = 0xEA0000000000676ELL;
  }

  if (a2 <= 1u)
  {
    v17 = v9;
  }

  else
  {
    v17 = v13;
  }

  if (a2 <= 1u)
  {
    v18 = v8;
  }

  else
  {
    v18 = v14;
  }

  if (v11 == v17 && v12 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1E1D30();
  }

  v12, a2, v17, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_21614(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0xE500000000000000;
  v12 = 0x6565726874;
  v13 = 1920298854;
  if (a1 != 4)
  {
    v13 = 1702259046;
  }

  if (a1 != 3)
  {
    v12 = v13;
    v11 = 0xE400000000000000;
  }

  v14 = 6647407;
  if (a1 != 1)
  {
    v14 = 7305076;
  }

  if (a1)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v14 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (v9 <= 2)
  {
    v16 = v10;
  }

  else
  {
    v16 = v11;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v17 = 0xE500000000000000;
      v8 = 0x6565726874;
      if (v15 != 0x6565726874)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (a2 == 4)
      {
        v8 = 1920298854;
        if (v15 != 1920298854)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v8 = 1702259046;
        if (v15 != 1702259046)
        {
LABEL_34:
          v18 = sub_1E1D30();
          goto LABEL_35;
        }
      }
    }
  }

  else if (a2)
  {
    v17 = 0xE300000000000000;
    if (a2 == 1)
    {
      v8 = 6647407;
      if (v15 != 6647407)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v8 = 7305076;
      if (v15 != 7305076)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v17 = 0xE700000000000000;
    if (v15 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v16 != v17)
  {
    goto LABEL_34;
  }

  v18 = 1;
LABEL_35:
  v16, a2, v8, a4, a5, a6, a7, a8;
  v17, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

uint64_t sub_217AC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xEB00000000656C62;
  v9 = 0x6967696C45746F6ELL;
  v10 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = 0x736B6F6F62;
    }

    else
    {
      v11 = 0x6F6F626F69647561;
    }

    if (v10 == 2)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xEA0000000000736BLL;
    }
  }

  else
  {
    if (a1)
    {
      v11 = 0x656C626967696C65;
    }

    else
    {
      v11 = 0x6967696C45746F6ELL;
    }

    if (v10)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v12 = 0xEB00000000656C62;
    }
  }

  v13 = 0xE500000000000000;
  v14 = 0x736B6F6F62;
  if (a2 != 2)
  {
    v14 = 0x6F6F626F69647561;
    v13 = 0xEA0000000000736BLL;
  }

  if (a2)
  {
    v9 = 0x656C626967696C65;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (a2 <= 1u)
  {
    v16 = v8;
  }

  else
  {
    v16 = v13;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_218F4(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0xE300000000000000;
  v12 = 4276809;
  if (a1 != 5)
  {
    v12 = 0x694773656E757469;
    v11 = 0xEE00647261437466;
  }

  v13 = 4605008;
  if (a1 != 3)
  {
    v13 = 5527636;
  }

  if (a1 <= 4u)
  {
    v12 = v13;
    v11 = 0xE300000000000000;
  }

  v14 = 0xE400000000000000;
  v15 = 1802465122;
  if (a1 != 1)
  {
    v15 = 0x6F6F626F69647561;
    v14 = 0xE90000000000006BLL;
  }

  if (a1)
  {
    v10 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  if (v9 <= 2)
  {
    v17 = v10;
  }

  else
  {
    v17 = v11;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v18 = 0xE400000000000000;
        v8 = 1802465122;
        if (v16 != 1802465122)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v8 = 0x6F6F626F69647561;
        v18 = 0xE90000000000006BLL;
        if (v16 != 0x6F6F626F69647561)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v18 = 0xE700000000000000;
      if (v16 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v18 = 0xE300000000000000;
      v8 = 4276809;
      if (v16 != 4276809)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = 0x694773656E757469;
      v18 = 0xEE00647261437466;
      if (v16 != 0x694773656E757469)
      {
LABEL_39:
        v19 = sub_1E1D30();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v18 = 0xE300000000000000;
    if (a2 == 3)
    {
      v8 = 4605008;
      if (v16 != 4605008)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = 5527636;
      if (v16 != 5527636)
      {
        goto LABEL_39;
      }
    }
  }

  if (v17 != v18)
  {
    goto LABEL_39;
  }

  v19 = 1;
LABEL_40:
  v17, a2, v8, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_21B00(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 3u)
  {
    v16 = 0xE300000000000000;
    v17 = 7368564;
    if (a1 != 6)
    {
      v17 = 0xD000000000000014;
      v16 = 0x8000000000212960;
    }

    v18 = 0x6574736567677573;
    if (a1 != 4)
    {
      v18 = 0x6574636572726F63;
    }

    if (a1 <= 5u)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }

    if (v9 <= 5)
    {
      v15 = 0xED00006D72655464;
    }

    else
    {
      v15 = v16;
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    v11 = 0xE800000000000000;
    v12 = 0x676E69646E657274;
    if (a1 != 2)
    {
      v12 = 0x64656863746566;
      v11 = 0xE700000000000000;
    }

    v13 = 0x746E65636572;
    if (a1)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v9 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v11;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v19 = 0xE300000000000000;
        v8 = 7368564;
        if (v14 != 7368564)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v8 = 0xD000000000000014;
        v19 = 0x8000000000212960;
        if (v14 != 0xD000000000000014)
        {
LABEL_47:
          v21 = sub_1E1D30();
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (a2 == 4)
      {
        v20 = 0x736567677573;
      }

      else
      {
        v20 = 0x636572726F63;
      }

      v8 = v20 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      v19 = 0xED00006D72655464;
      if (v14 != v8)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v19 = 0xE800000000000000;
      v8 = 0x676E69646E657274;
      if (v14 != 0x676E69646E657274)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      v8 = 0x64656863746566;
      if (v14 != 0x64656863746566)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v19 = 0xE600000000000000;
    v8 = 0x746E65636572;
    if (v14 != 0x746E65636572)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v19 = 0xE700000000000000;
    if (v14 != 0x6E776F6E6B6E75)
    {
      goto LABEL_47;
    }
  }

  if (v15 != v19)
  {
    goto LABEL_47;
  }

  v21 = 1;
LABEL_48:
  v15, a2, v8, a4, a5, a6, a7, a8;
  v19, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_21D7C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0x6574636572726F63;
  v12 = 0xED00006D72655464;
  if (a1 != 5)
  {
    v11 = 0xD000000000000014;
    v12 = 0x8000000000212960;
  }

  v13 = 0xE700000000000000;
  v14 = 0x64656863746566;
  if (a1 != 3)
  {
    v14 = 0x6574736567677573;
    v13 = 0xED00006D72655464;
  }

  if (a1 <= 4u)
  {
    v11 = v14;
    v12 = v13;
  }

  v15 = 0xE600000000000000;
  v16 = 0x746E65636572;
  if (a1 != 1)
  {
    v16 = 0x676E69646E657274;
    v15 = 0xE800000000000000;
  }

  if (a1)
  {
    v10 = v15;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v19 = 0xE600000000000000;
        v8 = 0x746E65636572;
        if (v17 != 0x746E65636572)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
        v8 = 0x676E69646E657274;
        if (v17 != 0x676E69646E657274)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v17 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v19 = 0xE700000000000000;
      v8 = 0x64656863746566;
      if (v17 != 0x64656863746566)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v20 = 0x736567677573;
LABEL_34:
    v8 = v20 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
    v19 = 0xED00006D72655464;
    if (v17 != v8)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v20 = 0x636572726F63;
    goto LABEL_34;
  }

  v8 = 0xD000000000000014;
  v19 = 0x8000000000212960;
  if (v17 != 0xD000000000000014)
  {
LABEL_39:
    v21 = sub_1E1D30();
    goto LABEL_40;
  }

LABEL_37:
  if (v18 != v19)
  {
    goto LABEL_39;
  }

  v21 = 1;
LABEL_40:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_21FB4(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0x6165527472617473;
  v12 = 0xEC000000676E6964;
  if (a1 != 5)
  {
    v11 = 0x73694C7472617473;
    v12 = 0xEE00676E696E6574;
  }

  v13 = 0x7473694C746E6177;
  v14 = 0xEB00000000646441;
  if (a1 != 3)
  {
    v13 = 0x74536E4977656976;
    v14 = 0xEB0000000065726FLL;
  }

  if (a1 <= 4u)
  {
    v11 = v13;
    v12 = v14;
  }

  v15 = 0x546567617373656DLL;
  v16 = 0xEA00000000007061;
  if (a1 != 1)
  {
    v15 = 0x6F74747542797562;
    v16 = 0xEC0000007061546ELL;
  }

  if (a1)
  {
    v10 = v16;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v11;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v8 = 0x6F74747542797562;
        v21 = 1885426798;
LABEL_31:
        v20 = (v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
        if (v17 != v8)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v8 = 0x546567617373656DLL;
      v20 = 0xEA00000000007061;
      if (v17 != 0x546567617373656DLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v20 = 0xE700000000000000;
      if (v17 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v8 = 0x7473694C746E6177;
        v19 = 6579265;
      }

      else
      {
        v8 = 0x74536E4977656976;
        v19 = 6648431;
      }

      v20 = (v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
      if (v17 != v8)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 5)
    {
      v8 = 0x6165527472617473;
      v21 = 1735289188;
      goto LABEL_31;
    }

    v8 = 0x73694C7472617473;
    v20 = 0xEE00676E696E6574;
    if (v17 != 0x73694C7472617473)
    {
LABEL_39:
      v22 = sub_1E1D30();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v18 != v20)
  {
    goto LABEL_39;
  }

  v22 = 1;
LABEL_40:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v20, v23, v24, v25, v26, v27, v28, v29;
  return v22 & 1;
}

uint64_t sub_2222C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 3u)
  {
    v16 = 0xE300000000000000;
    v17 = 6452085;
    if (a1 != 6)
    {
      v17 = 0x6863746177;
      v16 = 0xE500000000000000;
    }

    v18 = 0x6979616C50776F6ELL;
    v19 = 0xEA0000000000676ELL;
    if (a1 != 4)
    {
      v18 = 0x746F6F5465756C62;
      v19 = 0xE900000000000068;
    }

    if (a1 <= 5u)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }

    if (v9 <= 5)
    {
      v15 = v19;
    }

    else
    {
      v15 = v16;
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    v11 = 0xD000000000000014;
    v12 = 0x80000000002130D0;
    if (a1 != 2)
    {
      v11 = 0x79616C50726163;
      v12 = 0xE700000000000000;
    }

    v13 = 0x7070416E69;
    if (a1)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if (v9 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v20 = 0xE300000000000000;
        v8 = 6452085;
        if (v14 != 6452085)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v20 = 0xE500000000000000;
        v8 = 0x6863746177;
        if (v14 != 0x6863746177)
        {
LABEL_47:
          v21 = sub_1E1D30();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v8 = 0x6979616C50776F6ELL;
      v20 = 0xEA0000000000676ELL;
      if (v14 != 0x6979616C50776F6ELL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v8 = 0x746F6F5465756C62;
      v20 = 0xE900000000000068;
      if (v14 != 0x746F6F5465756C62)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v8 = 0xD000000000000014;
      v20 = 0x80000000002130D0;
      if (v14 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v20 = 0xE700000000000000;
      v8 = 0x79616C50726163;
      if (v14 != 0x79616C50726163)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v20 = 0xE500000000000000;
    v8 = 0x7070416E69;
    if (v14 != 0x7070416E69)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v20 = 0xE700000000000000;
    if (v14 != 0x6E776F6E6B6E75)
    {
      goto LABEL_47;
    }
  }

  if (v15 != v20)
  {
    goto LABEL_47;
  }

  v21 = 1;
LABEL_48:
  v15, a2, v8, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_2249C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0xE700000000000000;
  v12 = 0x646F50656D6F68;
  if (a1 != 6)
  {
    v12 = 0x5654656C707061;
    v11 = 0xE700000000000000;
  }

  v13 = 0x6E6F687064616568;
  v14 = 0xEA00000000007365;
  if (a1 != 4)
  {
    v13 = 0x73646F50726961;
    v14 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v12 = v13;
    v11 = v14;
  }

  v15 = 0xE700000000000000;
  v16 = 0x79616C50726163;
  if (a1 != 2)
  {
    v16 = 0x6F69647541726163;
    v15 = 0xE800000000000000;
  }

  v17 = 0x656369766564;
  if (a1)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v17 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v10 = v15;
  }

  else
  {
    v16 = v17;
  }

  if (a1 <= 3u)
  {
    v18 = v16;
  }

  else
  {
    v18 = v12;
  }

  if (v9 <= 3)
  {
    v19 = v10;
  }

  else
  {
    v19 = v11;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v20 = 0xE700000000000000;
      if (a2 == 6)
      {
        v8 = 0x646F50656D6F68;
        if (v18 != 0x646F50656D6F68)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v8 = 0x5654656C707061;
        if (v18 != 0x5654656C707061)
        {
LABEL_45:
          v21 = sub_1E1D30();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v8 = 0x6E6F687064616568;
      v20 = 0xEA00000000007365;
      if (v18 != 0x6E6F687064616568)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v20 = 0xE700000000000000;
      v8 = 0x73646F50726961;
      if (v18 != 0x73646F50726961)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v20 = 0xE700000000000000;
      v8 = 0x79616C50726163;
      if (v18 != 0x79616C50726163)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v20 = 0xE800000000000000;
      v8 = 0x6F69647541726163;
      if (v18 != 0x6F69647541726163)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v20 = 0xE600000000000000;
    v8 = 0x656369766564;
    if (v18 != 0x656369766564)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v20 = 0xE700000000000000;
    if (v18 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v19 != v20)
  {
    goto LABEL_45;
  }

  v21 = 1;
LABEL_46:
  v19, a2, v8, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_22710(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0xE500000000000000;
  v12 = 0x746867696CLL;
  v13 = 0xE400000000000000;
  v14 = 1802658148;
  if (a1 != 4)
  {
    v14 = 0xD000000000000012;
    v13 = 0x8000000000212F60;
  }

  if (a1 != 3)
  {
    v12 = v14;
    v11 = v13;
  }

  v15 = 0xE200000000000000;
  v16 = 28271;
  if (a1 != 1)
  {
    v16 = 6710895;
    v15 = 0xE300000000000000;
  }

  if (a1)
  {
    v10 = v15;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v11;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v19 = 0xE500000000000000;
      v8 = 0x746867696CLL;
      if (v17 != 0x746867696CLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v19 = 0xE400000000000000;
      v8 = 1802658148;
      if (v17 != 1802658148)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v8 = 0xD000000000000012;
      v19 = 0x8000000000212F60;
      if (v17 != 0xD000000000000012)
      {
LABEL_34:
        v20 = sub_1E1D30();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v19 = 0xE200000000000000;
      v8 = 28271;
      if (v17 != 28271)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = 0xE300000000000000;
      v8 = 6710895;
      if (v17 != 6710895)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v19 = 0xE700000000000000;
    if (v17 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_34;
  }

  v20 = 1;
LABEL_35:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_228B4(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (a1 > 1u)
  {
    v10 = a1 == 2;
    v8 = 0xEA00000000007373;
    v9 = 0xEA00000000006465;
    if (a1 == 2)
    {
      v11 = 0x6572676F72506E69;
    }

    else
    {
      v11 = 0x7472617453746F6ELL;
    }
  }

  else
  {
    v8 = 0xE200000000000000;
    v9 = 0xE700000000000000;
    v10 = a1 == 0;
    if (a1)
    {
      v11 = 0x64656863616572;
    }

    else
    {
      v11 = 16718;
    }
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  v13 = 0xE200000000000000;
  v14 = 16718;
  v15 = 0x6572676F72506E69;
  v16 = 0xEA00000000007373;
  if (a2 != 2)
  {
    v15 = 0x7472617453746F6ELL;
    v16 = 0xEA00000000006465;
  }

  if (a2)
  {
    v14 = 0x64656863616572;
    v13 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v17 = v14;
  }

  else
  {
    v17 = v15;
  }

  if (a2 <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v16;
  }

  if (v11 == v17 && v12 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1E1D30();
  }

  v12, a2, v17, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_22A04(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v8 = 0x7972617262696CLL;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v9 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v8 = 0x726F74536B6F6F62;
    v9 = 0xE900000000000065;
  }

  else if (a1 == 3)
  {
    v8 = 0x6F6F626F69647561;
    v9 = 0xEE0065726F74536BLL;
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7105633;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v12 = 0x7972617262696CLL;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    v13 = 0xE700000000000000;
    if (v8 != v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v10 = 0x6F6F626F69647561;
    v11 = 0xEE0065726F74536BLL;
    if (a2 != 3)
    {
      v10 = 7105633;
      v11 = 0xE300000000000000;
    }

    if (a2 == 2)
    {
      v12 = 0x726F74536B6F6F62;
    }

    else
    {
      v12 = v10;
    }

    if (a2 == 2)
    {
      v13 = 0xE900000000000065;
    }

    else
    {
      v13 = v11;
    }

    if (v8 != v12)
    {
      goto LABEL_28;
    }
  }

  if (v9 != v13)
  {
LABEL_28:
    v14 = sub_1E1D30();
    goto LABEL_29;
  }

  v14 = 1;
LABEL_29:
  v9, a2, v12, a4, a5, a6, a7, a8;
  v13, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

uint64_t sub_22BA0(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0xD000000000000027;
    }

    else
    {
      v10 = 0x696669746E656469;
    }

    if (v9 == 2)
    {
      v11 = 0x8000000000212EF0;
    }

    else
    {
      v11 = 0xEF74657365527265;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 0x756F72676B636162;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v11 = 0xEC0000006465646ELL;
    }

    else
    {
      v11 = 0xE700000000000000;
    }
  }

  v12 = 0xE700000000000000;
  v13 = 0xD000000000000027;
  v14 = 0x8000000000212EF0;
  if (a2 != 2)
  {
    v13 = 0x696669746E656469;
    v14 = 0xEF74657365527265;
  }

  if (a2)
  {
    v8 = 0x756F72676B636162;
    v12 = 0xEC0000006465646ELL;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_22D0C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 <= 4u)
  {
    v19 = 0xE700000000000000;
    v20 = 0xE500000000000000;
    v21 = 0x6169706573;
    v22 = 0xE400000000000000;
    v23 = 2036691559;
    if (a1 != 3)
    {
      v23 = 0x6B63616C62;
      v22 = 0xE500000000000000;
    }

    if (a1 != 2)
    {
      v21 = v23;
      v20 = v22;
    }

    v24 = 0x6574696877;
    if (a1)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v24 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v17 = v24;
    }

    else
    {
      v17 = v21;
    }

    if (v9 <= 1)
    {
      v18 = v19;
    }

    else
    {
      v18 = v20;
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    v11 = 1835819363;
    v12 = 0xE500000000000000;
    v13 = 0x7375636F66;
    if (a1 != 9)
    {
      v13 = 1684828002;
      v12 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v11 = v13;
      v10 = v12;
    }

    v14 = 0xE800000000000000;
    v15 = 0x6C616E696769726FLL;
    v16 = 0x7465697571;
    if (a1 != 6)
    {
      v16 = 0x7265706170;
    }

    if (a1 != 5)
    {
      v15 = v16;
      v14 = 0xE500000000000000;
    }

    if (a1 <= 7u)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    if (v9 <= 7)
    {
      v18 = v14;
    }

    else
    {
      v18 = v10;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v25 = 0xE500000000000000;
        v8 = 0x6574696877;
        if (v17 != 0x6574696877)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v25 = 0xE700000000000000;
        if (v17 != 0x6E776F6E6B6E75)
        {
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 2)
    {
      v25 = 0xE500000000000000;
      v8 = 0x6169706573;
      if (v17 != 0x6169706573)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 3)
    {
      v25 = 0xE400000000000000;
      v8 = 2036691559;
      if (v17 != 2036691559)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v25 = 0xE500000000000000;
      v8 = 0x6B63616C62;
      if (v17 != 0x6B63616C62)
      {
        goto LABEL_62;
      }
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v25 = 0xE400000000000000;
      v8 = 1835819363;
      if (v17 != 1835819363)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 9)
    {
      v25 = 0xE500000000000000;
      v8 = 0x7375636F66;
      if (v17 != 0x7375636F66)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v25 = 0xE400000000000000;
      v8 = 1684828002;
      if (v17 != 1684828002)
      {
LABEL_62:
        v26 = sub_1E1D30();
        goto LABEL_63;
      }
    }
  }

  else if (a2 == 5)
  {
    v25 = 0xE800000000000000;
    v8 = 0x6C616E696769726FLL;
    if (v17 != 0x6C616E696769726FLL)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v25 = 0xE500000000000000;
    if (a2 == 6)
    {
      v8 = 0x7465697571;
      if (v17 != 0x7465697571)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v8 = 0x7265706170;
      if (v17 != 0x7265706170)
      {
        goto LABEL_62;
      }
    }
  }

  if (v18 != v25)
  {
    goto LABEL_62;
  }

  v26 = 1;
LABEL_63:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v25, v27, v28, v29, v30, v31, v32, v33;
  return v26 & 1;
}

uint64_t sub_22FF8(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0x676E6967617473;
    }

    else
    {
      v10 = 1685025392;
    }

    if (v9 == 2)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 24945;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v11 = 0xE200000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }
  }

  v12 = 0xE700000000000000;
  v13 = 0xE700000000000000;
  v14 = 0x676E6967617473;
  if (a2 != 2)
  {
    v14 = 1685025392;
    v13 = 0xE400000000000000;
  }

  if (a2)
  {
    v8 = 24945;
    v12 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_23114(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v9 = 0x656D6F636C6577;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    v8 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v8 = 0xE800000000000000;
    v9 = 0x7265766F63736964;
  }

  else if (a1 == 3)
  {
    v8 = 0xE600000000000000;
    v9 = 0x657061637365;
  }

  else
  {
    v8 = 0xE400000000000000;
    v9 = 2003792487;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v12 = 0x656D6F636C6577;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    v13 = 0xE700000000000000;
    if (v9 != v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    v11 = 0x657061637365;
    if (a2 != 3)
    {
      v11 = 2003792487;
      v10 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v12 = 0x7265766F63736964;
    }

    else
    {
      v12 = v11;
    }

    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = v10;
    }

    if (v9 != v12)
    {
      goto LABEL_28;
    }
  }

  if (v8 != v13)
  {
LABEL_28:
    v14 = sub_1E1D30();
    goto LABEL_29;
  }

  v14 = 1;
LABEL_29:
  v8, a2, v12, a4, a5, a6, a7, a8;
  v13, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

uint64_t sub_23288(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 3u)
  {
    v15 = 0x6574736567677573;
    if (a1 != 6)
    {
      v15 = 0x6574636572726F63;
    }

    v16 = 0x8000000000213460;
    v17 = 0xD00000000000001BLL;
    if (a1 == 4)
    {
      v17 = 0xD000000000000013;
    }

    else
    {
      v16 = 0x8000000000213480;
    }

    if (a1 <= 5u)
    {
      v13 = v17;
    }

    else
    {
      v13 = v15;
    }

    if (v9 <= 5)
    {
      v14 = v16;
    }

    else
    {
      v14 = 0xED00006D72655464;
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    v11 = 0x8000000000213420;
    if (a1 != 2)
    {
      v11 = 0x8000000000213440;
    }

    v12 = 0x7542686372616573;
    if (a1)
    {
      v10 = 0xEF7061546E6F7474;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0xD000000000000011;
    }

    if (v9 <= 1)
    {
      v14 = v10;
    }

    else
    {
      v14 = v11;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v20 = 0x736567677573;
      }

      else
      {
        v20 = 0x636572726F63;
      }

      v8 = v20 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      v18 = 0xED00006D72655464;
      if (v13 != v8)
      {
        goto LABEL_48;
      }
    }

    else if (a2 == 4)
    {
      v18 = 0x8000000000213460;
      v8 = 0xD000000000000013;
      if (v13 != 0xD000000000000013)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v18 = 0x8000000000213480;
      v8 = 0xD00000000000001BLL;
      if (v13 != 0xD00000000000001BLL)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    v8 = 0xD000000000000011;
    if (a2 == 2)
    {
      v19 = "fetchedSuggestion";
    }

    else
    {
      v19 = "noFetchSuggestion";
    }

    v18 = ((v19 - 32) | 0x8000000000000000);
    if (v13 != 0xD000000000000011)
    {
      goto LABEL_48;
    }
  }

  else if (a2)
  {
    v8 = 0x7542686372616573;
    v18 = 0xEF7061546E6F7474;
    if (v13 != 0x7542686372616573)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v18 = 0xE700000000000000;
    if (v13 != 0x6E776F6E6B6E75)
    {
      goto LABEL_48;
    }
  }

  if (v14 != v18)
  {
LABEL_48:
    v21 = sub_1E1D30();
    goto LABEL_49;
  }

  v21 = 1;
LABEL_49:
  v14, a2, v8, a4, a5, a6, a7, a8;
  v18, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_23544(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v9 = 1868785010;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (v8)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v10 = 0xE400000000000000;
    v9 = 1818324839;
  }

  else if (a1 == 3)
  {
    v9 = 0x4D64656966696E75;
    v10 = 0xEE00656761737365;
  }

  else
  {
    v9 = 0x6F72446563697270;
    v10 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 1868785010;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    if (v9 != v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = 0x4D64656966696E75;
    v12 = 0xEE00656761737365;
    if (a2 != 3)
    {
      v11 = 0x6F72446563697270;
      v12 = 0xE900000000000070;
    }

    if (a2 == 2)
    {
      v13 = 1818324839;
    }

    else
    {
      v13 = v11;
    }

    if (a2 == 2)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = v12;
    }

    if (v9 != v13)
    {
      goto LABEL_33;
    }
  }

  if (v10 != v14)
  {
LABEL_33:
    v15 = sub_1E1D30();
    goto LABEL_34;
  }

  v15 = 1;
LABEL_34:
  v10, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_236D0(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xEB00000000736569;
  v9 = 0x7265536E496C6C61;
  v10 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = 0x646165726E75;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (v10 == 2)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v11 = 0x6573616863727570;
    }

    else
    {
      v11 = 0x7265536E496C6C61;
    }

    if (v10)
    {
      v12 = 0xE900000000000064;
    }

    else
    {
      v12 = 0xEB00000000736569;
    }
  }

  v13 = 0xE600000000000000;
  v14 = 0x646165726E75;
  if (a2 != 2)
  {
    v14 = 0x6E776F6E6B6E75;
    v13 = 0xE700000000000000;
  }

  if (a2)
  {
    v9 = 0x6573616863727570;
    v8 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (a2 <= 1u)
  {
    v16 = v8;
  }

  else
  {
    v16 = v13;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_23818(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v10 = 0x656E6F646E616261;
    }

    if (v9 == 2)
    {
      v11 = 0x8000000000213160;
    }

    else
    {
      v11 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 0x75426C65636E6163;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v11 = 0xEF7061546E6F7474;
    }

    else
    {
      v11 = 0xE700000000000000;
    }
  }

  v12 = 0xE700000000000000;
  v13 = 0xD000000000000012;
  v14 = 0x8000000000213160;
  if (a2 != 2)
  {
    v13 = 0x656E6F646E616261;
    v14 = 0xE900000000000064;
  }

  if (a2)
  {
    v8 = 0x75426C65636E6163;
    v12 = 0xEF7061546E6F7474;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_2397C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v11 = a1 == 2;
    v9 = 0xEF6E6F697463656CLL;
    v10 = 0xE600000000000000;
    if (a1 == 2)
    {
      v12 = 0x6C6F436F54646461;
    }

    else
    {
      v12 = 0x65766F6D6572;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0xE500000000000000;
    v11 = a1 == 0;
    if (a1)
    {
      v12 = 0x6572616873;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }
  }

  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  v14 = 0xE700000000000000;
  v15 = 0x6C6F436F54646461;
  v16 = 0xEF6E6F697463656CLL;
  if (a2 != 2)
  {
    v15 = 0x65766F6D6572;
    v16 = 0xE600000000000000;
  }

  if (a2)
  {
    v8 = 0x6572616873;
    v14 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v17 = v8;
  }

  else
  {
    v17 = v15;
  }

  if (a2 <= 1u)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  if (v12 == v17 && v13 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1E1D30();
  }

  v13, a2, v17, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_23AC4(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0x6964616552626F65;
    }

    else
    {
      v10 = 0x4E676E6964616572;
    }

    if (v9 == 2)
    {
      v11 = 0xEA0000000000676ELL;
    }

    else
    {
      v11 = 0xEA0000000000776FLL;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 16718;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v11 = 0xE200000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }
  }

  v12 = 0xE700000000000000;
  v13 = 0x6964616552626F65;
  v14 = 0xEA0000000000676ELL;
  if (a2 != 2)
  {
    v13 = 0x4E676E6964616572;
    v14 = 0xEA0000000000776FLL;
  }

  if (a2)
  {
    v8 = 16718;
    v12 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_23C00(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0x776569766572;
    }

    else
    {
      v10 = 0x6E41776569766572;
    }

    if (v9 == 2)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = 0xEF676E6974615264;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 0x676E69746172;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }
  }

  v12 = 0xE700000000000000;
  v13 = 0xE600000000000000;
  v14 = 0x776569766572;
  if (a2 != 2)
  {
    v14 = 0x6E41776569766572;
    v13 = 0xEF676E6974615264;
  }

  if (a2)
  {
    v8 = 0x676E69746172;
    v12 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_23D4C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xEC00000072656461;
  v9 = 0x655279646E657274;
  v10 = a1;
  v11 = 0x8000000000212530;
  v12 = 0x8000000000212550;
  v13 = 0xD000000000000011;
  if (a1 != 4)
  {
    v13 = 0x52636972656E6567;
    v12 = 0xED00007265646165;
  }

  if (a1 == 3)
  {
    v13 = 0xD000000000000010;
  }

  else
  {
    v11 = v12;
  }

  v14 = 0x6552736569726573;
  if (a1 == 1)
  {
    v15 = 0xEC00000072656461;
  }

  else
  {
    v14 = 0xD000000000000010;
    v15 = 0x8000000000212510;
  }

  if (!a1)
  {
    v14 = 0x655279646E657274;
    v15 = 0xEC00000072656461;
  }

  if (a1 <= 2u)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  if (v10 <= 2)
  {
    v17 = v15;
  }

  else
  {
    v17 = v11;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v9 = 0xD000000000000010;
      v8 = 0x8000000000212530;
      if (v16 != 0xD000000000000010)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0x8000000000212550;
      v9 = 0xD000000000000011;
      if (v16 != 0xD000000000000011)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v9 = 0x52636972656E6567;
      v8 = 0xED00007265646165;
      if (v16 != 0x52636972656E6567)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 0x6552736569726573;
        if (v16 != 0x6552736569726573)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v9 = 0xD000000000000010;
      v8 = 0x8000000000212510;
    }

    if (v16 != v9)
    {
LABEL_33:
      v18 = sub_1E1D30();
      goto LABEL_34;
    }
  }

LABEL_30:
  if (v17 != v8)
  {
    goto LABEL_33;
  }

  v18 = 1;
LABEL_34:
  v17, a2, v9, a4, a5, a6, a7, a8;
  v8, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

uint64_t sub_23F2C(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0x7550796C696D6166;
  v12 = 0xEE00657361686372;
  if (a1 != 6)
  {
    v11 = 0x646567616E616DLL;
    v12 = 0xE700000000000000;
  }

  v13 = 0xE600000000000000;
  v14 = 0x656C706D6173;
  if (a1 != 4)
  {
    v14 = 0x5364656E776F6E75;
    v13 = 0xEC00000065726F74;
  }

  if (a1 <= 5u)
  {
    v11 = v14;
    v12 = v13;
  }

  v15 = 0x64616F6C65646973;
  v16 = 0xEA00000000006465;
  if (a1 != 2)
  {
    v15 = 0x726564726F657270;
    v16 = 0xE800000000000000;
  }

  v17 = 0x6573616863727570;
  if (a1)
  {
    v10 = 0xE900000000000064;
  }

  else
  {
    v17 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v10 = v16;
  }

  else
  {
    v15 = v17;
  }

  if (a1 <= 3u)
  {
    v18 = v15;
  }

  else
  {
    v18 = v11;
  }

  if (v9 <= 3)
  {
    v19 = v10;
  }

  else
  {
    v19 = v12;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v8 = 0x7550796C696D6166;
        v20 = 0xEE00657361686372;
        if (v18 != 0x7550796C696D6166)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v20 = 0xE700000000000000;
        v8 = 0x646567616E616DLL;
        if (v18 != 0x646567616E616DLL)
        {
LABEL_45:
          v21 = sub_1E1D30();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v20 = 0xE600000000000000;
      v8 = 0x656C706D6173;
      if (v18 != 0x656C706D6173)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v8 = 0x5364656E776F6E75;
      v20 = 0xEC00000065726F74;
      if (v18 != 0x5364656E776F6E75)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v8 = 0x64616F6C65646973;
      v20 = 0xEA00000000006465;
      if (v18 != 0x64616F6C65646973)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v20 = 0xE800000000000000;
      v8 = 0x726564726F657270;
      if (v18 != 0x726564726F657270)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v8 = 0x6573616863727570;
    v20 = 0xE900000000000064;
    if (v18 != 0x6573616863727570)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v20 = 0xE700000000000000;
    if (v18 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v19 != v20)
  {
    goto LABEL_45;
  }

  v21 = 1;
LABEL_46:
  v19, a2, v8, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

uint64_t sub_241D4(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 <= 3u)
  {
    v18 = 0xE700000000000000;
    v19 = 0x65726353656D6F68;
    v20 = 0xED00007061546E65;
    if (a1 != 2)
    {
      v19 = 0x756F546563726F66;
      v20 = 0xEA00000000006863;
    }

    v21 = 0x6C616E7265747865;
    if (a1)
    {
      v18 = 0xEC0000006B6E694CLL;
    }

    else
    {
      v21 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v16 = v21;
    }

    else
    {
      v16 = v19;
    }

    if (v9 <= 1)
    {
      v17 = v18;
    }

    else
    {
      v17 = v20;
    }
  }

  else
  {
    v10 = 0x6163696669746F6ELL;
    v11 = 0xEC0000006E6F6974;
    v12 = 0xE600000000000000;
    v13 = 0x746567646977;
    if (a1 != 7)
    {
      v13 = 0x6E65746E49707061;
      v12 = 0xE900000000000074;
    }

    if (a1 != 6)
    {
      v10 = v13;
      v11 = v12;
    }

    v14 = 0x80000000002131C0;
    v15 = 0xD000000000000017;
    if (a1 != 4)
    {
      v15 = 0xD000000000000014;
      v14 = 0x80000000002131E0;
    }

    if (a1 <= 5u)
    {
      v16 = v15;
    }

    else
    {
      v16 = v10;
    }

    if (v9 <= 5)
    {
      v17 = v14;
    }

    else
    {
      v17 = v11;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v8 = 0x65726353656D6F68;
        v22 = 0xED00007061546E65;
        if (v16 != 0x65726353656D6F68)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v8 = 0x756F546563726F66;
        v22 = 0xEA00000000006863;
        if (v16 != 0x756F546563726F66)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (!a2)
    {
      v22 = 0xE700000000000000;
      if (v16 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v8 = 0x6C616E7265747865;
    v23 = 1802398028;
    goto LABEL_43;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v22 = 0xE600000000000000;
        v8 = 0x746567646977;
        if (v16 != 0x746567646977)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v8 = 0x6E65746E49707061;
        v22 = 0xE900000000000074;
        if (v16 != 0x6E65746E49707061)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    v8 = 0x6163696669746F6ELL;
    v23 = 1852795252;
LABEL_43:
    v22 = (v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
    if (v16 != v8)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v22 = 0x80000000002131C0;
    v8 = 0xD000000000000017;
    if (v16 != 0xD000000000000017)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v8 = 0xD000000000000014;
    v22 = 0x80000000002131E0;
    if (v16 != 0xD000000000000014)
    {
LABEL_52:
      v24 = sub_1E1D30();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v17 != v22)
  {
    goto LABEL_52;
  }

  v24 = 1;
LABEL_53:
  v17, a2, v8, a4, a5, a6, a7, a8;
  v22, v25, v26, v27, v28, v29, v30, v31;
  return v24 & 1;
}

uint64_t sub_244E0(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  v10 = 0xE700000000000000;
  v11 = 0x736C616F67;
  v12 = 0xE600000000000000;
  if (a1 == 5)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v11 = 0x6573776F7262;
  }

  v13 = 0xD000000000000010;
  v14 = 0x80000000002129E0;
  if (a1 != 3)
  {
    v13 = 0x65736163776F6C66;
    v14 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v11 = v13;
    v12 = v14;
  }

  v15 = 0xE600000000000000;
  v16 = 0x68736F6F7773;
  if (a1 != 1)
  {
    v16 = 0x6B63697262;
    v15 = 0xE500000000000000;
  }

  if (a1)
  {
    v10 = v15;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  if (v9 <= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v19 = 0xE600000000000000;
        v8 = 0x68736F6F7773;
        if (v17 != 0x68736F6F7773)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v19 = 0xE500000000000000;
        v8 = 0x6B63697262;
        if (v17 != 0x6B63697262)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v17 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v19 = 0xE500000000000000;
      v8 = 0x736C616F67;
      if (v17 != 0x736C616F67)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v19 = 0xE600000000000000;
      v8 = 0x6573776F7262;
      if (v17 != 0x6573776F7262)
      {
LABEL_40:
        v20 = sub_1E1D30();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v8 = 0xD000000000000010;
    v19 = 0x80000000002129E0;
    if (v17 != 0xD000000000000010)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    v8 = 0x65736163776F6C66;
    if (v17 != 0x65736163776F6C66)
    {
      goto LABEL_40;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_40;
  }

  v20 = 1;
LABEL_41:
  v18, a2, v8, a4, a5, a6, a7, a8;
  v19, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_246EC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v9 = 0x68736F6F7773;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (v8)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v9 = 0x756B636F4C706F74;
    v10 = 0xE900000000000070;
  }

  else if (a1 == 3)
  {
    v9 = 0x6143736569726573;
    v10 = 0xEA00000000006472;
  }

  else
  {
    v10 = 0xE500000000000000;
    v9 = 0x7465656873;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 0x68736F6F7773;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    if (v9 != v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = 0x6143736569726573;
    v12 = 0xEA00000000006472;
    if (a2 != 3)
    {
      v11 = 0x7465656873;
      v12 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v13 = 0x756B636F4C706F74;
    }

    else
    {
      v13 = v11;
    }

    if (a2 == 2)
    {
      v14 = 0xE900000000000070;
    }

    else
    {
      v14 = v12;
    }

    if (v9 != v13)
    {
      goto LABEL_33;
    }
  }

  if (v10 != v14)
  {
LABEL_33:
    v15 = sub_1E1D30();
    goto LABEL_34;
  }

  v15 = 1;
LABEL_34:
  v10, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_24878(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xEC000000656C6262;
  v9 = 0x7542656E694C6E69;
  v10 = a1;
  v11 = 0x4279616C7265766FLL;
  v12 = 0xED0000656C626275;
  if (a1 != 5)
  {
    v11 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  v13 = 0xE600000000000000;
  v14 = 0x72656E6E6162;
  if (a1 != 3)
  {
    v14 = 0x7473616F74;
    v13 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v11 = v14;
    v12 = v13;
  }

  v15 = 0xE600000000000000;
  v16 = 0x656C62627562;
  if (a1 != 1)
  {
    v16 = 0x6142656E694C6E69;
    v15 = 0xEC00000072656E6ELL;
  }

  if (!a1)
  {
    v16 = 0x7542656E694C6E69;
    v15 = 0xEC000000656C6262;
  }

  if (a1 <= 2u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  if (v10 <= 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x656C62627562;
        if (v17 != 0x656C62627562)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v9 = 0x6142656E694C6E69;
        v8 = 0xEC00000072656E6ELL;
        if (v17 != 0x6142656E694C6E69)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v9 = 0x4279616C7265766FLL;
        v8 = 0xED0000656C626275;
        if (v17 != 0x4279616C7265766FLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        if (v17 != 0x6E776F6E6B6E75)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
      v9 = 0x72656E6E6162;
      if (v17 != 0x72656E6E6162)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v8 = 0xE500000000000000;
    v9 = 0x7473616F74;
  }

  if (v17 != v9)
  {
LABEL_36:
    v19 = sub_1E1D30();
    goto LABEL_37;
  }

LABEL_33:
  if (v18 != v8)
  {
    goto LABEL_36;
  }

  v19 = 1;
LABEL_37:
  v18, a2, v9, a4, a5, a6, a7, a8;
  v8, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_24AAC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0x79616C6465786966;
    }

    else
    {
      v10 = 0x6F69746964617274;
    }

    if (v9 == 2)
    {
      v11 = 0xEB0000000074756FLL;
    }

    else
    {
      v11 = 0xEB000000006C616ELL;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 7630194;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }
  }

  v12 = 0xE700000000000000;
  v13 = 0x79616C6465786966;
  v14 = 0xEB0000000074756FLL;
  if (a2 != 2)
  {
    v13 = 0x6F69746964617274;
    v14 = 0xEB000000006C616ELL;
  }

  if (a2)
  {
    v8 = 7630194;
    v12 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_24C00(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xE900000000000064;
  v9 = 0x65697265536E6F6ELL;
  v10 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = 0x65726564724F6E75;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (v10 == 2)
    {
      v12 = 0xE900000000000064;
    }

    else
    {
      v12 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v11 = 0x6465726564726FLL;
    }

    else
    {
      v11 = 0x65697265536E6F6ELL;
    }

    if (v10)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE900000000000073;
    }
  }

  v13 = 0xE900000000000073;
  v14 = 0x65726564724F6E75;
  if (a2 != 2)
  {
    v14 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v9 = 0x6465726564726FLL;
    v13 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (a2 <= 1u)
  {
    v16 = v13;
  }

  else
  {
    v16 = v8;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}
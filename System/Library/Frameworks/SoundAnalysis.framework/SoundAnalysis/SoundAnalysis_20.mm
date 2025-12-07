void sub_1C993B0C8()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C9945E20();
  sub_1C97DC9C8(v1, v2);
  sub_1C97AA878();
  v3 = swift_allocObject();
  sub_1C9945FD8(v3);
  sub_1C9945DD0();
  sub_1C9946024(v4, v5, v6, v7);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v8 = sub_1C97BE0EC();
  v9(v8);
  sub_1C97BE478();
}

void sub_1C993B1BC()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C9945E20();
  sub_1C97DCBBC(v1, v2);
  sub_1C97AA878();
  v3 = swift_allocObject();
  sub_1C9945FD8(v3);
  sub_1C9945DD0();
  sub_1C9946024(v4, v5, v6, v7);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v8 = sub_1C97BE0EC();
  v9(v8);
  sub_1C97BE478();
}

void sub_1C993B2B0()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C9945E20();
  sub_1C97DCDBC(v1, v2);
  sub_1C97AA878();
  v3 = swift_allocObject();
  sub_1C9945FD8(v3);
  sub_1C9945DD0();
  sub_1C9946024(v4, v5, v6, v7);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v8 = sub_1C97BE0EC();
  v9(v8);
  sub_1C97BE478();
}

void sub_1C993B3A4()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C9945E20();
  sub_1C97DCCB4(v1, v2);
  sub_1C97AA878();
  v3 = swift_allocObject();
  sub_1C9945FD8(v3);
  sub_1C9945DD0();
  sub_1C9946024(v4, v5, v6, v7);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v8 = sub_1C97BE0EC();
  v9(v8);
  sub_1C97BE478();
}

void sub_1C993B498()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C9945E20();
  sub_1C97DD1D0(v1, v2);
  sub_1C97AA878();
  v3 = swift_allocObject();
  sub_1C9945FD8(v3);
  sub_1C9945DD0();
  sub_1C9946024(v4, v5, v6, v7);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v8 = sub_1C97BE0EC();
  v9(v8);
  sub_1C97BE478();
}

uint64_t sub_1C993B58C()
{
  result = (*(v0 + 16))(&v5);
  if (!v1)
  {
    result = v5;
    if (v5 <= 0xEFuLL)
    {
      if (v5 >> 6)
      {
        if (v5 >> 6 == 1)
        {
          v3 = v5 & 0x3F;
          sub_1C985E2B4();
          sub_1C97AA928();
          result = swift_allocError();
          *v4 = v3;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1C993B624()
{
  result = (*(v0 + 16))(&v5);
  if (!v1)
  {
    if (v5 <= 0xFBuLL)
    {
      if (v5 >> 6)
      {
        if (v5 >> 6 == 1)
        {
          v3 = v5 & 0x3F;
          sub_1C985E2B4();
          sub_1C97AA928();
          result = swift_allocError();
          *v4 = v3;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return (v5 & 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C993B6C4()
{
  sub_1C99460E4();
  v2(&v21);
  if (!v0)
  {
    return v21;
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  sub_1C9946110();
  v4 = v0;
  v5 = sub_1C9A91B38();
  v6 = sub_1C9A92FA8();

  if (os_log_type_enabled(v5, v6))
  {
    sub_1C9945F88();
    swift_slowAlloc();
    sub_1C9945EE4();
    v20 = swift_slowAlloc();
    *v1 = 136315394;
    v7 = sub_1C9871794();
    v10 = sub_1C9849140(v7, v8, v9);
    sub_1C9945F3C(v10);
    v11 = v0;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v12 = sub_1C9A924F8();
    v14 = sub_1C9849140(v12, v13, &v20);

    *(v1 + 14) = v14;
    sub_1C9945FAC(&dword_1C9788000, v15, v16, "%serror logging: %s");
    sub_1C9945F2C();
    swift_arrayDestroy();
    v17 = sub_1C9945F1C();
    MEMORY[0x1CCA93280](v17);
    v18 = sub_1C9945F5C();
    MEMORY[0x1CCA93280](v18);
  }

  return swift_willThrow();
}

uint64_t sub_1C993B85C()
{
  sub_1C99460E4();
  result = v2();
  if (v0)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v4 = sub_1C9A91B58();
    sub_1C97BFF6C(v4, qword_1EC3D3108);
    sub_1C9946110();
    v5 = v0;
    v6 = sub_1C9A91B38();
    v7 = sub_1C9A92FA8();

    if (os_log_type_enabled(v6, v7))
    {
      sub_1C9945F88();
      swift_slowAlloc();
      sub_1C9945EE4();
      v20 = swift_slowAlloc();
      *v1 = 136315394;
      v8 = sub_1C9871794();
      v11 = sub_1C9849140(v8, v9, v10);
      sub_1C9945F3C(v11);
      v12 = v0;
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      v13 = sub_1C9A924F8();
      v15 = sub_1C9849140(v13, v14, &v20);

      *(v1 + 14) = v15;
      sub_1C9945FAC(&dword_1C9788000, v16, v17, "%serror logging: %s");
      sub_1C9945F2C();
      swift_arrayDestroy();
      v18 = sub_1C9945F1C();
      MEMORY[0x1CCA93280](v18);
      v19 = sub_1C9945F5C();
      MEMORY[0x1CCA93280](v19);
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1C993B9E8(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v20 = a1 & 1;
  v7 = sub_1C9A924F8();
  v9 = v8;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v10 = sub_1C9A91B58();
  sub_1C97BFF6C(v10, qword_1EC3D3108);
  sub_1C9946110();

  v11 = sub_1C9A91B38();
  v12 = sub_1C9A92FC8();

  if (os_log_type_enabled(v11, v12))
  {
    sub_1C9945F88();
    swift_slowAlloc();
    sub_1C9945EE4();
    v19 = swift_slowAlloc();
    *v4 = 136446466;
    v13 = sub_1C9849140(a2, a3, &v19);
    sub_1C9945F3C(v13);
    v14 = sub_1C9849140(v7, v9, &v19);

    *(v4 + 14) = v14;
    sub_1C99460F0(&dword_1C9788000, v15, v16, "%{public}sreceive value %s");
    sub_1C9945F2C();
    swift_arrayDestroy();
    v17 = sub_1C9945F1C();
    MEMORY[0x1CCA93280](v17);
    v18 = sub_1C9945F5C();
    MEMORY[0x1CCA93280](v18);
  }

  else
  {
  }
}

void sub_1C993BB58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15[0] = a1;
  v15[1] = a2;

  v6 = sub_1C9A924F8();
  v8 = v7;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);

  v10 = sub_1C9A91B38();
  v11 = sub_1C9A92FC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1C9849140(a3, a4, v15);
    *(v12 + 12) = 2080;
    v14 = sub_1C9849140(v6, v8, v15);

    *(v12 + 14) = v14;
    _os_log_impl(&dword_1C9788000, v10, v11, "%{public}sreceive value %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v13, -1, -1);
    MEMORY[0x1CCA93280](v12, -1, -1);
  }

  else
  {
  }
}

void sub_1C993BD20(void *a1, uint64_t a2, unint64_t a3, double a4)
{
  v21 = a1;
  sub_1C98AD724(a4);
  v8 = a1;
  v9 = sub_1C9A924F8();
  v11 = v10;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v12 = sub_1C9A91B58();
  sub_1C97BFF6C(v12, qword_1EC3D3108);

  v13 = sub_1C9A91B38();
  v14 = sub_1C9A92FC8();

  if (os_log_type_enabled(v13, v14))
  {
    sub_1C9945F88();
    swift_slowAlloc();
    sub_1C9945EE4();
    v21 = swift_slowAlloc();
    *v4 = 136446466;
    v15 = sub_1C9849140(a2, a3, &v21);
    sub_1C9945F3C(v15);
    v16 = sub_1C9849140(v9, v11, &v21);

    *(v4 + 14) = v16;
    sub_1C99460F0(&dword_1C9788000, v17, v18, "%{public}sreceive value %s");
    sub_1C9945F2C();
    swift_arrayDestroy();
    v19 = sub_1C9945F1C();
    MEMORY[0x1CCA93280](v19);
    v20 = sub_1C9945F5C();
    MEMORY[0x1CCA93280](v20);
  }

  else
  {
  }
}

void sub_1C993BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;

  sub_1C97A2CEC(&qword_1EC3C8530, &qword_1C9AA34B0);
  v8 = sub_1C9A924F8();
  v10 = v9;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9A91B58();
  sub_1C97BFF6C(v11, qword_1EC3D3108);

  v12 = sub_1C9A91B38();
  v13 = sub_1C9A92FC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17[0] = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_1C9849140(a5, a6, v17);
    *(v14 + 12) = 2080;
    v16 = sub_1C9849140(v8, v10, v17);

    *(v14 + 14) = v16;
    _os_log_impl(&dword_1C9788000, v12, v13, "%{public}sreceive value %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v15, -1, -1);
    MEMORY[0x1CCA93280](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C993C084(uint64_t a1, double a2)
{
  type metadata accessor for SafeRecursiveLock(a2);
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  *(v2 + 16) = v4;
  *(v2 + 24) = a1;
  return v2;
}

void sub_1C993C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v24 = v23;
  v26 = v25;
  v114 = v27;
  v115 = v28;
  v113 = v29;
  v31 = v30;
  v111 = v32;
  v109 = sub_1C97A2CEC(&qword_1EC3C7740, &qword_1C9A9FD48);
  sub_1C97AE9C8();
  v107 = v33;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  sub_1C99460B4(v35);
  v110 = sub_1C97A2CEC(&qword_1EC3CD5C0, &qword_1C9AB7980);
  sub_1C97AE9C8();
  v108 = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  v106 = v38;
  v118 = sub_1C9A91748();
  sub_1C97AE9C8();
  v40 = v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v112 = &v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v99 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v117 = &v99 - v47;
  sub_1C9A91738();
  v119 = 0;
  v120 = 0xE000000000000000;
  v121 = v31;
  sub_1C9A93728();
  v48 = v120;
  v116 = v119;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v49 = sub_1C9A91B58();
  v50 = sub_1C97BFF6C(v49, qword_1EC3D3108);
  v103 = *(v40 + 16);
  v104 = v40 + 16;
  v103(v46, v117, v118);

  v105 = v50;
  v51 = sub_1C9A91B38();
  v52 = sub_1C9A92FC8();

  if (os_log_type_enabled(v51, v52))
  {
    sub_1C9945F88();
    swift_slowAlloc();
    v101 = v26;
    sub_1C9945EE4();
    v100 = swift_slowAlloc();
    v119 = v100;
    *v26 = 136315394;
    sub_1C97AE3DC();
    v53 = v118;
    v54 = sub_1C9A93A98();
    v102 = v23;
    v55 = v48;
    v56 = v53;
    v58 = v57;
    v59 = *(v40 + 8);
    v59(v46, v56);
    v60 = sub_1C9849140(v54, v58, &v119);
    v48 = v55;
    v24 = v102;

    *(v26 + 4) = v60;
    *(v26 + 12) = 2080;
    v61 = v116;
    *(v26 + 14) = sub_1C9849140(v116, v48, &v119);
    _os_log_impl(&dword_1C9788000, v51, v52, "Started Creating Sound Recognition Session %s (%s)", v26, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v26 = v101;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v59 = *(v40 + 8);
    v59(v46, v118);
    v61 = v116;
  }

  v62 = sub_1C9943064(v121, v117, v113, v114, v115, v26);
  if (v24)
  {
    v59(v117, v118);
  }

  else
  {
    v63 = v62;
    v114 = 0;
    v115 = v59;
    v64 = swift_allocObject();
    v64[2] = sub_1C9945DA8;
    v64[3] = 0;
    v64[4] = v63;
    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C97AE9EC();
    v65 = v48;
    sub_1C97AE67C(v66, &unk_1EC3C9AC0, &unk_1C9AA7DB0, v67);
    sub_1C9A91EF8();
    v119 = 0;
    v120 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C9946054();
    v119 = v69;
    v120 = v68;
    v113 = sub_1C97AE3DC();
    v70 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v70);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v61, v48);
    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    sub_1C993AFD4();

    v71 = sub_1C99460C0();
    v72(v71, v109);
    sub_1C9945DD0();
    sub_1C97AE67C(v73, v74, v75, v76);
    v77 = v110;
    v78 = sub_1C9A91F28();
    v79 = sub_1C99460CC();
    v80(v79, v77);
    v81 = v111;
    v82 = sub_1C9871794();
    v83 = v103;
    (v103)(v82);
    *(v81 + *(type metadata accessor for SoundRecognition.Session(0) + 20)) = v78;
    v84 = v112;
    v85 = sub_1C9871794();
    v83(v85);

    v86 = sub_1C9A91B38();
    v87 = sub_1C9A92FC8();

    if (os_log_type_enabled(v86, v87))
    {
      sub_1C9945F88();
      v88 = v84;
      v89 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v89 = 136315394;
      v90 = v118;
      v91 = sub_1C9A93A98();
      v92 = v90;
      v94 = v93;
      v115(v88, v92);
      v95 = sub_1C9849140(v91, v94, &v119);

      *(v89 + 4) = v95;
      *(v89 + 12) = 2080;
      v96 = sub_1C9849140(v116, v65, &v119);

      *(v89 + 14) = v96;
      _os_log_impl(&dword_1C9788000, v86, v87, "Finished Creating Sound Recognition Session %s (%s)", v89, 0x16u);
      swift_arrayDestroy();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();

      v115(v117, v118);
    }

    else
    {

      v97 = v118;
      v98 = v115;
      v115(v84, v118);
      v98(v117, v97);
    }
  }

  sub_1C97AEB5C();
}

void sub_1C993C8A4()
{
  sub_1C97AEB94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEA4C();
  (*(v3 + 16))(v5, v3);
  (*(v1 + 40))(v9, v7, AssociatedTypeWitness, v1);
  v12 = sub_1C97AEB30();
  v13(v12);
  sub_1C97AEB5C();
}

void sub_1C993C9CC()
{
  sub_1C9946068();
  sub_1C984C948();
  sub_1C984C99C();
  sub_1C984C9F0();
  sub_1C994607C();
  sub_1C9831D34(v1, v2, v3, v4, v5, v6, v7, v8);
  WitnessTable = swift_getWitnessTable();
  sub_1C98316F0(v16, v0, WitnessTable, v10, v11, v12, v13, v14, v15, 0, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9]);
}

void sub_1C993CA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  v4 = *(a3 + 96);
  v5[0] = *(a3 + 80);
  v5[1] = v4;
  _s21ServerEnvironmentImplVMa(255, v5);
  swift_getWitnessTable();
  sub_1C993C8A4();
}

uint64_t sub_1C993CB40()
{
  sub_1C99460E4();
  if (qword_1EC3C5E00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  memcpy(v5, &unk_1EC3D3360, 0x41uLL);
  v6 = v1;
  v7 = v0;
  sub_1C97E2DB0(__dst, v4);
  v2 = sub_1C985F310();
  sub_1C97AE434(v5, &qword_1EC3C76A0, &unk_1C9AA4F40);
  return v2;
}

uint64_t sub_1C993CD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4F65707954646162 && a2 == 0xED0000657269576ELL;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F726566667562 && a2 == 0xEE00776F6C667265;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x52646570706F7264 && a2 == 0xED0000746C757365;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C9AD9ED0 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000021 && 0x80000001C9AD9EF0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9A93B18();

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

unint64_t sub_1C993CF1C(char a1)
{
  result = 0x4F65707954646162;
  switch(a1)
  {
    case 1:
      result = 0x764F726566667562;
      break;
    case 2:
      result = 0x52646570706F7264;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x726F707075736E75;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C993D008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C97AEB94();
  a25 = v28;
  a26 = v29;
  v70 = v30;
  sub_1C97A2CEC(&qword_1EC3CD878, &qword_1C9AB7FF0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CD880, &qword_1C9AB7FF8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CD888, &qword_1C9AB8000);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  sub_1C99460D8(v34);
  sub_1C97A2CEC(&qword_1EC3CD890, &qword_1C9AB8008);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  sub_1C994609C(v36);
  sub_1C97A2CEC(&qword_1EC3CD898, &qword_1C9AB8010);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C9945F4C();
  v38 = sub_1C97A2CEC(&qword_1EC3CD8A0, &qword_1C9AB8018);
  sub_1C97AE9C8();
  v69 = v39;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AEA4C();
  v41 = sub_1C97A2CEC(&qword_1EC3CD8A8, &qword_1C9AB8020);
  sub_1C97AE9C8();
  v43 = v42;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97FB2D8();
  v45 = sub_1C99460A8();
  sub_1C97A5A8C(v45, v46);
  sub_1C9943FE4();
  sub_1C9A93DD8();
  v47 = (v43 + 8);
  switch(v70)
  {
    case 1:
      a12 = 1;
      v60 = sub_1C9944188();
      sub_1C9887C98(&type metadata for SoundRecognition.DomainError.BufferOverflowCodingKeys, &a12, v61, v62, v60);
      goto LABEL_8;
    case 2:
      a13 = 2;
      v54 = sub_1C9944134();
      sub_1C9887C98(&type metadata for SoundRecognition.DomainError.DroppedResultCodingKeys, &a13, v55, v56, v54);
      goto LABEL_8;
    case 3:
      a14 = 3;
      v57 = sub_1C99440E0();
      sub_1C9887C98(&type metadata for SoundRecognition.DomainError.InvalidDetectorOutputCodingKeys, &a14, v58, v59, v57);
      goto LABEL_8;
    case 4:
      a15 = 4;
      v51 = sub_1C994408C();
      sub_1C9887C98(&type metadata for SoundRecognition.DomainError.UnsupportedCodingKeys, &a15, v52, v53, v51);
      goto LABEL_8;
    case 5:
      sub_1C9946090();
      v63 = sub_1C9944038();
      sub_1C9887C98(&type metadata for SoundRecognition.DomainError.CouldNotReadModelWindowAndHopSizeCodingKeys, &a16, v64, v65, v63);
LABEL_8:
      v66 = sub_1C9945F04();
      v68(v66, v67);
      break;
    default:
      a11 = 0;
      v48 = sub_1C99441DC();
      sub_1C989950C(&type metadata for SoundRecognition.DomainError.BadTypeOnWireCodingKeys, &a11, v49, v50, v48);
      (*(v69 + 8))(v26, v38);
      break;
  }

  (*v47)(v27, v41);
  sub_1C97AEB5C();
}

void sub_1C993D4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C97AEB94();
  a25 = v29;
  a26 = v30;
  v105 = v27;
  v32 = v31;
  sub_1C97A2CEC(&qword_1EC3CD808, &qword_1C9AB7FB8);
  sub_1C97AE9C8();
  v98 = v33;
  v99 = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v104 = v36;
  sub_1C97A2CEC(&qword_1EC3CD810, &qword_1C9AB7FC0);
  sub_1C97AE9C8();
  v96 = v37;
  v97 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  v103 = v40;
  sub_1C97A2CEC(&qword_1EC3CD818, &qword_1C9AB7FC8);
  sub_1C97AE9C8();
  v94 = v42;
  v95 = v41;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97AC02C();
  v101 = v44;
  sub_1C97A2CEC(&qword_1EC3CD820, &qword_1C9AB7FD0);
  sub_1C97AE9C8();
  v92 = v46;
  v93 = v45;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AC02C();
  v100 = v48;
  sub_1C97A2CEC(&qword_1EC3CD828, &qword_1C9AB7FD8);
  sub_1C97AE9C8();
  v90 = v50;
  v91 = v49;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97FB2D8();
  v52 = sub_1C97A2CEC(&qword_1EC3CD830, &qword_1C9AB7FE0);
  sub_1C97AE9C8();
  v89 = v53;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C9945F4C();
  v55 = sub_1C97A2CEC(&qword_1EC3CD838, &qword_1C9AB7FE8);
  sub_1C97AE9C8();
  v102 = v56;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  v59 = v84 - v58;
  sub_1C97A5A8C(v32, v32[3]);
  sub_1C9943FE4();
  v60 = v105;
  sub_1C9A93DB8();
  if (v60)
  {
    goto LABEL_8;
  }

  v86 = v52;
  v87 = v26;
  v88 = v28;
  v105 = v32;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v62 == v61 >> 1)
  {
LABEL_7:
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v79 = v78;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v79 = &type metadata for SoundRecognition.DomainError;
    v80 = sub_1C9A93868();
    sub_1C98994EC(v80);
    sub_1C97AEB3C();
    (*(v81 + 104))(v79);
    swift_willThrow();
    swift_unknownObjectRelease();
    v82 = sub_1C99460CC();
    v83(v82, v55);
    v32 = v105;
LABEL_8:
    sub_1C97A592C(v32);
LABEL_9:
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  v85 = v59;
  if (v66 < (v65 >> 1))
  {
    v67 = *(v64 + v63);
    v68 = sub_1C98EE520();
    v70 = v69;
    v72 = v71;
    swift_unknownObjectRelease();
    v84[1] = v68;
    if (v70 == v72 >> 1)
    {
      v73 = v55;
      v74 = v102;
      switch(v67)
      {
        case 1:
          a12 = 1;
          sub_1C9944188();
          sub_1C9945EC0(&type metadata for SoundRecognition.DomainError.BufferOverflowCodingKeys, &a12);
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 2:
          a13 = 2;
          sub_1C9944134();
          sub_1C9945EC0(&type metadata for SoundRecognition.DomainError.DroppedResultCodingKeys, &a13);
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 3:
          a14 = 3;
          sub_1C99440E0();
          sub_1C9945EC0(&type metadata for SoundRecognition.DomainError.InvalidDetectorOutputCodingKeys, &a14);
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 4:
          a15 = 4;
          sub_1C994408C();
          sub_1C9945EC0(&type metadata for SoundRecognition.DomainError.UnsupportedCodingKeys, &a15);
          sub_1C9945F7C();
          swift_unknownObjectRelease();
LABEL_14:
          v75 = sub_1C9945F10();
          break;
        case 5:
          sub_1C9946090();
          sub_1C9944038();
          v68 = v85;
          sub_1C9A93858();
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          v75 = sub_1C99460C0();
          break;
        default:
          a11 = 0;
          sub_1C99441DC();
          sub_1C9945EC0(&type metadata for SoundRecognition.DomainError.BadTypeOnWireCodingKeys, &a11);
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          v75 = sub_1C9945F10();
          v77 = v86;
          break;
      }

      v76(v75, v77);
      (*(v74 + 8))(v68, v73);
      sub_1C97A592C(v105);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C993DB84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463616E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C993DC48(char a1)
{
  if (a1)
  {
    return 0x657669746361;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

void sub_1C993DC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  a23 = v27;
  a24 = v28;
  a10 = v29;
  sub_1C97A2CEC(&qword_1EC3CD6F8, &qword_1C9AB7A28);
  sub_1C97AE9C8();
  v50 = v31;
  v51 = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97FB2C8();
  v49 = sub_1C97A2CEC(&qword_1EC3CD700, &qword_1C9AB7A30);
  sub_1C97AE9C8();
  v34 = v33;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C9945F6C();
  v36 = sub_1C97A2CEC(&qword_1EC3CD708, &qword_1C9AB7A38);
  sub_1C97AE9C8();
  v38 = v37;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97FB2D8();
  v40 = sub_1C99460A8();
  sub_1C97A5A8C(v40, v41);
  sub_1C9943914();
  sub_1C9A93DD8();
  v42 = (v38 + 8);
  if (a10)
  {
    sub_1C97FB3CC();
    v43 = sub_1C9943968();
    sub_1C989950C(&type metadata for SoundRecognition.Detection.ActiveCodingKeys, &a14, v44, v45, v43);
    (*(v50 + 8))(v24, v51);
  }

  else
  {
    a13 = 0;
    v46 = sub_1C99439BC();
    sub_1C989950C(&type metadata for SoundRecognition.Detection.InactiveCodingKeys, &a13, v47, v48, v46);
    (*(v34 + 8))(v26, v49);
  }

  (*v42)(v25, v36);
  sub_1C97AEB5C();
}

void sub_1C993DEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v57 = sub_1C97A2CEC(&qword_1EC3CD728, &qword_1C9AB7A40);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C9945F4C();
  v30 = sub_1C97A2CEC(&qword_1EC3CD730, &qword_1C9AB7A48);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C9945F6C();
  v32 = sub_1C97A2CEC(&unk_1EC3CD738, &unk_1C9AB7A50);
  sub_1C97AE9C8();
  v56 = v33;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97FB2C8();
  sub_1C97A5A8C(v28, v28[3]);
  sub_1C9943914();
  sub_1C9A93DB8();
  if (v23)
  {
    goto LABEL_8;
  }

  v58 = v28;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v36 == v35 >> 1)
  {
LABEL_7:
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v47 = v46;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v47 = &type metadata for SoundRecognition.Detection;
    v48 = sub_1C9A93868();
    sub_1C98994EC(v48);
    sub_1C97AEB3C();
    (*(v49 + 104))(v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v56 + 8))(v24, v32);
    v28 = v58;
LABEL_8:
    sub_1C97A592C(v28);
LABEL_9:
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  if (v40 < (v39 >> 1))
  {
    v41 = *(v38 + v37);
    sub_1C98EE520();
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    if (v43 == v45 >> 1)
    {
      if (v41)
      {
        sub_1C97FB3CC();
        sub_1C9943968();
        sub_1C988A520(&type metadata for SoundRecognition.Detection.ActiveCodingKeys, &a13);
        swift_unknownObjectRelease();
        v50 = sub_1C99460CC();
        v51(v50, v57);
      }

      else
      {
        a12 = 0;
        sub_1C99439BC();
        sub_1C988A520(&type metadata for SoundRecognition.Detection.InactiveCodingKeys, &a12);
        swift_unknownObjectRelease();
        v54 = sub_1C9945F04();
        v55(v54, v30);
      }

      v52 = sub_1C988A4F0();
      v53(v52);
      sub_1C97A592C(v58);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C993E308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  v4 = *(a3 + 32);
  v5[0] = *(a3 + 16);
  v5[1] = v4;
  type metadata accessor for AudioStreamAnalyzerEnvironmentImpl(255, v5);
  swift_getWitnessTable();
  sub_1C993C8A4();
}

uint64_t sub_1C993E3B8(uint64_t a1)
{
  v2 = sub_1C99441DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E3F4(uint64_t a1)
{
  v2 = sub_1C99441DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E430(uint64_t a1)
{
  v2 = sub_1C9944188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E46C(uint64_t a1)
{
  v2 = sub_1C9944188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C993CD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C993E4F0(uint64_t a1)
{
  v2 = sub_1C9943FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E52C(uint64_t a1)
{
  v2 = sub_1C9943FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E568(uint64_t a1)
{
  v2 = sub_1C9944038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E5A4(uint64_t a1)
{
  v2 = sub_1C9944038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E5E0(uint64_t a1)
{
  v2 = sub_1C9944134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E61C(uint64_t a1)
{
  v2 = sub_1C9944134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E658(uint64_t a1)
{
  v2 = sub_1C99440E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E694(uint64_t a1)
{
  v2 = sub_1C99440E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E6D0(uint64_t a1)
{
  v2 = sub_1C994408C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E70C(uint64_t a1)
{
  v2 = sub_1C994408C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E7A8(uint64_t a1)
{
  v2 = sub_1C9943968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E7E4(uint64_t a1)
{
  v2 = sub_1C9943968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C993DB84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C993E868(uint64_t a1)
{
  v2 = sub_1C9943914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E8A4(uint64_t a1)
{
  v2 = sub_1C9943914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E8E0(uint64_t a1)
{
  v2 = sub_1C99439BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E91C(uint64_t a1)
{
  v2 = sub_1C99439BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

void sub_1C993EA08()
{
  sub_1C97AEB94();
  v86 = v4;
  v6 = v5;
  v8 = v7;
  v83 = v9;
  v84 = v10;
  v81 = v11;
  sub_1C97A2CEC(&unk_1EC3CD650, &qword_1C9ACA900);
  sub_1C97AE9C8();
  v75 = v13;
  v76 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AC02C();
  v70 = v15;
  v74 = sub_1C97A2CEC(&unk_1EC3CE340, &qword_1C9AB79E0);
  sub_1C97AE9C8();
  v72 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v68 = v18;
  v71 = sub_1C97A2CEC(&unk_1EC3CD660, &qword_1C9AB79E8);
  sub_1C97AE9C8();
  v69 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C9945F6C();
  v21 = sub_1C97A2CEC(&unk_1EC3CE350, &unk_1C9AB79F0);
  sub_1C97AE9C8();
  v73 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97FB2D8();
  sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  v79 = v25;
  v80 = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C9945F4C();
  sub_1C9A91C28();
  sub_1C97AE9C8();
  v77 = v28;
  v78 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  sub_1C97AE9C8();
  v33 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  v82 = v35;
  v36 = *(v6 + 40);
  v37 = v84;
  v84 = v8;
  v85 = v6;
  v36(v83, v37, v86, v6);
  if (!v1)
  {
    v67 = v33;
    v83 = v31;
    v63[0] = v3;
    v63[1] = v2;
    v64 = v21;
    v66 = 0;
    v65 = sub_1C9832398();

    v39 = v77;
    v38 = v78;
    (*(v77 + 104))(v30, *MEMORY[0x1E695BD20], v78);
    *v0 = sub_1C993F164;
    v0[1] = 0;
    v41 = v79;
    v40 = v80;
    (*(v79 + 104))(v0, *MEMORY[0x1E695BD48], v80);
    sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    sub_1C97AE9EC();
    sub_1C97AE67C(v42, &unk_1EC3CC280, &qword_1C9A9C7A0, v43);
    v44 = v82;
    sub_1C9A92018();
    (*(v41 + 8))(v0, v40);
    (*(v39 + 8))(v30, v38);
    sub_1C9945F7C();

    MEMORY[0x1EEE9AC00](v45);
    v46 = v85;
    v63[-6] = v86;
    v63[-5] = v46;
    v47 = v84;
    v63[-4] = v81;
    v63[-3] = v47;
    v63[-2] = v44;
    v48 = v66;
    sub_1C993B6C4();
    if (v48)
    {
      v49 = sub_1C9945F10();
    }

    else
    {
      sub_1C97A2CEC(&unk_1EC3CC2B0, &unk_1C9ABC1C0);
      sub_1C97A2CEC(&qword_1EC3CD680, &qword_1C9A9D4D0);
      sub_1C97AE9EC();
      sub_1C97AE67C(v51, &unk_1EC3CC2B0, &unk_1C9ABC1C0, v52);
      sub_1C9A92048();
      sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
      sub_1C9A91CA8();
      v53 = sub_1C97AEB30();
      v54(v53);
      v55 = v74;
      sub_1C9A91CA8();
      v56 = sub_1C9945F10();
      v57(v56, v55);
      sub_1C9A91CA8();
      v58 = sub_1C97AEB30();
      v59(v58);
      sub_1C97AE67C(&qword_1EC3CD688, &unk_1EC3CE350, &unk_1C9AB79F0, MEMORY[0x1E695BE28]);
      v60 = v64;
      sub_1C9A91F28();

      v61 = sub_1C9945F10();
      v62(v61, v60);
      v49 = sub_1C99460C0();
    }

    v50(v49, v83);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C993F16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v21 = a2;
  v22 = a4;
  v24 = a1;
  v20 = a5;
  v7 = sub_1C97A2CEC(&unk_1EC3CE360, &unk_1C9AB7A08);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v19 - v13;
  (*(v11 + 16))(a3, v11);
  sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  sub_1C97AE67C(&qword_1EC3CD6A0, &unk_1EC3CD670, &qword_1C9AA7D50, MEMORY[0x1E695BDD8]);
  sub_1C9A91F68();
  sub_1C97AE67C(&unk_1EC3CE370, &unk_1EC3CE360, &unk_1C9AB7A08, MEMORY[0x1E695BD60]);
  sub_1C9A91F28();
  (*(v8 + 8))(v10, v7);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v15 = v25;
  sub_1C99F4F74();
  if (v15)
  {
    (*(v23 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v18 = v16;
    (*(v23 + 8))(v14, AssociatedTypeWitness);

    *v20 = v18;
  }

  return result;
}

void *sub_1C993F4A4@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>)
{
  if (a1)
  {
    result = sub_1C9A08564(a1, (a3 - a1) / 4);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

uint64_t sub_1C993F4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97BD360(a1, v7);
  sub_1C97A2CEC(&qword_1EC3CD680, &qword_1C9A9D4D0);
  if (swift_dynamicCast())
  {
    return sub_1C979B054(v5, a2);
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_1C97AE434(v5, &unk_1EC3CD690, &qword_1C9AB7A00);
  sub_1C99437EC();
  sub_1C97AA928();
  swift_allocError();
  *v4 = 0;
  return swift_willThrow();
}

void *sub_1C993F5BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1C97A5A8C(a1, v3);
  v5 = *(v4 + 8);
  v6 = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  result = v5(&v8, sub_1C993F4A4, 0, v6, v3, v4);
  *a2 = v8;
  return result;
}

uint64_t sub_1C993F668@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  if (*(*result + 16))
  {
    *a2 = *(*result + 32) > 0.5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C993F690()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&unk_1EC3CE320, &unk_1C9AB79D0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  sub_1C993EA08();
  if (!v0)
  {
    v2 = sub_1C99460A8();
    sub_1C97A2CEC(v2, v3);
    sub_1C97AE9EC();
    sub_1C97AE67C(v4, &unk_1EC3C9AC0, &unk_1C9AA7DB0, v5);
    sub_1C9943854();
    sub_1C9A920D8();

    sub_1C97AE67C(&unk_1EC3CE330, &unk_1EC3CE320, &unk_1C9AB79D0, MEMORY[0x1E695BD38]);
    sub_1C9A91F28();
    v6 = sub_1C97AEB30();
    v7(v6);
  }

  sub_1C97AEB5C();
}

void sub_1C993F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  LODWORD(v99) = v24;
  v26 = v25;
  v113 = v27;
  sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  v111 = v29;
  v112 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  sub_1C99460D8(v31);
  sub_1C9A91C28();
  sub_1C97AE9C8();
  v108 = v33;
  v109 = v32;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C994609C(&v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1C97A2CEC(&qword_1EC3CB4F0, &unk_1C9AB7970);
  sub_1C97AE9C8();
  v37 = v36;
  v39 = *(v38 + 64);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v42 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v93 - v43;
  sub_1C97A2CEC(&qword_1EC3C7740, &qword_1C9A9FD48);
  sub_1C97AE9C8();
  v100 = v46;
  v101 = v45;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AC02C();
  sub_1C97ABFB4(v48);
  sub_1C97A2CEC(&qword_1EC3CD5C0, &qword_1C9AB7980);
  sub_1C97AE9C8();
  v103 = v50;
  v104 = v49;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  v102 = v52;
  sub_1C97A2CEC(&qword_1EC3CD5C8, &qword_1C9AB7988);
  sub_1C97AE9C8();
  v105 = v54;
  v106 = v53;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C97AC02C();
  sub_1C99460B4(v56);
  v58 = *(v26 + 24);
  v57 = *(v26 + 32);
  v59 = sub_1C9871794();
  sub_1C97A5A8C(v59, v60);
  (*(*(v57 + 8) + 8))(v58);
  if (!v23)
  {
    v98 = 0;
    v61 = sub_1C99CFB50();

    sub_1C98F9BA0(v26, &v114);
    v62 = swift_allocObject();
    *(v62 + 16) = v99;
    sub_1C98F9C04(&v114, (v62 + 24));
    sub_1C9A91738();
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    sub_1C9A93728();
    v95 = *(&v114 + 1);
    v99 = v114;
    *&v114 = v61;
    *(&v114 + 1) = sub_1C99400D8;
    v115 = 0;
    v116 = sub_1C99436E8;
    v117 = v62;
    v118 = 1;
    v97 = v61;

    v94 = v35;
    v96 = v62;

    sub_1C97A2CEC(&qword_1EC3CD5D0, &qword_1C9AB7990);
    sub_1C97AE67C(&qword_1EC3CE3F0, &qword_1EC3CD5D0, &qword_1C9AB7990, &unk_1C9AC6E08);
    sub_1C9A91F68();

    v63 = v94;
    (*(v37 + 16))(v42, v44, v94);
    v64 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1C9945DA8;
    *(v65 + 24) = 0;
    (*(v37 + 32))(v65 + v64, v42, v63);
    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C97AE9EC();
    sub_1C97AE67C(v66, &unk_1EC3C9AC0, &unk_1C9AA7DB0, v67);
    sub_1C9A91EF8();
    (*(v37 + 8))(v44, v63);
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C9946054();
    *&v114 = v69;
    *(&v114 + 1) = v68;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v70 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v70);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v99, v95);

    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    sub_1C993AFD4();

    v71 = sub_1C99460C0();
    v72(v71);
    sub_1C9945DD0();
    sub_1C97AE67C(v73, v74, v75, v76);
    v77 = v104;
    v78 = sub_1C9A92008();
    v101 = sub_1C97A2CEC(&qword_1EC3CD5E0, &qword_1C9AB7998);
    sub_1C97AA878();
    swift_allocObject();
    v80 = sub_1C993C084(v78, v79);
    v81 = sub_1C9945F10();
    v82(v81, v77);
    *&v114 = v80;
    v84 = v107;
    v83 = v108;
    v85 = v109;
    (*(v108 + 104))(v107, *MEMORY[0x1E695BD20], v109);
    v87 = v110;
    v86 = v111;
    *v110 = sub_1C994043C;
    v87[1] = 0;
    v88 = v112;
    (*(v86 + 104))(v87, *MEMORY[0x1E695BD48], v112);
    sub_1C97AE67C(&qword_1EC3CD5E8, &qword_1EC3CD5E0, &qword_1C9AB7998, &unk_1C9AB48D0);
    sub_1C9A92018();
    (*(v86 + 8))(v87, v88);
    (*(v83 + 8))(v84, v85);

    sub_1C97AE67C(&qword_1EC3CD5F0, &qword_1EC3CD5C8, &qword_1C9AB7988, MEMORY[0x1E695BDD8]);
    v89 = v106;
    v90 = sub_1C9A91F28();

    v91 = sub_1C9945F10();
    v92(v91, v89);
    *(v113 + *(type metadata accessor for SoundRecognition.Session(0) + 20)) = v90;
  }

  sub_1C97AEB5C();
}

void sub_1C99400D8(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = sub_1C97A2CEC(&qword_1EC3CD610, &qword_1C9AB79A8);
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v14 - v2;
  v3 = MEMORY[0x1E69E7CC0];
  v18 = xmmword_1C9A9EDD0;
  while (1)
  {
    v4 = sub_1C993B624();
    if (v1)
    {

      return;
    }

    v6 = v5;
    if (v5 == -1)
    {
      v19 = v3;
      sub_1C97A2CEC(&qword_1EC3CD618, &unk_1C9AB79B0);
      sub_1C97AE67C(&unk_1EC3CD620, &qword_1EC3CD618, &unk_1C9AB79B0, MEMORY[0x1E69E6328]);
      v12 = v14;
      sub_1C9A92658();

      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      v13 = v17;
      sub_1C9A91CE8();
      (*(v15 + 8))(v12, v13);
      return;
    }

    v7 = v4;
    sub_1C97A2CEC(&unk_1EC3C7750, &unk_1C9AB79C0);
    inited = swift_initStackObject();
    *(inited + 16) = v18;
    *(inited + 32) = v7;
    *(inited + 40) = v6;
    v9 = *(v3 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || (v10 = *(v3 + 24) >> 1, v10 <= v9))
    {
      sub_1C97E69E4();
      v3 = v11;
      v10 = *(v11 + 24) >> 1;
    }

    if (v10 <= *(v3 + 16))
    {
      break;
    }

    sub_1C97A2CEC(&qword_1EC3C7B90, &qword_1C9ABC240);
    swift_arrayInitWithCopy();

    ++*(v3 + 16);
  }

  __break(1u);
}

uint64_t sub_1C994037C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[5];
  v8 = sub_1C97A5A8C(a2, v6);
  v12[3] = v6;
  v12[4] = v7;
  v9 = sub_1C981CDF0(v12);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  v10 = sub_1C9890AB8(a1, v12);
  result = sub_1C97A592C(v12);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1C9940444@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  sub_1C99437EC();
  sub_1C97AA928();
  result = swift_allocError();
  *a2 = result;
  *v5 = v2;
  return result;
}

uint64_t sub_1C9940488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616C41656B6F6D73 && a2 == 0xEA00000000006D72;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7373657274736964 && a2 == 0xEE00796261426465;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1885693282 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72657A7A7562 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E726F48726163 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x776F654D746163 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6867756F63 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6C6542676E6964 && a2 == 0xE800000000000000;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6B726142676F64 && a2 == 0xE700000000000000;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C6C6542726F6F64 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x636F6E4B726F6F64 && a2 == 0xE90000000000006BLL;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x72616C4165726966 && a2 == 0xE90000000000006DLL;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6572427373616C67 && a2 == 0xED0000676E696B61;
                          if (v17 || (sub_1C9A93B18() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6857656C7474656BLL && a2 == 0xEF676E696C747369;
                            if (v18 || (sub_1C9A93B18() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x74756F6873 && a2 == 0xE500000000000000;
                              if (v19 || (sub_1C9A93B18() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x616C416E65726973 && a2 == 0xEA00000000006D72;
                                if (v20 || (sub_1C9A93B18() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x6E75527265746177 && a2 == 0xEC000000676E696ELL)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_1C9A93B18();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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

uint64_t sub_1C99409B4(char a1)
{
  result = 0x616C41656B6F6D73;
  switch(a1)
  {
    case 1:
      result = 0x7373657274736964;
      break;
    case 2:
      result = 1885693282;
      break;
    case 3:
      result = 0x72657A7A7562;
      break;
    case 4:
      result = 0x6E726F48726163;
      break;
    case 5:
      result = 0x776F654D746163;
      break;
    case 6:
      result = 0x6867756F63;
      break;
    case 7:
      v3 = 1735289188;
      goto LABEL_13;
    case 8:
      result = 0x6B726142676F64;
      break;
    case 9:
      v3 = 1919905636;
LABEL_13:
      result = v3 | 0x6C6C654200000000;
      break;
    case 10:
      result = 0x636F6E4B726F6F64;
      break;
    case 11:
      result = 0x72616C4165726966;
      break;
    case 12:
      result = 0x6572427373616C67;
      break;
    case 13:
      result = 0x6857656C7474656BLL;
      break;
    case 14:
      result = 0x74756F6873;
      break;
    case 15:
      result = 0x616C416E65726973;
      break;
    case 16:
      result = 0x6E75527265746177;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C9940B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v23;
  a20 = v24;
  v168 = v25;
  sub_1C97A2CEC(&qword_1EC3CD9D0, &qword_1C9AB80B8);
  sub_1C97AE9C8();
  v167[0] = v27;
  v167[1] = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  v166[2] = v29;
  sub_1C97A2CEC(&qword_1EC3CD9D8, &qword_1C9AB80C0);
  sub_1C97AE9C8();
  v166[0] = v31;
  v166[1] = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  sub_1C99460D8(v33);
  sub_1C97A2CEC(&qword_1EC3CD9E0, &qword_1C9AB80C8);
  sub_1C97AE9C8();
  v165[0] = v35;
  v165[1] = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  sub_1C994609C(v37);
  sub_1C97A2CEC(&qword_1EC3CD9E8, &qword_1C9AB80D0);
  sub_1C97AE9C8();
  v164[0] = v39;
  v164[1] = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  sub_1C99460B4(v41);
  sub_1C97A2CEC(&qword_1EC3CD9F0, &qword_1C9AB80D8);
  sub_1C97AE9C8();
  v162 = v43;
  v163 = v42;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  v161 = v45;
  sub_1C97A2CEC(&qword_1EC3CD9F8, &qword_1C9AB80E0);
  sub_1C97AE9C8();
  v159 = v47;
  v160 = v46;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C97AC02C();
  sub_1C97ABFB4(v49);
  v50 = sub_1C97A2CEC(&qword_1EC3CDA00, &qword_1C9AB80E8);
  sub_1C97ABF78(v50, &a17);
  v158 = v51;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C97AC02C();
  sub_1C97ABFB4(v53);
  v54 = sub_1C97A2CEC(&qword_1EC3CDA08, &qword_1C9AB80F0);
  sub_1C97ABF78(v54, &a14);
  v157 = v55;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C97AC02C();
  sub_1C97ABFB4(v57);
  v58 = sub_1C97A2CEC(&qword_1EC3CDA10, &qword_1C9AB80F8);
  sub_1C97ABF78(v58, &a11);
  v156 = v59;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C97AC02C();
  sub_1C97ABFB4(v61);
  v62 = sub_1C97A2CEC(&qword_1EC3CDA18, &qword_1C9AB8100);
  sub_1C97ABF78(v62, &v171);
  v155 = v63;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C97AC02C();
  sub_1C97ABFB4(v65);
  v66 = sub_1C97A2CEC(&qword_1EC3CDA20, &qword_1C9AB8108);
  sub_1C97ABF78(v66, &v169);
  v154 = v67;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C97AC02C();
  sub_1C97ABFB4(v69);
  v70 = sub_1C97A2CEC(&qword_1EC3CDA28, &qword_1C9AB8110);
  sub_1C97ABF78(v70, v167);
  v153 = v71;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C97AC02C();
  sub_1C97ABFB4(v73);
  v74 = sub_1C97A2CEC(&qword_1EC3CDA30, &qword_1C9AB8118);
  sub_1C97ABF78(v74, v166);
  v152 = v75;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C97AC02C();
  sub_1C97ABFB4(v77);
  v78 = sub_1C97A2CEC(&qword_1EC3CDA38, &qword_1C9AB8120);
  sub_1C97ABF78(v78, v165);
  v151 = v79;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v80);
  sub_1C97AC02C();
  sub_1C97ABFB4(v81);
  v82 = sub_1C97A2CEC(&qword_1EC3CDA40, &qword_1C9AB8128);
  sub_1C97ABF78(v82, v164);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C97AC02C();
  sub_1C97ABFB4(v84);
  v85 = sub_1C97A2CEC(&qword_1EC3CDA48, &qword_1C9AB8130);
  sub_1C97AE9C8();
  v150 = v86;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C97FB2C8();
  v88 = sub_1C97A2CEC(&qword_1EC3CDA50, &qword_1C9AB8138);
  sub_1C97AE9C8();
  v149 = v89;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C97AEA4C();
  v170 = sub_1C97A2CEC(&qword_1EC3CDA58, &unk_1C9AB8140);
  sub_1C97AE9C8();
  v92 = v91;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C9945F6C();
  v94 = sub_1C99460A8();
  v96 = sub_1C97A5A8C(v94, v95);
  sub_1C9944230();
  v169 = v22;
  sub_1C9A93DD8();
  v97 = (v92 + 8);
  switch(v168)
  {
    case 1:
      sub_1C97FB3CC();
      sub_1C9944770();
      v96 = v169;
      v20 = v170;
      sub_1C9A93988();
      (*(v150 + 8))(v21, v85);
      goto LABEL_22;
    case 2:
      HIBYTE(a10) = 2;
      v121 = sub_1C994471C();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.BeepCodingKeys, &a10 + 7, v122, v123, v121);
      v112 = sub_1C9945EB0();
      v114 = v164;
      goto LABEL_20;
    case 3:
      HIBYTE(a10) = 3;
      v127 = sub_1C99446C8();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.BuzzerCodingKeys, &a10 + 7, v128, v129, v127);
      v112 = sub_1C9945EB0();
      v114 = v165;
      goto LABEL_20;
    case 4:
      HIBYTE(a10) = 4;
      v109 = sub_1C9944674();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.CarHornCodingKeys, &a10 + 7, v110, v111, v109);
      v112 = sub_1C9945EB0();
      v114 = v166;
      goto LABEL_20;
    case 5:
      sub_1C9946090();
      v133 = sub_1C9944620();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.CatMeowCodingKeys, &a10 + 7, v134, v135, v133);
      v112 = sub_1C9945EB0();
      v114 = v167;
      goto LABEL_20;
    case 6:
      HIBYTE(a10) = 6;
      v140 = sub_1C99445CC();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.CoughCodingKeys, &a10 + 7, v141, v142, v140);
      v112 = sub_1C9945EB0();
      v114 = &v169;
      goto LABEL_20;
    case 7:
      HIBYTE(a10) = 7;
      v130 = sub_1C9944578();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.DingBellCodingKeys, &a10 + 7, v131, v132, v130);
      v112 = sub_1C9945EB0();
      v114 = &v171;
      goto LABEL_20;
    case 8:
      HIBYTE(a10) = 8;
      v146 = sub_1C9944524();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.DogBarkCodingKeys, &a10 + 7, v147, v148, v146);
      v112 = sub_1C9945EB0();
      v114 = &a11;
      goto LABEL_20;
    case 9:
      HIBYTE(a10) = 9;
      v118 = sub_1C99444D0();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.DoorBellCodingKeys, &a10 + 7, v119, v120, v118);
      v112 = sub_1C9945EB0();
      v114 = &a14;
      goto LABEL_20;
    case 10:
      HIBYTE(a10) = 10;
      v143 = sub_1C994447C();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.DoorKnockCodingKeys, &a10 + 7, v144, v145, v143);
      v112 = sub_1C9945EB0();
      v114 = &a17;
LABEL_20:
      v139 = *(v114 - 32);
      goto LABEL_21;
    case 11:
      HIBYTE(a10) = 11;
      v106 = sub_1C9944428();
      sub_1C9945E4C(&type metadata for SoundRecognition.DetectorIdentifier.FireAlarmCodingKeys, &a10 + 7, v107, v108, v106);
      goto LABEL_16;
    case 12:
      HIBYTE(a10) = 12;
      v115 = sub_1C99443D4();
      sub_1C9945E90(&type metadata for SoundRecognition.DetectorIdentifier.GlassBreakingCodingKeys, &a10 + 7, v116, v117, v115);
      goto LABEL_16;
    case 13:
      HIBYTE(a10) = 13;
      v136 = sub_1C9944380();
      sub_1C9945E90(&type metadata for SoundRecognition.DetectorIdentifier.KettleWhistlingCodingKeys, &a10 + 7, v137, v138, v136);
      goto LABEL_16;
    case 14:
      HIBYTE(a10) = 14;
      v103 = sub_1C994432C();
      sub_1C9945E90(&type metadata for SoundRecognition.DetectorIdentifier.ShoutCodingKeys, &a10 + 7, v104, v105, v103);
      goto LABEL_16;
    case 15:
      HIBYTE(a10) = 15;
      v124 = sub_1C99442D8();
      sub_1C9945E90(&type metadata for SoundRecognition.DetectorIdentifier.SirenAlarmCodingKeys, &a10 + 7, v125, v126, v124);
      goto LABEL_16;
    case 16:
      HIBYTE(a10) = 16;
      v100 = sub_1C9944284();
      sub_1C9945E90(&type metadata for SoundRecognition.DetectorIdentifier.WaterRunningCodingKeys, &a10 + 7, v101, v102, v100);
LABEL_16:
      v112 = sub_1C9945F10();
LABEL_21:
      v113(v112, v139);
LABEL_22:
      (*v97)(v96, v20);
      break;
    default:
      HIBYTE(a10) = 0;
      sub_1C99447C4();
      v98 = v169;
      v99 = v170;
      sub_1C9A93988();
      (*(v149 + 8))(v20, v88);
      (*v97)(v98, v99);
      break;
  }

  sub_1C97AEB5C();
}

void sub_1C99417A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v22;
  a20 = v23;
  v159 = v21;
  v25 = v24;
  v156[0] = sub_1C97A2CEC(&qword_1EC3CD8B0, &qword_1C9AB8028);
  sub_1C97AE9C8();
  v150[2] = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v155[1] = v28;
  sub_1C97A2CEC(&qword_1EC3CD8B8, &qword_1C9AB8030);
  sub_1C97AE9C8();
  v150[0] = v30;
  v150[1] = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AC02C();
  v155[0] = v32;
  v33 = sub_1C97A2CEC(&qword_1EC3CD8C0, &qword_1C9AB8038);
  sub_1C97ABF78(v33, &a18);
  v149 = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v154[1] = v36;
  v37 = sub_1C97A2CEC(&qword_1EC3CD8C8, &qword_1C9AB8040);
  sub_1C97ABF78(v37, &a16);
  v148 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  sub_1C99460D8(v40);
  v41 = sub_1C97A2CEC(&qword_1EC3CD8D0, &qword_1C9AB8048);
  sub_1C97ABF78(v41, &a14);
  v147 = v42;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97AC02C();
  v153[1] = v44;
  v45 = sub_1C97A2CEC(&qword_1EC3CD8D8, &qword_1C9AB8050);
  sub_1C97ABF78(v45, &a12);
  v146 = v46;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AC02C();
  v153[0] = v48;
  v49 = sub_1C97A2CEC(&qword_1EC3CD8E0, &qword_1C9AB8058);
  sub_1C97ABF78(v49, &a10);
  v145 = v50;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  sub_1C994609C(v52);
  v53 = sub_1C97A2CEC(&qword_1EC3CD8E8, &qword_1C9AB8060);
  sub_1C97ABF78(v53, &v160);
  v144 = v54;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C97AC02C();
  v152[0] = v56;
  v57 = sub_1C97A2CEC(&qword_1EC3CD8F0, &qword_1C9AB8068);
  sub_1C97ABF78(v57, &v158);
  v143 = v58;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C97AC02C();
  v150[4] = v60;
  v61 = sub_1C97A2CEC(&qword_1EC3CD8F8, &qword_1C9AB8070);
  sub_1C97ABF78(v61, v157);
  v142 = v62;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C97AC02C();
  v157[1] = v64;
  v65 = sub_1C97A2CEC(&qword_1EC3CD900, &qword_1C9AB8078);
  sub_1C97ABF78(v65, v156);
  v141 = v66;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C97AC02C();
  v157[0] = v68;
  v69 = sub_1C97A2CEC(&qword_1EC3CD908, &qword_1C9AB8080);
  sub_1C97ABF78(v69, v155);
  v140 = v70;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C97AC02C();
  v151[1] = v72;
  v73 = sub_1C97A2CEC(&qword_1EC3CD910, &qword_1C9AB8088);
  sub_1C97ABF78(v73, v154);
  v139 = v74;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C97AC02C();
  sub_1C99460B4(v76);
  v77 = sub_1C97A2CEC(&qword_1EC3CD918, &qword_1C9AB8090);
  sub_1C97ABF78(v77, v153);
  v138 = v78;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C97AC02C();
  v156[1] = v80;
  v81 = sub_1C97A2CEC(&qword_1EC3CD920, &qword_1C9AB8098);
  sub_1C97ABF78(v81, v152);
  v137 = v82;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C97AC02C();
  v150[3] = v84;
  v85 = sub_1C97A2CEC(&qword_1EC3CD928, &qword_1C9AB80A0);
  sub_1C97ABF78(v85, v151);
  v136 = v86;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v128 - v88;
  v90 = sub_1C97A2CEC(&qword_1EC3CD930, &qword_1C9AB80A8);
  sub_1C97AE9C8();
  v135 = v91;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v92);
  sub_1C9945F4C();
  v93 = sub_1C97A2CEC(&qword_1EC3CD938, &qword_1C9AB80B0);
  sub_1C97AE9C8();
  v95 = v94;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C97AEA4C();
  v97 = v25[3];
  v158 = v25;
  sub_1C97A5A8C(v25, v97);
  sub_1C9944230();
  v98 = v159;
  sub_1C9A93DB8();
  if (v98)
  {
    goto LABEL_9;
  }

  v133 = v20;
  v132 = v90;
  v134 = v89;
  v159 = v95;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v100 == v99 >> 1)
  {
LABEL_8:
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v118 = v117;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v118 = &type metadata for SoundRecognition.DetectorIdentifier;
    v119 = sub_1C9A93868();
    sub_1C98994EC(v119);
    sub_1C97AEB3C();
    (*(v120 + 104))(v118);
    swift_willThrow();
    swift_unknownObjectRelease();
    v121 = sub_1C9945FE4();
    v122(v121, v93);
LABEL_9:
    sub_1C97A592C(v158);
LABEL_10:
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  v131 = v93;
  v129 = 0;
  if (v104 < (v103 >> 1))
  {
    v105 = *(v102 + v101);
    v106 = sub_1C98EE520();
    v108 = v107;
    v110 = v109;
    swift_unknownObjectRelease();
    v130 = v106;
    if (v108 == v110 >> 1)
    {
      v111 = v129;
      v112 = v131;
      v113 = v156[0];
      switch(v105)
      {
        case 1:
          sub_1C97FB3CC();
          sub_1C9944770();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.DistressedBabyCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = v151;
          goto LABEL_30;
        case 2:
          HIBYTE(a10) = 2;
          sub_1C994471C();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.BeepCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = v152;
          goto LABEL_30;
        case 3:
          HIBYTE(a10) = 3;
          sub_1C99446C8();
          sub_1C9A93858();
          if (v111)
          {
            goto LABEL_29;
          }

          sub_1C9945F94();
          v114 = sub_1C99460CC();
          v116 = v153;
          goto LABEL_30;
        case 4:
          HIBYTE(a10) = 4;
          sub_1C9944674();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.CarHornCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = v154;
          goto LABEL_30;
        case 5:
          sub_1C9946090();
          sub_1C9944620();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.CatMeowCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = v155;
          goto LABEL_30;
        case 6:
          HIBYTE(a10) = 6;
          sub_1C99445CC();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.CoughCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = v156;
          goto LABEL_30;
        case 7:
          HIBYTE(a10) = 7;
          sub_1C9944578();
          sub_1C9A93858();
          if (v111)
          {
LABEL_29:
            v124 = sub_1C9945FE4();
            v125(v124, v112);
            sub_1C9945F94();
            goto LABEL_9;
          }

          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = v157;
LABEL_30:
          v123 = *(v116 - 32);
LABEL_31:
          v115(v114, v123);
          v126 = sub_1C9945FE4();
          v127(v126, v112);
          sub_1C97A592C(v158);
          break;
        case 8:
          HIBYTE(a10) = 8;
          sub_1C9944524();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.DogBarkCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = &v158;
          goto LABEL_30;
        case 9:
          HIBYTE(a10) = 9;
          sub_1C99444D0();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.DoorBellCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = &v160;
          goto LABEL_30;
        case 10:
          HIBYTE(a10) = 10;
          sub_1C994447C();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.DoorKnockCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = &a10;
          goto LABEL_30;
        case 11:
          HIBYTE(a10) = 11;
          sub_1C9944428();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.FireAlarmCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = &a12;
          goto LABEL_30;
        case 12:
          HIBYTE(a10) = 12;
          sub_1C99443D4();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.GlassBreakingCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = &a14;
          goto LABEL_30;
        case 13:
          HIBYTE(a10) = 13;
          sub_1C9944380();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.KettleWhistlingCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = &a16;
          goto LABEL_30;
        case 14:
          HIBYTE(a10) = 14;
          sub_1C994432C();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.ShoutCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = &a18;
          goto LABEL_30;
        case 15:
          HIBYTE(a10) = 15;
          sub_1C99442D8();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.SirenAlarmCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945F04();
          goto LABEL_31;
        case 16:
          HIBYTE(a10) = 16;
          sub_1C9944284();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.WaterRunningCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945F04();
          v123 = v113;
          goto LABEL_31;
        default:
          HIBYTE(a10) = 0;
          sub_1C99447C4();
          sub_1C9945E70(&type metadata for SoundRecognition.DetectorIdentifier.SmokeAlarmCodingKeys, &a10 + 7);
          sub_1C9945F94();
          v114 = sub_1C9945E3C();
          v116 = v150;
          goto LABEL_30;
      }

      goto LABEL_10;
    }

    v93 = v131;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C9942688(uint64_t a1)
{
  v2 = sub_1C994471C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99426C4(uint64_t a1)
{
  v2 = sub_1C994471C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942700(uint64_t a1)
{
  v2 = sub_1C99446C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C994273C(uint64_t a1)
{
  v2 = sub_1C99446C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942778(uint64_t a1)
{
  v2 = sub_1C9944674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99427B4(uint64_t a1)
{
  v2 = sub_1C9944674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99427F0(uint64_t a1)
{
  v2 = sub_1C9944620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C994282C(uint64_t a1)
{
  v2 = sub_1C9944620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9940488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9942898@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C99409AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C99428C0(uint64_t a1)
{
  v2 = sub_1C9944230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99428FC(uint64_t a1)
{
  v2 = sub_1C9944230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942938(uint64_t a1)
{
  v2 = sub_1C99445CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942974(uint64_t a1)
{
  v2 = sub_1C99445CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99429B0(uint64_t a1)
{
  v2 = sub_1C9944578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99429EC(uint64_t a1)
{
  v2 = sub_1C9944578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942A28(uint64_t a1)
{
  v2 = sub_1C9944770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942A64(uint64_t a1)
{
  v2 = sub_1C9944770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942AA0(uint64_t a1)
{
  v2 = sub_1C9944524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942ADC(uint64_t a1)
{
  v2 = sub_1C9944524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942B18(uint64_t a1)
{
  v2 = sub_1C99444D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942B54(uint64_t a1)
{
  v2 = sub_1C99444D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942B90(uint64_t a1)
{
  v2 = sub_1C994447C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942BCC(uint64_t a1)
{
  v2 = sub_1C994447C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942C08(uint64_t a1)
{
  v2 = sub_1C9944428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942C44(uint64_t a1)
{
  v2 = sub_1C9944428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942C80(uint64_t a1)
{
  v2 = sub_1C99443D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942CBC(uint64_t a1)
{
  v2 = sub_1C99443D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942CF8(uint64_t a1)
{
  v2 = sub_1C9944380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942D34(uint64_t a1)
{
  v2 = sub_1C9944380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942D70(uint64_t a1)
{
  v2 = sub_1C994432C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942DAC(uint64_t a1)
{
  v2 = sub_1C994432C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942DE8(uint64_t a1)
{
  v2 = sub_1C99442D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942E24(uint64_t a1)
{
  v2 = sub_1C99442D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942E60(uint64_t a1)
{
  v2 = sub_1C99447C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942E9C(uint64_t a1)
{
  v2 = sub_1C99447C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942ED8(uint64_t a1)
{
  v2 = sub_1C9944284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942F14(uint64_t a1)
{
  v2 = sub_1C9944284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9943064(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a1;
  v8 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v21 - v11;
  v23 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  v22 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = *(v8 + 16);
  v18 = v8;
  LOBYTE(v8) = v24;
  v17(a5, v18);
  v19 = v25;
  sub_1C9943008(v8, v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v19)
  {
    (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    v25 = v14;
    (*(v10 + 8))(v12, AssociatedTypeWitness);
    v14 = sub_1C99432FC();
    (*(v22 + 8))(v16, v25);
  }

  return v14;
}

uint64_t sub_1C99432FC()
{
  sub_1C993F690();
  if (!v1)
  {
    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C97AE67C(&unk_1EC3CE310, &unk_1EC3C9AC0, &unk_1C9AA7DB0, MEMORY[0x1E695BED8]);
    v0 = sub_1C9A91F28();
  }

  return v0;
}

uint64_t sub_1C99433A8@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C99433E8(uint64_t a1)
{
  result = sub_1C98DD814();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9943410(uint64_t a1)
{
  result = sub_1C98DD7C0();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C9943438(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9943474(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_1C99434B0()
{
  v0 = sub_1C9A924A8();
  v2 = v1;
  v3 = sub_1C9A924A8();
  v5 = v4;
  v6 = MGGetProductType();
  sub_1C989B2F8(v6, v10);
  if (v10[6])
  {
    v7 = v10[0];

    sub_1C989ACF0(v7, v11);
    v8 = v13;
    v14 = v12;

    sub_1C97AE434(&v14, &qword_1EC3C7DB0, &unk_1C9AB2780);
  }

  else
  {
    v8 = 0;
  }

  qword_1EC3D32D0 = v0;
  *algn_1EC3D32D8 = v2;
  qword_1EC3D32E0 = v3;
  unk_1EC3D32E8 = v5;
  qword_1EC3D32F0 = 0;
  unk_1EC3D32F8 = v8;
  *&result = 16843008;
  dword_1EC3D3300 = 16843008;
  word_1EC3D3304 = 0;
  qword_1EC3D3308 = 0;
  byte_1EC3D3310 = 1;
  return result;
}

uint64_t sub_1C99435D0()
{
  if (qword_1EC3C5DF0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EC3D32D0, 0x41uLL);
  memcpy(&unk_1EC3D3318, &qword_1EC3D32D0, 0x41uLL);
  return sub_1C97A6264(__dst, &v1);
}

uint64_t sub_1C994365C()
{
  if (qword_1EC3C5DF8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EC3D3318, 0x41uLL);
  memcpy(&unk_1EC3D3360, &unk_1EC3D3318, 0x41uLL);
  return sub_1C97A6264(__dst, &v1);
}

uint64_t sub_1C994372C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CB4F0, &unk_1C9AB7970);
  result = sub_1C98BFDE4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for SoundRecognition.Session(uint64_t a1)
{
  result = qword_1EC3CD790;
  if (!qword_1EC3CD790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C99437EC()
{
  result = qword_1EC3CD5F8;
  if (!qword_1EC3CD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD5F8);
  }

  return result;
}

unint64_t sub_1C9943854()
{
  result = qword_1EC3CD640;
  if (!qword_1EC3CD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD640);
  }

  return result;
}

unint64_t sub_1C9943914()
{
  result = qword_1EC3CD710;
  if (!qword_1EC3CD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD710);
  }

  return result;
}

unint64_t sub_1C9943968()
{
  result = qword_1EC3CD718;
  if (!qword_1EC3CD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD718);
  }

  return result;
}

unint64_t sub_1C99439BC()
{
  result = qword_1EC3CD720;
  if (!qword_1EC3CD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD720);
  }

  return result;
}

void sub_1C9943AB0(uint64_t a1)
{
  sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    sub_1C9943B34(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C9943B34(uint64_t a1)
{
  if (!qword_1EC3CD7A0)
  {
    sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
    v1 = sub_1C9A91DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC3CD7A0);
    }
  }
}

_BYTE *sub_1C9943BB8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9943C8C()
{
  result = qword_1EC3CD7B0;
  if (!qword_1EC3CD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7B0);
  }

  return result;
}

unint64_t sub_1C9943D28()
{
  result = qword_1EC3CD7C8;
  if (!qword_1EC3CD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7C8);
  }

  return result;
}

unint64_t sub_1C9943D80()
{
  result = qword_1EC3CD7D0;
  if (!qword_1EC3CD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7D0);
  }

  return result;
}

unint64_t sub_1C9943DD8()
{
  result = qword_1EC3CD7D8;
  if (!qword_1EC3CD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7D8);
  }

  return result;
}

unint64_t sub_1C9943E30()
{
  result = qword_1EC3CD7E0;
  if (!qword_1EC3CD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7E0);
  }

  return result;
}

unint64_t sub_1C9943E88()
{
  result = qword_1EC3CD7E8;
  if (!qword_1EC3CD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7E8);
  }

  return result;
}

unint64_t sub_1C9943EE0()
{
  result = qword_1EC3CD7F0;
  if (!qword_1EC3CD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7F0);
  }

  return result;
}

unint64_t sub_1C9943F38()
{
  result = qword_1EC3CD7F8;
  if (!qword_1EC3CD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7F8);
  }

  return result;
}

unint64_t sub_1C9943F90()
{
  result = qword_1EC3CD800;
  if (!qword_1EC3CD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD800);
  }

  return result;
}

unint64_t sub_1C9943FE4()
{
  result = qword_1EC3CD840;
  if (!qword_1EC3CD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD840);
  }

  return result;
}

unint64_t sub_1C9944038()
{
  result = qword_1EC3CD848;
  if (!qword_1EC3CD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD848);
  }

  return result;
}

unint64_t sub_1C994408C()
{
  result = qword_1EC3CD850;
  if (!qword_1EC3CD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD850);
  }

  return result;
}

unint64_t sub_1C99440E0()
{
  result = qword_1EC3CD858;
  if (!qword_1EC3CD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD858);
  }

  return result;
}

unint64_t sub_1C9944134()
{
  result = qword_1EC3CD860;
  if (!qword_1EC3CD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD860);
  }

  return result;
}

unint64_t sub_1C9944188()
{
  result = qword_1EC3CD868;
  if (!qword_1EC3CD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD868);
  }

  return result;
}

unint64_t sub_1C99441DC()
{
  result = qword_1EC3CD870;
  if (!qword_1EC3CD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD870);
  }

  return result;
}

unint64_t sub_1C9944230()
{
  result = qword_1EC3CD940;
  if (!qword_1EC3CD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD940);
  }

  return result;
}

unint64_t sub_1C9944284()
{
  result = qword_1EC3CD948;
  if (!qword_1EC3CD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD948);
  }

  return result;
}

unint64_t sub_1C99442D8()
{
  result = qword_1EC3CD950;
  if (!qword_1EC3CD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD950);
  }

  return result;
}

unint64_t sub_1C994432C()
{
  result = qword_1EC3CD958;
  if (!qword_1EC3CD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD958);
  }

  return result;
}

unint64_t sub_1C9944380()
{
  result = qword_1EC3CD960;
  if (!qword_1EC3CD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD960);
  }

  return result;
}

unint64_t sub_1C99443D4()
{
  result = qword_1EC3CD968;
  if (!qword_1EC3CD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD968);
  }

  return result;
}

unint64_t sub_1C9944428()
{
  result = qword_1EC3CD970;
  if (!qword_1EC3CD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD970);
  }

  return result;
}

unint64_t sub_1C994447C()
{
  result = qword_1EC3CD978;
  if (!qword_1EC3CD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD978);
  }

  return result;
}

unint64_t sub_1C99444D0()
{
  result = qword_1EC3CD980;
  if (!qword_1EC3CD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD980);
  }

  return result;
}

unint64_t sub_1C9944524()
{
  result = qword_1EC3CD988;
  if (!qword_1EC3CD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD988);
  }

  return result;
}

unint64_t sub_1C9944578()
{
  result = qword_1EC3CD990;
  if (!qword_1EC3CD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD990);
  }

  return result;
}

unint64_t sub_1C99445CC()
{
  result = qword_1EC3CD998;
  if (!qword_1EC3CD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD998);
  }

  return result;
}

unint64_t sub_1C9944620()
{
  result = qword_1EC3CD9A0;
  if (!qword_1EC3CD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9A0);
  }

  return result;
}

unint64_t sub_1C9944674()
{
  result = qword_1EC3CD9A8;
  if (!qword_1EC3CD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9A8);
  }

  return result;
}

unint64_t sub_1C99446C8()
{
  result = qword_1EC3CD9B0;
  if (!qword_1EC3CD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9B0);
  }

  return result;
}

unint64_t sub_1C994471C()
{
  result = qword_1EC3CD9B8;
  if (!qword_1EC3CD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9B8);
  }

  return result;
}

unint64_t sub_1C9944770()
{
  result = qword_1EC3CD9C0;
  if (!qword_1EC3CD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9C0);
  }

  return result;
}

unint64_t sub_1C99447C4()
{
  result = qword_1EC3CD9C8;
  if (!qword_1EC3CD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9C8);
  }

  return result;
}

uint64_t sub_1C9944818(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 17);
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

      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 17);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 17);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C97BE3EC(v8);
}

_BYTE *sub_1C994489C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 16);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9944A78(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9944BA8()
{
  result = qword_1EC3CDA60;
  if (!qword_1EC3CDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA60);
  }

  return result;
}

unint64_t sub_1C9944C00()
{
  result = qword_1EC3CDA68;
  if (!qword_1EC3CDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA68);
  }

  return result;
}

unint64_t sub_1C9944C58()
{
  result = qword_1EC3CDA70;
  if (!qword_1EC3CDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA70);
  }

  return result;
}

unint64_t sub_1C9944CB0()
{
  result = qword_1EC3CDA78;
  if (!qword_1EC3CDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA78);
  }

  return result;
}

unint64_t sub_1C9944D08()
{
  result = qword_1EC3CDA80;
  if (!qword_1EC3CDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA80);
  }

  return result;
}

unint64_t sub_1C9944D60()
{
  result = qword_1EC3CDA88;
  if (!qword_1EC3CDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA88);
  }

  return result;
}

unint64_t sub_1C9944DB8()
{
  result = qword_1EC3CDA90;
  if (!qword_1EC3CDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA90);
  }

  return result;
}

unint64_t sub_1C9944E10()
{
  result = qword_1EC3CDA98;
  if (!qword_1EC3CDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA98);
  }

  return result;
}

unint64_t sub_1C9944E68()
{
  result = qword_1EC3CDAA0;
  if (!qword_1EC3CDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAA0);
  }

  return result;
}

unint64_t sub_1C9944EC0()
{
  result = qword_1EC3CDAA8;
  if (!qword_1EC3CDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAA8);
  }

  return result;
}

unint64_t sub_1C9944F18()
{
  result = qword_1EC3CDAB0;
  if (!qword_1EC3CDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAB0);
  }

  return result;
}

unint64_t sub_1C9944F70()
{
  result = qword_1EC3CDAB8;
  if (!qword_1EC3CDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAB8);
  }

  return result;
}

unint64_t sub_1C9944FC8()
{
  result = qword_1EC3CDAC0;
  if (!qword_1EC3CDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAC0);
  }

  return result;
}

unint64_t sub_1C9945020()
{
  result = qword_1EC3CDAC8;
  if (!qword_1EC3CDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAC8);
  }

  return result;
}

unint64_t sub_1C9945078()
{
  result = qword_1EC3CDAD0;
  if (!qword_1EC3CDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAD0);
  }

  return result;
}

unint64_t sub_1C99450D0()
{
  result = qword_1EC3CDAD8;
  if (!qword_1EC3CDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAD8);
  }

  return result;
}

unint64_t sub_1C9945128()
{
  result = qword_1EC3CDAE0;
  if (!qword_1EC3CDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAE0);
  }

  return result;
}

unint64_t sub_1C9945180()
{
  result = qword_1EC3CDAE8;
  if (!qword_1EC3CDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAE8);
  }

  return result;
}

unint64_t sub_1C99451D8()
{
  result = qword_1EC3CDAF0;
  if (!qword_1EC3CDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAF0);
  }

  return result;
}

unint64_t sub_1C9945230()
{
  result = qword_1EC3CDAF8;
  if (!qword_1EC3CDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAF8);
  }

  return result;
}

unint64_t sub_1C9945288()
{
  result = qword_1EC3CDB00;
  if (!qword_1EC3CDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB00);
  }

  return result;
}

unint64_t sub_1C99452E0()
{
  result = qword_1EC3CDB08;
  if (!qword_1EC3CDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB08);
  }

  return result;
}

unint64_t sub_1C9945338()
{
  result = qword_1EC3CDB10;
  if (!qword_1EC3CDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB10);
  }

  return result;
}

unint64_t sub_1C9945390()
{
  result = qword_1EC3CDB18;
  if (!qword_1EC3CDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB18);
  }

  return result;
}

unint64_t sub_1C99453E8()
{
  result = qword_1EC3CDB20;
  if (!qword_1EC3CDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB20);
  }

  return result;
}

unint64_t sub_1C9945440()
{
  result = qword_1EC3CDB28;
  if (!qword_1EC3CDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB28);
  }

  return result;
}

unint64_t sub_1C9945498()
{
  result = qword_1EC3CDB30;
  if (!qword_1EC3CDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB30);
  }

  return result;
}

unint64_t sub_1C99454F0()
{
  result = qword_1EC3CDB38;
  if (!qword_1EC3CDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB38);
  }

  return result;
}

unint64_t sub_1C9945548()
{
  result = qword_1EC3CDB40;
  if (!qword_1EC3CDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB40);
  }

  return result;
}

unint64_t sub_1C99455A0()
{
  result = qword_1EC3CDB48;
  if (!qword_1EC3CDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB48);
  }

  return result;
}

unint64_t sub_1C99455F8()
{
  result = qword_1EC3CDB50;
  if (!qword_1EC3CDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB50);
  }

  return result;
}

unint64_t sub_1C9945650()
{
  result = qword_1EC3CDB58;
  if (!qword_1EC3CDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB58);
  }

  return result;
}

unint64_t sub_1C99456A8()
{
  result = qword_1EC3CDB60;
  if (!qword_1EC3CDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB60);
  }

  return result;
}

unint64_t sub_1C9945700()
{
  result = qword_1EC3CDB68;
  if (!qword_1EC3CDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB68);
  }

  return result;
}

unint64_t sub_1C9945758()
{
  result = qword_1EC3CDB70;
  if (!qword_1EC3CDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB70);
  }

  return result;
}

unint64_t sub_1C99457B0()
{
  result = qword_1EC3CDB78;
  if (!qword_1EC3CDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB78);
  }

  return result;
}

unint64_t sub_1C9945808()
{
  result = qword_1EC3CDB80;
  if (!qword_1EC3CDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB80);
  }

  return result;
}

unint64_t sub_1C9945860()
{
  result = qword_1EC3CDB88;
  if (!qword_1EC3CDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB88);
  }

  return result;
}

unint64_t sub_1C99458B8()
{
  result = qword_1EC3CDB90;
  if (!qword_1EC3CDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB90);
  }

  return result;
}

unint64_t sub_1C9945910()
{
  result = qword_1EC3CDB98;
  if (!qword_1EC3CDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB98);
  }

  return result;
}

unint64_t sub_1C9945968()
{
  result = qword_1EC3CDBA0;
  if (!qword_1EC3CDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBA0);
  }

  return result;
}

unint64_t sub_1C99459C0()
{
  result = qword_1EC3CDBA8;
  if (!qword_1EC3CDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBA8);
  }

  return result;
}

unint64_t sub_1C9945A18()
{
  result = qword_1EC3CDBB0;
  if (!qword_1EC3CDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBB0);
  }

  return result;
}

unint64_t sub_1C9945A70()
{
  result = qword_1EC3CDBB8;
  if (!qword_1EC3CDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBB8);
  }

  return result;
}

unint64_t sub_1C9945AC8()
{
  result = qword_1EC3CDBC0;
  if (!qword_1EC3CDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBC0);
  }

  return result;
}

unint64_t sub_1C9945B20()
{
  result = qword_1EC3CDBC8;
  if (!qword_1EC3CDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBC8);
  }

  return result;
}

unint64_t sub_1C9945B78()
{
  result = qword_1EC3CDBD0;
  if (!qword_1EC3CDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBD0);
  }

  return result;
}

unint64_t sub_1C9945BD0()
{
  result = qword_1EC3CDBD8;
  if (!qword_1EC3CDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBD8);
  }

  return result;
}

unint64_t sub_1C9945C28()
{
  result = qword_1EC3CDBE0;
  if (!qword_1EC3CDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBE0);
  }

  return result;
}

unint64_t sub_1C9945C80()
{
  result = qword_1EC3CDBE8;
  if (!qword_1EC3CDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBE8);
  }

  return result;
}

unint64_t sub_1C9945CD8()
{
  result = qword_1EC3CDBF0;
  if (!qword_1EC3CDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBF0);
  }

  return result;
}

unint64_t sub_1C9945D30()
{
  result = qword_1EC3CDBF8;
  if (!qword_1EC3CDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBF8);
  }

  return result;
}

uint64_t sub_1C9945DE8()
{

  return sub_1C9A91F48();
}

uint64_t sub_1C9945E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

uint64_t sub_1C9945E70(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C9945E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

uint64_t sub_1C9945EC0(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C9945F3C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1C9945F94()
{

  return swift_unknownObjectRelease();
}

void sub_1C9945FAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1C9945FD8(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1C9945FF4()
{
}

uint64_t sub_1C994600C()
{
}

uint64_t sub_1C9946024(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C97AE67C(a1, v4, v5, a4);
}

uint64_t sub_1C994603C()
{

  return sub_1C97A2CEC(v0, v1);
}

void sub_1C99460F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1C9946110()
{
}

void sub_1C994612C(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C97E7380(v3, v4, v5, v6);
    v3 = v9;
  }

  v7 = *(v3 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1C979AFE4((v3 + 24 * a1 + 56), v7 - 1 - a1, (v3 + 24 * a1 + 32));
    *(v3 + 16) = v8;
    *v1 = v3;
  }
}

void sub_1C99461C0(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C97E7414(v5, v6, v7, v8);
    v5 = v11;
  }

  v9 = *(v5 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v5 + 160 * a1;
    memcpy(a2, (v10 + 32), 0xA0uLL);
    sub_1C97E71E8((v10 + 192), v9 - 1 - a1, (v10 + 32));
    *(v5 + 16) = v9 - 1;
    *v2 = v5;
  }
}

void sub_1C9946258(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C97E742C(v3, v4, v5, v6);
    v3 = v9;
  }

  v7 = *(v3 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1C978D31C((v3 + 16 * a1 + 48), v7 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v8;
    *v1 = v3;
  }
}

uint64_t sub_1C99462E0(char a1, const void *a2)
{
  v3 = v2;
  v26 = sub_1C9A91748();
  sub_1C97AE9C8();
  v24 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v23 = v8 - v7;
  sub_1C9A93008();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEAD8();
  v10 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C97AEAD8();
  v21 = sub_1C9A93018();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  memcpy(__dst, a2, sizeof(__dst));
  v15 = v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_recordingCancellable;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer) = 0;
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession) = 0;
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning) = 0;
  sub_1C9921A0C(0.0);
  v20 = *MEMORY[0x1E69E8098];
  v22 = *(v11 + 104);
  v22(v14);
  sub_1C9A92148();
  sub_1C9949E98(&qword_1EC3C56C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C97A2CEC(&unk_1EC3CDC60, &unk_1C9AA0040);
  sub_1C994A05C();
  sub_1C97AE67C(v16, v17, &unk_1C9AA0040, v18);
  sub_1C994A0C8();
  sub_1C9A93428();
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue) = sub_1C994A0E4(0xD00000000000002BLL, 0x80000001C9ADA000);
  (v22)(v14, v20, v21);
  sub_1C9A92148();
  sub_1C994A0C8();
  sub_1C9A93428();
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_analysisQueue) = sub_1C994A0E4(0xD000000000000034, 0x80000001C9ADA030);
  memcpy((v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration), __dst, 0x41uLL);
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_allowSuppressionOfMicrophoneUsageIndicator) = a1;
  sub_1C9A91738();
  (*(v24 + 32))(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_id, v23, v26);
  return v3;
}

uint64_t sub_1C99466AC(void *a1, void *a2)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v4 = sub_1C9A91B58();
  sub_1C97BFF6C(v4, qword_1EC3D3108);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = sub_1C9A91B38();
  v6 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v7 = 136315650;
    sub_1C9A91748();
    sub_1C994A078();
    sub_1C9949E98(v8, v9, MEMORY[0x1E69695E0]);
    v10 = sub_1C9A93A98();
    v12 = sub_1C9849140(v10, v11, &v26);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = [a1 description];
    v14 = sub_1C9A924A8();
    v16 = v15;

    v17 = sub_1C9849140(v14, v16, &v26);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2080;
    v18 = [a2 description];
    v19 = sub_1C9A924A8();
    v21 = v20;

    v22 = sub_1C9849140(v19, v21, &v26);

    *(v7 + 24) = v22;
    _os_log_impl(&dword_1C9788000, v5, v6, "(SNSystemAudioAnalyzerLocal: %s) addRequest:%s withObserver:%s", v7, 0x20u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  MEMORY[0x1EEE9AC00](v23);
  return sub_1C9A93028();
}

void sub_1C9946988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *MEMORY[0x1E69E9840];
  v6 = sub_1C9A92128();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C9A92158();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
  swift_beginAccess();
  v11 = *&v2[v10];
  v12 = (v11 + 32);
  v13 = *(v11 + 16) + 1;
  while (--v13)
  {
    v14 = *v12;
    v12 += 2;
    if (v14 == a1)
    {
      sub_1C9947BB0(a1);
      break;
    }
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = nullsub_1;
  v18[3] = 0;
  v18[4] = sub_1C9949E18;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = sub_1C9949E10;
  v19[3] = v15;
  v19[4] = sub_1C9949E20;
  v19[5] = v17;
  v21 = objc_allocWithZone(type metadata accessor for SNResultsForwarder(v20));
  swift_unknownObjectRetain();

  v22 = sub_1C9904090(sub_1C9949E74, v19, sub_1C9949E28, v18);

  v23 = *&v3[OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer];
  if (!v23)
  {
    goto LABEL_8;
  }

  aBlock[0] = 0;
  v24 = v23;
  if ([v24 addRequest:a1 withObserver:v22 error:aBlock])
  {
    v25 = aBlock[0];

LABEL_8:
    sub_1C97A2CEC(&qword_1EC3C76E8, &unk_1C9AB9520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = a1;
    *(inited + 40) = v22;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v27 = v22;
    sub_1C98D06E8(inited);
    swift_endAccess();
    aBlock[4] = sub_1C994A034;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C98E5C5C;
    aBlock[3] = &unk_1F4942220;
    v28 = _Block_copy(aBlock);

    sub_1C9A92148();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C9949E98(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
    sub_1C97AE67C(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20, MEMORY[0x1E69E6328]);
    v29 = v34;
    v30 = v36;
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v9, v29, v28);
    _Block_release(v28);

    (*(v35 + 8))(v29, v30);
    (*(v32 + 8))(v9, v33);

    return;
  }

  v31 = aBlock[0];
  sub_1C9A913C8();

  swift_willThrow();
}

void sub_1C9946F10()
{
  v1 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    if ((*(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning) & 1) == 0)
    {
      sub_1C9946F7C(v2);
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning))
  {
    sub_1C9947B5C();
  }
}

void sub_1C9946F7C(double a1)
{
  v2 = v1;
  v87 = *MEMORY[0x1E69E9840];
  if (qword_1EC3C57B0 != -1)
  {
    swift_once();
  }

  v3 = byte_1EC3D3480;
  if (byte_1EC3D3480 == 1 && ((*(v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration + 49) & 1) != 0 || *(v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration + 48) == 1) && (*(v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_allowSuppressionOfMicrophoneUsageIndicator) & 1) == 0)
  {
    type metadata accessor for SNError(a1);
    v41 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000035, 0x80000001C9ADA0A0);
    swift_willThrow();
  }

  else
  {
    v4 = (v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration);
    memcpy(__dst, (v2 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration), 0x41uLL);
    memcpy(__src, v4, 0x41uLL);
    sub_1C97A6264(__dst, v83);
    sub_1C9A0B120(v83, __src);
    memcpy(v85, __src, 0x41uLL);
    sub_1C97E8084(v85);
    memcpy(v86, v83, 0x41uLL);
    memcpy(v83, v86, sizeof(v83));
    sub_1C9A0B2B4(__src, v83);
    v6 = v5;
    v8 = v7;
    v80 = __src[0].n128_u64[0];
    v9 = [objc_allocWithZone(SNAudioStreamAnalyzer) initWithFormat_];
    v10 = *(v2 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
    *(v2 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer) = v9;
    v11 = v9;

    v12 = *(v2 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession);
    *(v2 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession) = v6;
    v13 = v6;

    if (v4[48])
    {
LABEL_10:
      v74 = v8;
      v75 = v3;
      v76 = v13;
      v15 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
      swift_beginAccess();
      v78 = v2;
      v16 = *(*(v2 + v15) + 16);
      if (v16)
      {
        v17 = ( + 40);
        do
        {
          v19 = *(v17 - 1);
          v18 = *v17;
          *v83 = 0;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ([v11 addRequest:v19 withObserver:v18 error:v83])
          {
            v20 = *v83;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            v21 = v11;
            v22 = *v83;
            v23 = sub_1C9A913C8();

            swift_willThrow();
            if ([v18 respondsToSelector_])
            {
              swift_unknownObjectRetain();
              v24 = sub_1C9A913B8();
              [v18 request:v19 didFailWithError:v24];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            v11 = v21;
          }

          v17 += 2;
          --v16;
        }

        while (v16);
      }

      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v25 = sub_1C9A91B58();
      sub_1C97BFF6C(v25, qword_1EC3D3108);
      v26 = v74;
      sub_1C97A6264(v86, v83);
      v27 = sub_1C9A91B38();
      v28 = sub_1C9A92FC8();

      sub_1C97E8084(v86);
      v77 = v11;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = v26;
        v31 = swift_slowAlloc();
        v81[0] = v31;
        *v29 = 136315394;
        v32 = [v30 description];
        v33 = sub_1C9A924A8();
        v35 = v34;

        v36 = sub_1C9849140(v33, v35, v81);

        *(v29 + 4) = v36;
        *(v29 + 12) = 2080;
        memcpy(v83, v86, sizeof(v83));
        v37 = sub_1C9A924F8();
        v39 = sub_1C9849140(v37, v38, v81);

        *(v29 + 14) = v39;
        _os_log_impl(&dword_1C9788000, v27, v28, "Starting audio input. %s, %s", v29, 0x16u);
        swift_arrayDestroy();
        v40 = v31;
        v26 = v30;
        MEMORY[0x1CCA93280](v40, -1, -1);
        MEMORY[0x1CCA93280](v29, -1, -1);
      }

      else
      {

        sub_1C97E8084(v86);
      }

      v42 = v78;
      v43 = swift_allocObject();
      swift_weakInit();
      if (qword_1EC3C57B8 != -1)
      {
        swift_once();
      }

      if ((v75 & byte_1EC3D3138) == 1)
      {
        v44 = swift_allocObject();
        *(v44 + 16) = 0;
        *(v44 + 24) = 0;
        v45 = swift_allocObject();
        *(v45 + 16) = 0;
        v46 = swift_allocObject();
        v46[2] = sub_1C9948F08;
        v46[3] = 0;
        v46[4] = v44;
        v46[5] = v45;
        v46[6] = v26;
        v46[7] = sub_1C9949F50;
        v46[8] = v43;
        v79 = v26;
        v47 = v26;

        v48 = sub_1C9A91B38();
        v49 = sub_1C9A92FC8();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v83 = v51;
          *v50 = 136315138;
          sub_1C9A91748();
          sub_1C9949E98(&qword_1EC3C5480, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v52 = sub_1C9A93A98();
          v54 = sub_1C9849140(v52, v53, v83);

          *(v50 + 4) = v54;
          _os_log_impl(&dword_1C9788000, v48, v49, "Analyzer capable of injection (%s).", v50, 0xCu);
          sub_1C97A592C(v51);
          MEMORY[0x1CCA93280](v51, -1, -1);
          MEMORY[0x1CCA93280](v50, -1, -1);
        }

        v55 = sub_1C9949F6C;
        v26 = v79;
      }

      else
      {
        swift_retain_n();
        v55 = sub_1C9949F50;
        v46 = v43;
      }

      *v83 = v80;
      swift_allocObject();
      swift_weakInit();
      v56 = swift_allocObject();
      swift_weakInit();
      v57 = swift_allocObject();
      v57[2] = v56;
      v57[3] = v55;
      v57[4] = v46;
      sub_1C97A2CEC(&qword_1EC3CDC70, &unk_1C9ACDD20);
      sub_1C97AE67C(&unk_1EC3CDC78, &qword_1EC3CDC70, &unk_1C9ACDD20, MEMORY[0x1E695BED8]);
      v58 = sub_1C9A91FB8();

      *&v83[24] = sub_1C9A91DE8();
      *&v83[32] = MEMORY[0x1E695BF08];

      *v83 = v58;

      v59 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_recordingCancellable;
      swift_beginAccess();
      sub_1C9949EE0(v83, v42 + v59);
      swift_endAccess();
      *(v42 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning) = 1;
      return;
    }

    *v83 = 0;
    if ([v13 setActive:1 error:v83])
    {
      v14 = *v83;
      goto LABEL_10;
    }

    v60 = *v83;
    sub_1C97E8084(v86);
    v61 = sub_1C9A913C8();

    swift_willThrow();
    type metadata accessor for SNError(v62);
    v63 = sub_1C9A913B8();
    *v83 = 0;
    *&v83[8] = 0xE000000000000000;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD00000000000002DLL, 0x80000001C9ADA070);
    __src[0].n128_u64[0] = v61;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    sub_1C9A93728();
    v41 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, v63, *v83, *&v83[8]);

    swift_willThrow();
  }

  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v64 = sub_1C9A91B58();
  sub_1C97BFF6C(v64, qword_1EC3D3108);
  v65 = v41;
  v66 = sub_1C9A91B38();
  v67 = sub_1C9A92FA8();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    v70 = v41;
    v71 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 4) = v71;
    *v69 = v71;
    _os_log_impl(&dword_1C9788000, v66, v67, "failed to start audio with error %@", v68, 0xCu);
    sub_1C97DA1E0(v69, &unk_1EC3C86A0, &qword_1C9A9F830);
    MEMORY[0x1CCA93280](v69, -1, -1);
    MEMORY[0x1CCA93280](v68, -1, -1);
  }

  v73 = sub_1C9948C6C(v72);
  sub_1C9948CD4(v73);
  sub_1C994896C();
}

void sub_1C9947B5C()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C9949408(v0);

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_1C9947BB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C9A92128();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C9A92158();
  v7 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
  swift_beginAccess();
  v11 = 0;
  v12 = *(v2 + v10);
  v13 = *(v12 + 16);
  v14 = (v12 + 32);
  while (v13 != v11)
  {
    if (*v14 == a1)
    {
      swift_beginAccess();
      sub_1C9946258(v11);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v15 = *(v2 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
      if (v15)
      {
        [v15 removeRequest_];
      }

      break;
    }

    ++v11;
    v14 += 2;
  }

  aBlock[4] = sub_1C994A034;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  aBlock[3] = &unk_1F4942450;
  v16 = _Block_copy(aBlock);

  sub_1C9A92148();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1C9949E98(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C97AE67C(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20, MEMORY[0x1E69E6328]);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v9, v6, v16);
  _Block_release(v16);
  (*(v19 + 8))(v6, v4);
  (*(v7 + 8))(v9, v18);
}

void sub_1C9947F20(void *a1, void *a2, void *a3)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v6 = sub_1C9A91B58();
  sub_1C97BFF6C(v6, qword_1EC3D3108);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = a2;
  oslog = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136315650;
    v12 = [a3 description];
    v13 = sub_1C9A924A8();
    v15 = v14;

    v16 = sub_1C9849140(v13, v15, &v26);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    v17 = [a1 description];
    v18 = sub_1C9A924A8();
    v20 = v19;

    v21 = sub_1C9849140(v18, v20, &v26);

    *(v9 + 14) = v21;
    *(v9 + 22) = 2112;
    if (a2)
    {
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    *(v9 + 24) = v23;
    *v10 = v24;
    _os_log_impl(&dword_1C9788000, oslog, v8, "Observer %s for request %s completed with error: %@", v9, 0x20u);
    sub_1C97DA1E0(v10, &unk_1EC3C86A0, &qword_1C9A9F830);
    MEMORY[0x1CCA93280](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v11, -1, -1);
    MEMORY[0x1CCA93280](v9, -1, -1);
  }
}

uint64_t sub_1C99481B0(void *a1)
{
  v2 = v1;
  v4 = sub_1C9A92128();
  sub_1C97AE9C8();
  v42 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v40 = v8 - v7;
  v41 = sub_1C9A92158();
  sub_1C97AE9C8();
  v39 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  v13 = v12 - v11;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v14 = sub_1C9A91B58();
  sub_1C97BFF6C(v14, qword_1EC3D3108);

  swift_unknownObjectRetain();
  v15 = sub_1C9A91B38();
  v16 = sub_1C9A92FC8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v15, v16))
  {
    v38 = v4;
    v17 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v17 = 136315394;
    sub_1C9A91748();
    sub_1C994A078();
    sub_1C9949E98(v18, v19, MEMORY[0x1E69695E0]);
    v20 = sub_1C9A93A98();
    v22 = sub_1C9849140(v20, v21, aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = [a1 description];
    v24 = sub_1C9A924A8();
    v26 = v25;

    v27 = sub_1C9849140(v24, v26, aBlock);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1C9788000, v15, v16, "(SNSystemAudioAnalyzerLocal:%s) removeRequest:%s", v17, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v4 = v38;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  *(v28 + 24) = a1;
  aBlock[4] = sub_1C9949FE8;
  aBlock[5] = v28;
  sub_1C994A090();
  sub_1C97F083C(COERCE_DOUBLE(1107296256));
  aBlock[2] = v29;
  aBlock[3] = &unk_1F49424A0;
  v30 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1C9A92148();
  sub_1C994A0B0();
  sub_1C9949E98(v31, v32, MEMORY[0x1E69E7F70]);
  sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C994A05C();
  sub_1C97AE67C(v33, v34, &qword_1C9A9FF20, v35);
  sub_1C9A93428();
  v36 = sub_1C994A108();
  MEMORY[0x1CCA90CE0](v36);
  _Block_release(v30);
  (*(v42 + 8))(v40, v4);
  (*(v39 + 8))(v13, v41);
}

uint64_t sub_1C99485E4()
{
  v1 = sub_1C9A92128();
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v7 = v6 - v5;
  sub_1C9A92158();
  sub_1C97AE9C8();
  v33 = v9;
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v12 = v11 - v10;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v13 = sub_1C9A91B58();
  sub_1C97BFF6C(v13, qword_1EC3D3108);

  v14 = sub_1C9A91B38();
  v15 = sub_1C9A92FC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v3;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    sub_1C9A91748();
    sub_1C994A078();
    sub_1C9949E98(v18, v19, MEMORY[0x1E69695E0]);
    v20 = sub_1C9A93A98();
    v22 = sub_1C9849140(v20, v21, aBlock);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1C9788000, v14, v15, "(SNSystemAudioAnalyzerLocal:%s) removeAllRequests", v16, 0xCu);
    sub_1C97A592C(v17);
    v3 = v32;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  aBlock[4] = sub_1C994A010;
  aBlock[5] = v0;
  sub_1C994A090();
  sub_1C97F083C(COERCE_DOUBLE(1107296256));
  aBlock[2] = v23;
  aBlock[3] = &unk_1F49424C8;
  v24 = _Block_copy(aBlock);

  sub_1C9A92148();
  sub_1C994A0B0();
  sub_1C9949E98(v25, v26, MEMORY[0x1E69E7F70]);
  sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C994A05C();
  sub_1C97AE67C(v27, v28, &qword_1C9A9FF20, v29);
  sub_1C9A93428();
  v30 = sub_1C994A108();
  MEMORY[0x1CCA90CE0](v30);
  _Block_release(v24);
  (*(v3 + 8))(v7, v1);
  (*(v33 + 8))(v12, v34);
}

uint64_t sub_1C994896C()
{
  v1 = sub_1C9A92128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C9A92158();
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
  swift_beginAccess();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + v8) = MEMORY[0x1E69E7CC0];

  v10 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
  if (v10)
  {
    [v10 removeAllRequests];
  }

  v13 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue);
  aBlock[4] = sub_1C9949FE4;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  aBlock[3] = &unk_1F4942428;
  v11 = _Block_copy(aBlock);

  sub_1C9A92148();
  v15 = v9;
  sub_1C9949E98(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C97AE67C(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20, MEMORY[0x1E69E6328]);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v7, v4, v11);
  _Block_release(v11);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v14);
}

void sub_1C9948CD4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C97EDFB0();
    sub_1C97ED800(a1, v5, v6, v7, v8, v9, v10, v11, v5, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, vars0, vars8);
  }

  else
  {
    v12 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = *(v13 + 16);

    v15 = 0;
    for (i = (v13 + 40); ; i += 2)
    {
      if (v14 == v15)
      {

        return;
      }

      if (v15 >= *(v13 + 16))
      {
        break;
      }

      v17 = *(i - 1);
      v18 = *i;
      if ([*i respondsToSelector_])
      {
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
        v19 = sub_1C9A913B8();
        [v18 request:v17 didFailWithError:v19];
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
      }

      ++v15;
    }

    __break(1u);
  }
}

void sub_1C9948E54(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
    if (v6)
    {
      v7 = v6;

      [v7 analyzeAudioBuffer:a1 atAudioFramePosition:{objc_msgSend(a2, sel_sampleTime)}];
    }

    else
    {
    }
  }
}

id sub_1C9948F08()
{
  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v1 = sub_1C99B5AFC();

  return v1;
}

uint64_t sub_1C9949000(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C9949FD8;
    *(v5 + 24) = v3;
    aBlock[4] = sub_1C994A038;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C97ECC64;
    aBlock[3] = &unk_1F49423D8;
    v6 = _Block_copy(aBlock);

    dispatch_sync(v4, v6);

    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C994916C()
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  v1 = sub_1C9A91B38();
  v2 = sub_1C9A92FC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C9788000, v1, v2, "SNAudioRecordingQueue interrupted", v3, 2u);
    MEMORY[0x1CCA93280](v3, -1, -1);
  }

  return sub_1C99497A4();
}

uint64_t sub_1C9949258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue);
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = v7;
    v10[5] = v6;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C9949FA0;
    *(v11 + 24) = v10;
    aBlock[4] = sub_1C9949FD0;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C97ECC64;
    aBlock[3] = &unk_1F4942388;
    v12 = _Block_copy(aBlock);
    v13 = v7;
    v14 = v6;

    dispatch_sync(v9, v12);

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C9949408(uint64_t a1)
{
  v2 = v1;
  v25 = *MEMORY[0x1E69E9840];
  v4 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession;
  v5 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession);
  if (!v5)
  {
    goto LABEL_11;
  }

  if ((*(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration + 48) & 1) == 0)
  {
    *&v21 = 0;
    v6 = v5;
    if (![v6 setActive:0 error:&v21])
    {
      v8 = v21;
      v2 = sub_1C9A913C8();

      swift_willThrow();
      if (qword_1EC3C5520 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

    v7 = v21;
  }

  while (1)
  {
    v17 = *(a1 + v4);
    *(a1 + v4) = 0;

LABEL_11:
    v18 = a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_recordingCancellable;
    swift_beginAccess();
    if (*(v18 + 24))
    {
      sub_1C97D9AF8(v18, &v21);
      sub_1C97A5A8C(&v21, *(&v22 + 1));
      sub_1C9A91D38();
      sub_1C97A592C(&v21);
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    swift_beginAccess();
    sub_1C9949EE0(&v21, v18);
    swift_endAccess();
    *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning) = 0;
    v19 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_analysisQueue);
    v23 = j_nullsub_1;
    v24 = 0;
    *&v21 = MEMORY[0x1E69E9820];
    *(&v21 + 1) = 1107296256;
    *&v22 = sub_1C97ECC64;
    *(&v22 + 1) = &unk_1F4942248;
    v6 = _Block_copy(&v21);

    dispatch_sync(v19, v6);
    _Block_release(v6);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
LABEL_6:
    v9 = sub_1C9A91B58();
    sub_1C97BFF6C(v9, qword_1EC3D3108);
    v10 = v2;
    v11 = sub_1C9A91B38();
    v12 = sub_1C9A92FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1C9788000, v11, v12, "Failed to deactivate AVAudioSession with error %@", v13, 0xCu);
      sub_1C97DA1E0(v14, &unk_1EC3C86A0, &qword_1C9A9F830);
      MEMORY[0x1CCA93280](v14, -1, -1);
      MEMORY[0x1CCA93280](v13, -1, -1);
    }

    else
    {
    }

    v2 = 0;
  }

  v20 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
  *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer) = 0;
}

uint64_t sub_1C99497A4()
{
  v1 = sub_1C9A92128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C9A92158();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue);
  aBlock[4] = sub_1C9949FDC;
  v14 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  aBlock[3] = &unk_1F4942400;
  v8 = _Block_copy(aBlock);

  sub_1C9A92148();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C9949E98(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C97AE67C(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20, MEMORY[0x1E69E6328]);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_1C9949A60(double a1)
{
  type metadata accessor for SNError(a1);
  v1 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 6, 0, 0xD000000000000018, 0x80000001C9ADA100);
  sub_1C9948CD4(v1);
  sub_1C994896C();
}

uint64_t sub_1C9949AF8()
{
  v1 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_id;
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v2 + 8))(v0 + v1);

  sub_1C97DA1E0(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_recordingCancellable, &qword_1EC3CC6D0, &qword_1C9AB9530);

  return v0;
}

uint64_t sub_1C9949BF4()
{
  sub_1C9949AF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SNSystemAudioAnalyzerLocal(uint64_t a1)
{
  result = qword_1EC3CDC50;
  if (!qword_1EC3CDC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9949CA0(uint64_t a1)
{
  result = sub_1C9A91748();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9949E34()
{

  return swift_deallocObject();
}

uint64_t sub_1C9949E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C9949E98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C9949EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CC6D0, &qword_1C9AB9530);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C994A0E4(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93048();
}

uint64_t sub_1C994A11C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C9A924A8();
  v4 = v3;
  if (v2 == sub_1C9A924A8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C994AF28(v2);
  }

  return v7 & 1;
}

uint64_t sub_1C994A194(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "oefDecay";
  }

  else
  {
    v4 = "SNVGGishEmbeddingModel";
  }

  if (a2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (a2)
  {
    v6 = "SNVGGishEmbeddingModel";
  }

  else
  {
    v6 = "oefDecay";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C994AF28(v3);
  }

  return v8 & 1;
}

uint64_t sub_1C994A22C(unsigned __int8 a1, char a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 7696483;
    }

    else
    {
      v4 = 0x4E41646E41757063;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE900000000000045;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7105633;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7696483;
    }

    else
    {
      v2 = 0x4E41646E41757063;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE900000000000045;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C994AF28(v4);
  }

  return v8 & 1;
}

id sub_1C994A328(uint64_t a1, double a2)
{
  v4 = v2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  result = (*(v9 + 8))(a1, ObjectType, v9, a2);
  if (!v3)
  {
    if (qword_1EC3C57B8 != -1)
    {
      swift_once();
    }

    if (byte_1EC3D3138 == 1)
    {
      if (qword_1EC3C57B0 != -1)
      {
        swift_once();
      }

      if (byte_1EC3D3480 == 1)
      {
        v11 = *(v9 + 16);
        v12 = sub_1C994AF18();
        v13 = v11(v12, v9);
        v14 = objc_opt_self();
        v27 = sub_1C9A72724(v14, v13);

        if ((v27 & 1) == 0)
        {
          v22 = sub_1C994AF18();
          v23 = v11(v22, v9);
          v24 = objc_allocWithZone(SNTunableDSPGraphHost);
          v25 = sub_1C994AE00(v23);
          v26 = *(v4 + 72);
          *(v4 + 72) = v25;
        }
      }
    }

    v15 = sub_1C994AF18();
    v17 = v16(v15, v7);
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1C994ADE0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C994A9C4;
    aBlock[3] = &unk_1F49425C0;
    v20 = _Block_copy(aBlock);

    aBlock[0] = 0;
    LODWORD(v18) = sub_1C9A77384(v18, v17, v20, aBlock);
    _Block_release(v20);

    if (v18)
    {
      return aBlock[0];
    }

    else
    {
      v21 = aBlock[0];
      sub_1C9A913C8();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C994A644()
{
  if (!*(v0 + 80))
  {
    *(v0 + 80) = 1;
    return (*(v0 + 56))(0);
  }

  return result;
}

uint64_t sub_1C994A680()
{
  if (!*(v0 + 80))
  {
    *(v0 + 80) = 2;
    return (*(v0 + 56))();
  }

  return result;
}

unint64_t sub_1C994A6B8(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_1C994A6E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C994A6B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C994A70C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C994A6C8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C994A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 56) = a3;
  *(v7 + 80) = 0;
  *(v7 + 64) = a4;
  *(v7 + 72) = 0;
  return v7;
}

uint64_t sub_1C994A754(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C994A81C(sub_1C994AEC8, result, a1);
  }

  return result;
}

uint64_t sub_1C994A7CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

uint64_t sub_1C994A81C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 80) - 1 >= 2)
  {
    v5 = (result)();
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    v8 = (*(v6 + 16))(v5, a3, sub_1C994AEE4);
    result = sub_1C97BDEE0();
    if (!result)
    {
LABEL_11:
    }

    v9 = result;
    if (result >= 1)
    {
      v10 = 0;
      v11 = *(v3 + 40);
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1CCA912B0](v10, v8);
        }

        else
        {
          v12 = *(v8 + 8 * v10 + 32);
          swift_unknownObjectRetain();
        }

        ++v10;
        v11(v12);
        swift_unknownObjectRelease();
      }

      while (v9 != v10);
      goto LABEL_11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C994A9C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1C994AA18(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C994AA44(a1, a2, a3, a4, *(a5 + 32));
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1C994AA44(uint64_t a1, int a2, int a3, uint64_t a4, id a5)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a5 clientSampleTimeFromSampleTime:a1 fromBox:a4 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    v9 = v16[0];
    [v8 longLongValue];

    v16[0] = 0;
    v10 = [a5 clientSampleRateWithError_];
    v7 = v16[0];
    if (v10)
    {
      v11 = v10;
      v12 = v16[0];
      v13 = [v11 longLongValue];

      if (v13 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v13 <= 0x7FFFFFFF)
      {
        return sub_1C9A93168();
      }

      __break(1u);
    }
  }

  v15 = v7;
  sub_1C9A913C8();

  return swift_willThrow();
}

uint64_t sub_1C994AB90()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 16))(ObjectType);
}

uint64_t sub_1C994ABE4()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C994AC24()
{
  sub_1C994ABE4();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for SNAnalyzerHost.SNAnalysisState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C994AD5C()
{
  result = qword_1EC3CDC88;
  if (!qword_1EC3CDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDC88);
  }

  return result;
}

uint64_t sub_1C994ADE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C994AE00(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v4 = [v2 initWithGraph:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1C994AF28(uint64_t a1)
{

  return sub_1C9A93B18();
}

uint64_t sub_1C994AF44(double a1)
{
  sub_1C97A8010(a1);
  v4 = *v1;
  v3 = v1[1];
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1C9AB98E8;
  *(v6 + 24) = v5;
  v21 = sub_1C97A2CEC(&qword_1EC3CDCA0, &qword_1C9AB9900);
  v22 = sub_1C994E218(&qword_1EC3CDCA8, &qword_1EC3CDCA0, &qword_1C9AB9900);
  v19 = &unk_1C9AB98F8;
  v20 = v6;

  sub_1C97A8954(v7);
  if (v2)
  {
  }

  else
  {

    sub_1C97A592C(&v19);
    v8 = v1[2];
    v9 = v1[3];
    sub_1C97AA878();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = sub_1C97A2CEC(&qword_1EC3CDCB0, &qword_1C9AB9910);
    v21 = v11;
    v12 = sub_1C994E218(&qword_1EC3CDCB8, &qword_1EC3CDCB0, &qword_1C9AB9910);
    v22 = v12;
    v19 = &unk_1C9AB9908;
    v20 = v10;

    sub_1C97A8954(v13);
    sub_1C97A592C(&v19);
    v15 = v1[4];
    v14 = v1[5];
    sub_1C97AA878();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    v21 = v11;
    v22 = v12;
    v19 = &unk_1C9AB9918;
    v20 = v16;

    sub_1C97A8954(v17);
  }

  return sub_1C97A592C(&v19);
}

uint64_t sub_1C994B168(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97DA5D0;

  return v6(v3);
}

uint64_t sub_1C994B25C()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_1C994E5AC(v2);

  return sub_1C994B2F8();
}

uint64_t sub_1C994B2F8()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1C994B388;

  return sub_1C987B80C();
}

uint64_t sub_1C994B388()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C994B488()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  sub_1C994E580(v1);

  return sub_1C981BE90();
}

uint64_t sub_1C994B52C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[8] = v0;

  if (!v0)
  {
    v7[9] = v3;
    v7[10] = v5;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C994B63C()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v1[1] = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);

  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = &unk_1C9AB98B8;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  sub_1C994E580(v3);

  return sub_1C981BBA8();
}

uint64_t sub_1C994B72C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[13] = v0;

  if (!v0)
  {
    v7[14] = v3;
    v7[15] = v5;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C994B83C()
{
  sub_1C97AA884();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v0[8].i64[0] = v1;
  v1[1] = vextq_s8(v0[7], v0[7], 8uLL);
  v2 = swift_task_alloc();
  v0[8].i64[1] = v2;
  *v2 = v0;
  sub_1C994E580(v2);

  return sub_1C981BBA8();
}

uint64_t sub_1C994B8F4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[18] = v0;

  if (!v0)
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C994BA04()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C994BA74()
{
  sub_1C97DA934();
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  sub_1C97AA878();
  v4 = swift_allocObject();
  v4[1] = vextq_s8(*(v0 + 152), *(v0 + 152), 8uLL);

  *v3 = &unk_1C9AB98C8;
  v3[1] = v2;
  v3[2] = &unk_1C9AB98D0;
  v3[3] = v1;
  v3[4] = &unk_1C9AB98D8;
  v3[5] = v4;
  sub_1C97DA91C();

  return v5();
}

uint64_t sub_1C994BB54()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C994BBD0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C98DC58C;

  return v5(v2 + 16);
}

uint64_t sub_1C994BCC8()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_1C994E5AC(v2);

  return sub_1C994B25C();
}

uint64_t sub_1C994BD70(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  swift_defaultActor_initialize();
  sub_1C97D9AF8(a1, v3 + 112);
  v8 = sub_1C9A92988();
  sub_1C9855060();
  sub_1C97ACC50(v9, v10, v11, v8);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;

  sub_1C98B1058();
  sub_1C99A93C4();
  v14 = v13;
  *(v3 + 152) = v13;
  sub_1C9855060();
  sub_1C97ACC50(v15, v16, v17, v8);
  sub_1C97D9AF8(a1, v20);
  sub_1C97A7CF4();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v14;
  sub_1C979B054(v20, (v18 + 5));
  swift_retain_n();
  sub_1C98B1058();
  sub_1C99A9128();

  sub_1C97A592C(a1);
  return v3;
}

uint64_t sub_1C994BF1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1C994C008;

  return v7();
}

uint64_t sub_1C994C008()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C994C104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  v8 = sub_1C97A2CEC(&qword_1EC3C89D0, &unk_1C9AA4898);
  *v7 = v5;
  v7[1] = sub_1C994C1C0;

  return MEMORY[0x1EEE6DA40](v5 + 16, a4, v8);
}

uint64_t sub_1C994C1C0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C994C2A8()
{
  sub_1C97AA95C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);

    sub_1C97A5A8C(v2, v2[3]);
    sub_1C9A91D38();
  }

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C994C334()
{

  sub_1C97A2CEC(&qword_1EC3C89D0, &unk_1C9AA4898);
  sub_1C9A92A28();

  sub_1C97D9AF8(v0 + 112, v2);
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A91D38();
  sub_1C97A592C(v2);
  sub_1C97A592C((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C994C3F8()
{
  sub_1C994C334();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C994C448(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C991A5D4(sub_1C994C464, v1);
}

void *sub_1C994C464()
{
  sub_1C97AA95C();
  v1 = *(v0 + 16);
  result = sub_1C97A5A8C((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C9A91DB8();
    sub_1C97DA91C();

    return v3();
  }

  return result;
}

uint64_t sub_1C994C50C()
{
  sub_1C97AA95C();
  sub_1C97A5A8C((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1C9A91D88();
  sub_1C9A91DB8();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C994C590()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C994C5C0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  type metadata accessor for AsyncDispatchQueue(0);
  swift_allocObject();
  *(v5 + 64) = sub_1C9928384();
  v11 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v11;
  v12 = a1[2];
  *(v5 + 48) = v12;
  type metadata accessor for CombineSubscriptionFromXPCAdapter.AsyncState(*&v12);
  v13 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v13 + 112) = 0;
  *(v5 + 80) = v13;
  v14 = sub_1C9A92988();
  sub_1C9855060();
  sub_1C97ACC50(v15, v16, v17, v14);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a2;
  v18[5] = a3;

  sub_1C98B1058();
  sub_1C99A93C4();
  v20 = v19;
  *(v5 + 72) = v19;
  v21 = *(v5 + 80);
  sub_1C9855060();
  sub_1C97ACC50(v22, v23, v24, v14);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v20;
  v25[5] = v21;
  v25[6] = a4;
  v25[7] = a5;

  sub_1C98B1058();
  sub_1C99A9128();

  return v5;
}

uint64_t sub_1C994C7F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1C994C8E4;

  return v7();
}

uint64_t sub_1C994C8E4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C994C9D0()
{
  sub_1C97AA884();
  v1 = sub_1C9A92A48();
  v2 = *(v0 + 32);
  if (v1)
  {

    v2 = 0;
  }

  **(v0 + 16) = v2;
  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C994CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v9 = swift_task_alloc();
  v7[6] = v9;
  v10 = sub_1C97A2CEC(&qword_1EC3C89D0, &unk_1C9AA4898);
  *v9 = v7;
  v9[1] = sub_1C994CB00;

  return MEMORY[0x1EEE6DA40](v7 + 2, a4, v10);
}

uint64_t sub_1C994CB00()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C994CBE8()
{
  v1 = v0[2];
  v0[7] = v1;
  if (v1)
  {
    return sub_1C991A5D4(sub_1C994CC14, v0[3]);
  }

  else
  {
    return sub_1C982F8AC();
  }
}

uint64_t sub_1C994CC38()
{
  sub_1C97AA884();
  v1 = *(v0 + 56);
  if (*(v0 + 72))
  {

    sub_1C97DA91C();

    return v2();
  }

  else
  {
    v4 = *(v0 + 32);
    v5 = v1;
    v8 = (v4 + *v4);
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_1C994CD68;
    v7 = *(v0 + 56);

    return v8(v7);
  }
}

uint64_t sub_1C994CD68()
{
  sub_1C97AA95C();
  v2 = *v1;
  v3 = *v1;
  sub_1C97AA83C();
  *v4 = v3;

  v5 = *(v2 + 56);
  if (v0)
  {
  }

  sub_1C987D484();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C994CE9C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C994CEF4()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 56);
  v18 = *(v0 + 24);

  v17 = *(v0 + 40);

  sub_1C97A2CEC(&qword_1EC3C89D0, &unk_1C9AA4898);
  sub_1C9A92A28();

  sub_1C9A92988();
  sub_1C9855060();
  sub_1C97ACC50(v6, v7, v8, v9);
  sub_1C97A7CF4();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v4;
  v11 = v17;
  *(v10 + 40) = v18;
  *(v10 + 56) = v11;
  *(v10 + 72) = v5;
  v12 = sub_1C98B1058();
  sub_1C9A1E148(v12, v13, v3, v14, v15);

  return v0;
}

uint64_t sub_1C994D088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 32) + **(a4 + 32));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C97DA5D0;

  return v7();
}

uint64_t sub_1C994D170()
{
  sub_1C994CEF4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C994D1FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 56);
  sub_1C994E5C0();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = *(v1 + 40);
  *(v5 + 32) = *(v1 + 24);
  *(v5 + 48) = v6;
  *(v5 + 64) = v4;

  sub_1C9928254(&unk_1C9AB9858, v5);
}

uint64_t sub_1C994D2B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C994D2D8, 0, 0);
}

uint64_t sub_1C994D2D8()
{
  sub_1C97AA884();
  sub_1C9A91D88();
  result = sub_1C9A91D68();
  v2 = *(v0 + 16);
  if (result)
  {
    goto LABEL_7;
  }

  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  if (!v2)
  {
LABEL_7:
    sub_1C9A91D88();
    if (sub_1C9A91D68())
    {
      sub_1C994E528();
      v9 = v5;
      v6 = swift_task_alloc();
      *(v0 + 48) = v6;
      *v6 = v0;
      v6[1] = sub_1C994D5DC;

      return v9();
    }

    else
    {
      sub_1C97DA91C();

      return v7();
    }
  }

  else
  {
    v8 = (**(v0 + 24) + ***(v0 + 24));
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_1C994D4C8;
    v4 = *(v0 + 16);

    return v8(v4);
  }
}

uint64_t sub_1C994D4C8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C994D5DC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C994D6F0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 56);
  sub_1C994E5C0();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v6 = *(v0 + 40);
  *(v4 + 32) = *(v0 + 24);
  *(v4 + 48) = v6;
  *(v4 + 64) = v3;

  sub_1C9928254(&unk_1C9AB9868, v4);
}

uint64_t sub_1C994D7B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C994D7DC, a1, 0);
}

uint64_t sub_1C994D7DC()
{
  sub_1C97AA884();
  *(*(v0 + 16) + 112) = 1;
  sub_1C994E528();
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1C994D8A0;

  return v4();
}

uint64_t sub_1C994D8A0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C994D9B4()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C994DABC(unint64_t *a1, uint64_t a2, double a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CombineSubscriptionFromXPCAdapter(a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C994DAFC()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C994E574();

  return sub_1C994D2B8(v3, v4);
}

uint64_t sub_1C994DB88()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C994E574();

  return sub_1C994D7B8(v3, v4);
}

uint64_t sub_1C994DC14()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E5A0();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E514();
  sub_1C97DABB0();

  return sub_1C994BF1C(v3, v4, v5, v6);
}

uint64_t sub_1C994DCB0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E5A0();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E514();
  sub_1C97DABB0();

  return sub_1C994C104(v3, v4, v5, v6, v7);
}

uint64_t sub_1C994DD4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C97D9C3C;

  return sub_1C9A21CD8();
}

uint64_t sub_1C994DDF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C9818728();
}

uint64_t sub_1C994DEA4()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C994DF38()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C994DFCC()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E574();

  return sub_1C9804578();
}

uint64_t sub_1C994E058()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C994E0EC()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E55C();
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C994E188()
{
  sub_1C97AA95C();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E55C();

  return sub_1C9804360();
}

uint64_t sub_1C994E218(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C994E288()
{
  sub_1C97AA95C();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  sub_1C994E55C();

  return sub_1C9804360();
}

uint64_t sub_1C994E318()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E5A0();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  sub_1C994E514();
  sub_1C97DABB0();

  return sub_1C994C7F8(v3, v4, v5, v6);
}

uint64_t sub_1C994E3B4()
{
  sub_1C994E5A0();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = sub_1C97AA858(v5);
  *v6 = v7;
  v6[1] = sub_1C97DA5D0;
  v8 = sub_1C994E514();

  return sub_1C994CA40(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_1C994E470()
{
  sub_1C97AA95C();
  sub_1C994E5A0();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C994E514();

  return sub_1C994D088(v3, v4, v5, v6);
}

uint64_t sub_1C994E5CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 72);
  v5 = *(a1 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    if (v6 != *a2 || v7 != a2[1])
    {
      v4 += 48;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    sub_1C985DA88(v9, v10, v11);
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_10:
  result = sub_1C9951194(a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_1C994E6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 72);
  v5 = *(a1 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    if (v6 != *(a2 + 16) || v7 != *(a2 + 24))
    {
      v4 += 48;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    sub_1C985DA88(v9, v10, v11);
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_10:
  result = sub_1C9951194(a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_1C994E79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 72);
  v5 = *(a1 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    if (v6 != *(a2 + 32) || v7 != *(a2 + 40))
    {
      v4 += 48;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    sub_1C985DA88(v9, v10, v11);
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_10:
  result = sub_1C9951194(a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_1C994E884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 72);
  v5 = *(a1 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    if (v6 != *(a2 + 48) || v7 != *(a2 + 56))
    {
      v4 += 48;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    sub_1C985DA88(v9, v10, v11);
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_10:
  result = sub_1C9951194(a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

void sub_1C994E96C(uint64_t a1, unint64_t a2)
{
  v58 = sub_1C9A93228();
  v5 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 44;
  v63 = 0xE100000000000000;
  v60 = &v62;

  v7 = sub_1C9951214(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C97F9828, v59, a1, a2);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v51 = v2;
  if (v8)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v56 = sub_1C97BD318(v10, 0, &qword_1EC3C8E98, 0x1E696AE88);
    v11 = 0;
    v55 = *MEMORY[0x1E696A028];
    v53 = (v5 + 8);
    v54 = (v5 + 104);
    v12 = (v7 + 56);
    v52 = v7;
    while (v11 < *(v7 + 16))
    {
      v14 = *(v12 - 3);
      v13 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;

      v17 = MEMORY[0x1CCA901C0](v14, v13, v15, v16);
      v19 = sub_1C98443D4(v17, v18);
      v20 = v57;
      v21 = v58;
      (*v54)(v57, v55, v58);
      v22 = sub_1C9A93218();
      v24 = v23;
      (*v53)(v20, v21);
      if ((v24 & 1) != 0 || ([v19 isAtEnd] & 1) == 0)
      {

LABEL_30:
        sub_1C97A8E8C();
        sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
        *v50 = 0;
        swift_willThrow();

        return;
      }

      v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

      if (!v25)
      {

        goto LABEL_30;
      }

      ++v11;

      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v12 += 4;
      v7 = v52;
      if (v8 == v11)
      {

        v26 = v62;
        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v27 = sub_1C97BDEE0();
  if (!v27)
  {
LABEL_24:

    return;
  }

  v28 = v27;
  v61 = v9;
  sub_1C97B7EE8(0, v27 & ~(v27 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v57 = v28;
    v58 = v26 & 0xC000000000000001;
    v30 = v61;
    v56 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v31 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v58)
      {
        v32 = MEMORY[0x1CCA912B0](v29, v26);
      }

      else
      {
        if (v29 >= *(v56 + 16))
        {
          goto LABEL_33;
        }

        v32 = *(v26 + 8 * v29 + 32);
      }

      v33 = v32;
      [v32 doubleValue];
      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v36 = [v33 longLongValue];
      if (v36 != [v35 longLongValue] || (objc_msgSend(v33, sel_doubleValue), v38 = v37, objc_msgSend(v35, sel_doubleValue), v38 != v39))
      {

LABEL_28:

        type metadata accessor for SNError(v45);
        v62 = 0;
        v63 = 0xE000000000000000;
        sub_1C9A935B8();

        v62 = 0xD000000000000015;
        v63 = 0x80000001C9AD57A0;
        v46 = [v33 description];
        v47 = sub_1C9A924A8();
        v49 = v48;

        MEMORY[0x1CCA90230](v47, v49);

        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, v62, v63);

        swift_willThrow();

        return;
      }

      v40 = [v33 isEqual_];

      if (!v40)
      {
        goto LABEL_28;
      }

      [v33 doubleValue];
      v42 = v41;

      v61 = v30;
      v44 = *(v30 + 16);
      v43 = *(v30 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1C97B7EE8(v43 > 1, v44 + 1, 1);
        v30 = v61;
      }

      *(v30 + 16) = v44 + 1;
      *(v30 + 8 * v44 + 32) = v42;
      ++v29;
      if (v31 == v57)
      {
        goto LABEL_24;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C994EF30(uint64_t a1, unint64_t a2)
{
  sub_1C994E96C(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1C97B7F1C(0, v6, 0);
      v2 = v13;
      v7 = *(v13 + 16);
      v8 = 32;
      do
      {
        v9 = *(v5 + v8);
        v10 = *(v13 + 24);
        if (v7 >= v10 >> 1)
        {
          sub_1C97B7F1C(v10 > 1, v7 + 1, 1);
        }

        v11 = v9;
        *(v13 + 16) = v7 + 1;
        *(v13 + 4 * v7 + 32) = v11;
        v8 += 8;
        ++v7;
        --v6;
      }

      while (v6);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

void sub_1C994F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(a2)
  {
    case 1:
      v38 = sub_1C995168C(a1, a2, a3, a4, a5, a6, a7);
      if (!sub_1C99515CC(v38, v39, v40, MEMORY[0x1E69E6158], v41, v42, v43, v44, v59, v64, v69))
      {
        goto LABEL_14;
      }

      *(a1 + 16) = v63;
      *(a1 + 24) = v68;
      break;
    case 2:
      v20 = sub_1C995168C(a1, a2, a3, a4, a5, a6, a7);
      if (!sub_1C99515CC(v20, v21, v22, MEMORY[0x1E69E6158], v23, v24, v25, v26, v59, v64, v69))
      {
        goto LABEL_14;
      }

      *(a1 + 32) = v61;
      *(a1 + 40) = v66;
      break;
    case 3:
      v27 = sub_1C995168C(a1, a2, a3, a4, a5, a6, a7);
      if (!sub_1C99515CC(v27, v28, v29, MEMORY[0x1E69E6158], v30, v31, v32, v33, v59, v64, v69))
      {
        goto LABEL_14;
      }

      *(a1 + 48) = v62;
      *(a1 + 56) = v67;
      break;
    case 4:
      v16 = sub_1C9951628(a1, a2, a3);
      v17 = sub_1C98059FC(v16);
      if (!v7)
      {
        v18 = v17;
        sub_1C999C710();
        v19 = [v18 integerValue];

        *(a1 + 64) = v19;
      }

      break;
    case 5:
      v45 = sub_1C9951628(a1, a2, a3);
      v46 = sub_1C98059FC(v45);
      if (!v7)
      {
        v47 = v46;
        sub_1C999C604();
        [v47 doubleValue];
        v56 = v55;

        v57 = v56;
        *(a1 + 72) = v57;
      }

      break;
    case 6:
      v48 = sub_1C9951628(a1, a2, a3);
      v49 = sub_1C9805978(v48);
      if (!v7)
      {
        v51 = sub_1C994EF30(v49, v50);

        *(a1 + 80) = v51;
      }

      break;
    case 7:
      v34 = sub_1C9951628(a1, a2, a3);
      v35 = sub_1C9805978(v34);
      if (!v7)
      {
        v37 = sub_1C994EF30(v35, v36);

        *(a1 + 88) = v37;
      }

      break;
    case 8:
      v52 = sub_1C9951628(a1, a2, a3);
      v53 = sub_1C9805978(v52);
      if (!v7)
      {
        v58 = sub_1C994EF30(v53, v54);

        *(a1 + 96) = v58;
      }

      break;
    default:
      v9 = sub_1C995168C(a1, a2, a3, a4, a5, a6, a7);
      if (sub_1C99515CC(v9, v10, v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v59, v64, v69))
      {

        *a1 = v60;
        *(a1 + 8) = v65;
      }

      else
      {
LABEL_14:
        sub_1C98066EC();
        sub_1C97A7A80(&type metadata for CoerceUtils.DomainError);
        swift_willThrow();
      }

      break;
  }
}

uint64_t sub_1C994F2DC(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_1C97BD360(*(a2 + 56) + 32 * v13, v22);
      *&v23 = v16;
      *(&v23 + 1) = v15;
      sub_1C97A2D34(v22, &v24);

LABEL_10:
      v26 = v23;
      v27[0] = v24;
      v27[1] = v25;
      if (!*(&v23 + 1))
      {
      }

      sub_1C97A2D34(v27, &v23);
      v17 = sub_1C9A93848();

      if (v17 <= 8)
      {
        sub_1C994F038(v28, v17, &v23, v18, v19, v20, v21);
        if (v2)
        {
          sub_1C97A592C(&v23);
        }
      }

      result = sub_1C97A592C(&v23);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v7 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_10;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C994F48C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3C5DE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC3D3290;
  if (byte_1EC3D32B8)
  {
    v3 = qword_1EC3D3290;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v6 = qword_1EC3D3298;
    v5 = qword_1EC3D32A0;
    v7 = qword_1EC3D32A8;
    v8 = qword_1EC3D32B0;
    *a1 = 0x6F696475615F6E69;
    *(a1 + 8) = 0xE800000000000000;
    *(a1 + 16) = 0x65746174735F6E69;
    *(a1 + 24) = 0xE800000000000000;
    strcpy((a1 + 32), "out_features");
    *(a1 + 45) = 0;
    *(a1 + 46) = -5120;
    *(a1 + 48) = 0x746174735F74756FLL;
    *(a1 + 56) = 0xE900000000000065;
    *(a1 + 64) = v2;
    *(a1 + 72) = v6;
    *(a1 + 80) = v5;
    *(a1 + 88) = v7;
    *(a1 + 96) = v8;
  }
}

void *sub_1C994F5D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C994F48C(__src);
  if (!v2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C994F2DC(__dst, a1);
    return memcpy(a2, __dst, 0x68uLL);
  }

  return result;
}

uint64_t sub_1C994F674(uint64_t a1, double a2)
{
  if (*(a1 + 40) > 0xFDu)
  {
    goto LABEL_15;
  }

  if (*(a1 + 40) || *(a1 + 24) != 1)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + 32);
  if (*(v4 + 16) != 2)
  {
    goto LABEL_15;
  }

  result = sub_1C99E26D8(v4, 0);
  if (v2)
  {
    return result;
  }

  if (result == v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (__OFSUB__(v6, 1))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (result != 1 || v6 != 2)
  {
LABEL_15:
    type metadata accessor for SNError(a2);
    sub_1C98573F8();
    sub_1C9820900(v9, v8 + 43, v10);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C994F72C(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 40) > 0xFDu)
  {
    goto LABEL_15;
  }

  if (*(a2 + 40) || *(a2 + 24) != 1)
  {
    goto LABEL_15;
  }

  v5 = *(a2 + 32);
  if (*(v5 + 16) != 3)
  {
    goto LABEL_15;
  }

  result = sub_1C99E26D8(*(a2 + 32), 0);
  if (v3)
  {
    return result;
  }

  if (result == v8)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != 1 || v8 != 2)
  {
    goto LABEL_15;
  }

  result = sub_1C99E26D8(v5, 1);
  if (result == v13)
  {
    goto LABEL_27;
  }

  if (__OFSUB__(v13, 1))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (result != a1 || v13 - 1 != a1)
  {
LABEL_15:
    type metadata accessor for SNError(a3);
    sub_1C98573F8();
    sub_1C9820900(v11, v10 + 84, v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C994F834(uint64_t result, uint64_t a2)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = sub_1C9A5988C(result);
  result = sub_1C992B2CC(v4, 4);
  if (v2)
  {
    return result;
  }

  v6 = result;
  if (*(a2 + 40))
  {
    goto LABEL_5;
  }

  if (*(a2 + 24) != 1)
  {
    goto LABEL_5;
  }

  v9 = *(a2 + 32);
  if (*(v9 + 16) != 2)
  {
    goto LABEL_5;
  }

  result = sub_1C99E26D8(v9, 1);
  if (result == v10)
  {
    goto LABEL_26;
  }

  if (__OFSUB__(v10, 1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != v6 || v10 - 1 != v6)
  {
    goto LABEL_5;
  }

  result = sub_1C99E26D8(v9, 0);
  if (result == v12)
  {
    goto LABEL_28;
  }

  if (__OFSUB__(v12, 1))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (result != 1 || v12 != 2)
  {
LABEL_5:
    type metadata accessor for SNError(v5);
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000043, 0x80000001C9ADA400);
    v7 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v7);

    MEMORY[0x1CCA90230](8236, 0xE200000000000000);
    v8 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v8);

    MEMORY[0x1CCA90230](93, 0xE100000000000000);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0, 0xE000000000000000);

    return swift_willThrow();
  }

  return result;
}

void sub_1C994FA68(void *a1, void *a2)
{
  v4 = sub_1C989687C(a2);
  if (!v2)
  {
    v7 = v4;
    v8 = v5;
    v9 = sub_1C992BBB4(*(a1[12] + 16), *(a1[10] + 16), *(a1[11] + 16), v6);
    if (*(v7 + 16) == 2 && *(v8 + 16) == 2)
    {
      v10 = v9;
      sub_1C99511C4(a1, v157);
      sub_1C995164C();
      sub_1C994E5CC(v11, v12, v13);
      if (v159)
      {
        v15 = v161;
        v14 = v162;
        v16 = v163;
        v197[0] = v158;
        v197[1] = v159;
        v198 = v160 & 1;
        v199 = v161;
        v200 = v162;
        v201 = v163;
        sub_1C99511C4(a1, v157);
        sub_1C995164C();
        sub_1C994E6B4(v17, v18, v19);
        if (v165)
        {
          v156 = v15;
          v202 = v14;
          v27 = v167;
          v26 = v168;
          v192[0] = v164;
          v192[1] = v165;
          v193 = v166 & 1;
          v194 = v167;
          v195 = v168;
          LODWORD(v155) = v169;
          HIDWORD(v155) = v16;
          v196 = v169;
          v28 = v165;
          sub_1C99511C4(a1, v157);
          sub_1C995164C();
          sub_1C994E79C(v29, v30, v31);
          v148 = v28;
          v151 = v27;
          v154 = v26;
          v36 = v171;
          if (v171)
          {
            v38 = v173;
            v37 = v174;
            v187[0] = v170;
            v187[1] = v171;
            v188 = v172 & 1;
            v189 = v173;
            v190 = v174;
            HIDWORD(v145) = v175;
            v191 = v175;
            sub_1C99511C4(a1, v157);
            sub_1C995164C();
            sub_1C994E884(v39, v40, v41);
            v131 = v36;
            v137 = v38;
            v143 = v37;
            v61 = v177;
            if (v177)
            {
              v62 = v179;
              v63 = v180;
              HIDWORD(v124) = v178;
              v64 = v176;
              v65 = v181;

              v182[0] = v64;
              v182[1] = v61;
              v183 = BYTE4(v124) & 1;
              v184 = v62;
              v185 = v63;
              v186 = v65;
              sub_1C994F674(v197, v66);

              v97 = sub_1C9951618(v89, v90, v91, v92, v93, v94, v95, v96, v124, v131, v137, v143, v145, v148, v151, v154, v155, v156);
              sub_1C99511FC(v97, v98, v99);
              sub_1C994F834(v10, v192);

              v108 = sub_1C9951640(v100, v101, v102, v103, v104, v105, v106, v107, v127, v133, v139, v144, v147, v150, v153);
              sub_1C99511FC(v108, v109, v110);
              sub_1C994F72C(v10, v187, v111);

              v120 = sub_1C9951634(v112, v113, v114, v115, v116, v117, v118, v119, v128, v134, v140);
              sub_1C99511FC(v120, v121, v122);
              sub_1C994F834(v10, v182);

              v123 = sub_1C99515EC();
              sub_1C99511FC(v123, v20, v21);
              return;
            }

            v75 = sub_1C9951634(v67, v68, v69, v70, v71, v72, v73, v74, v124, v131, v38);
            sub_1C99511FC(v75, v76, v77);

            v86 = sub_1C9951640(v78, v79, v80, v81, v82, v83, v84, v85, v126, v132, v138, v37, v145, v148, v151);
            sub_1C99511FC(v86, v87, v88);

            v32 = v156;
            v33 = v202;
            v34 = BYTE4(v155);
          }

          else
          {

            v50 = sub_1C9951640(v42, v43, v44, v45, v46, v47, v48, v49, v124, v129, v135, v141, v145, v148, v27);
            sub_1C99511FC(v50, v51, v52);

            v32 = sub_1C9951618(v53, v54, v55, v56, v57, v58, v59, v60, v125, v130, v136, v142, v146, v149, v152, v26, v155, v156);
          }
        }

        else
        {

          v32 = sub_1C97A7890();
          v34 = v16;
        }

        sub_1C99511FC(v32, v33, v34);
      }

      sub_1C97E78C8();
      sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
      *v35 = 4;
      swift_willThrow();

      return;
    }

    type metadata accessor for SNError(v22);
    sub_1C98573F8();
    sub_1C9820900(v24, v23 + 21, v25);
    swift_willThrow();
  }
}

objc_class *sub_1C994FF7C(void *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for EBankCustomModelUtils(v4);
  v5 = sub_1C98DE140();
  sub_1C994F5D8(v5, v6);
  if (v1)
  {
  }

  else
  {

    sub_1C994FA68(v10, a1);
    v7 = objc_allocWithZone(ObjectType);
    ObjectType = sub_1C9950124(v10);
  }

  v8 = swift_getObjectType();
  sub_1C995166C(v8);
  return ObjectType;
}

id sub_1C9950124(void *a1)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____SNEBankCustomModel_configuration;
  memcpy(&v1[OBJC_IVAR____SNEBankCustomModel_configuration], a1, 0x68uLL);
  v7 = a1[10];
  v6 = a1[11];
  sub_1C99511C4(a1, __dst);
  v8 = sub_1C98DE140();
  v10 = sub_1C992BF30(v8, v9);
  if (v2)
  {
    sub_1C9951194(a1);
    memcpy(__dst, &v1[v5], sizeof(__dst));
    sub_1C9951194(__dst);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v10;
    v13 = sub_1C992BF30(v7, v11);
    v15 = sub_1C992BF30(v6, v14);
    sub_1C9951194(a1);
    v17 = &v1[OBJC_IVAR____SNEBankCustomModel_coefAllocations];
    *v17 = v12;
    v17[1] = v13;
    v17[2] = v15;
    v18.receiver = v1;
    v18.super_class = ObjectType;
    return objc_msgSendSuper2(&v18, sel_init);
  }
}

void sub_1C9950274(void *a1)
{
  v3 = v1;
  v82 = *MEMORY[0x1E69E9840];
  v4 = v1 + OBJC_IVAR____SNEBankCustomModel_configuration;
  v5 = sub_1C98967EC(a1, *(v1 + OBJC_IVAR____SNEBankCustomModel_configuration), *(v1 + OBJC_IVAR____SNEBankCustomModel_configuration + 8));
  if (!v2)
  {
    v6 = v5;
    v7 = [v5 multiArrayValue];
    if (!v7)
    {
      sub_1C97A8E8C();
      sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
      *v13 = 0;
      swift_willThrow();

      return;
    }

    v8 = v7;

    v9 = sub_1C98DE140();
    v12 = sub_1C98967EC(v9, v10, v11);
    v14 = v12;
    v15 = [v12 multiArrayValue];
    if (!v15)
    {
      sub_1C97A8E8C();
      sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
      *v24 = 0;
      swift_willThrow();

      return;
    }

    v16 = v15;

    sub_1C998D968(v8);
    v17 = sub_1C98DE140();
    sub_1C998D968(v17);
    v19 = sub_1C992BBB4(*(*(v4 + 96) + 16), *(*(v4 + 80) + 16), *(*(v4 + 88) + 16), v18);
    v20 = v19;
    if (v19 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v19 <= 0x7FFFFFFF)
    {
      v21 = sub_1C9A5988C(v19);
      type metadata accessor for FixedAddressMutableRawBuffer(v22);
      swift_allocObject();
      v23 = sub_1C99CCA8C(v21, 1);
      sub_1C9A92F38();
      v25 = v3 + OBJC_IVAR____SNEBankCustomModel_coefAllocations;
      v26 = *(v3 + OBJC_IVAR____SNEBankCustomModel_coefAllocations);
      v27 = *(v3 + OBJC_IVAR____SNEBankCustomModel_coefAllocations + 8);
      v28 = v23;
      v29 = *(v25 + 16);
      v30 = *(v4 + 72);
      v77 = *(v4 + 64);

      sub_1C992BCD4(v26, v27, v29, v77, v28, __src, v30);

      memcpy(__dst, __src, sizeof(__dst));
      v31 = [v8 shape];
      sub_1C97BD318(v32, 0, &qword_1EC3C54B0, 0x1E696AD98);
      v33 = sub_1C9A92798();

      v34 = [v8 shape];
      sub_1C9A92798();

      v35 = sub_1C97BDEE0();

      v36 = __OFSUB__(v35, 1);
      v37 = v35 - 1;
      if (v36)
      {
        __break(1u);
      }

      else
      {
        sub_1C97C4F68();
        if ((v33 & 0xC000000000000001) == 0)
        {
          v38 = *(v33 + 8 * v37 + 32);
          goto LABEL_14;
        }
      }

      v38 = MEMORY[0x1CCA912B0](v37, v33);
LABEL_14:
      v39 = v38;

      v40 = [v39 integerValue];

      if (v40 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v40 <= 0x7FFFFFFF)
      {
        v41 = sub_1C9A59974(__dst, v40);
        v75 = v20 * v41;
        sub_1C97A2CEC(&qword_1EC3C7C70, &qword_1C9A9D640);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C9A9EE60;
        *(inited + 32) = 1;
        *(inited + 40) = v20;
        *(inited + 48) = v41;
        v43 = swift_initStackObject();
        *(v43 + 16) = xmmword_1C9A9EE60;
        *(v43 + 32) = v75;
        *(v43 + 40) = 1;
        *(v43 + 48) = v20;
        v44 = sub_1C9A5988C(v20);
        v73 = sub_1C992B2CC(v44, 4);
        sub_1C998FD90(v43, inited);
        sub_1C9951658();
        if (!v46)
        {
          goto LABEL_29;
        }

        v47 = v45;
        v48 = swift_slowAlloc();
        v76 = v48 + 4 * v47;
        v49 = swift_allocObject();
        v49[2] = v48;
        v49[3] = v76;
        v74 = sub_1C998FFA8(v48, inited, 65568, v43, sub_1C9951110, v49);

        v50 = swift_initStackObject();
        v71 = xmmword_1C9AA3B60;
        *(v50 + 16) = xmmword_1C9AA3B60;
        *(v50 + 32) = 1;
        *(v50 + 40) = v73;
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_1C9AA3B60;
        *(v51 + 32) = v73;
        *(v51 + 40) = 1;
        sub_1C998FD90(v51, v50);
        sub_1C9951658();
        if (!v46)
        {
          goto LABEL_30;
        }

        v53 = v52;
        v54 = swift_slowAlloc();
        v55 = swift_allocObject();
        v55[2] = v54;
        v55[3] = v54 + 4 * v53;
        v72 = sub_1C998FFA8(v54, v50, 65568, v51, sub_1C99515C8, v55);
        swift_setDeallocating();

        v56 = swift_setDeallocating();
        MEMORY[0x1EEE9AC00](v56);
        sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
        sub_1C9A92F38();
        sub_1C98BCA64(v78);
        v58 = v57;

        if (*(v58 + 16) >> 61)
        {
LABEL_31:
          __break(1u);
          return;
        }

        v60 = MEMORY[0x1EEE9AC00](v59);
        MEMORY[0x1EEE9AC00](v60);
        sub_1C9A92F48();

        v62 = MEMORY[0x1EEE9AC00](v61);
        MEMORY[0x1EEE9AC00](v62);
        sub_1C9A92F48();
LABEL_24:
        sub_1C97A2CEC(&qword_1EC3C6C28, &qword_1C9A9D5F0);
        v63 = swift_allocObject();
        *(v63 + 16) = v71;
        v64 = *(v4 + 40);
        *(v63 + 32) = *(v4 + 32);
        *(v63 + 40) = v64;
        v65 = objc_opt_self();

        v66 = [v65 featureValueWithMultiArray_];
        v68 = *(v4 + 48);
        v67 = *(v4 + 56);
        *(v63 + 48) = v66;
        *(v63 + 56) = v68;
        *(v63 + 64) = v67;

        *(v63 + 72) = [v65 featureValueWithMultiArray_];
        sub_1C97BD318(v69, 0, &qword_1EC3C54F8, 0x1E695FE60);
        sub_1C9A92348();
        v70 = sub_1C9878610();

        objc_allocWithZone(MEMORY[0x1E695FE48]);
        sub_1C98B6EC8(v70);

        sub_1C99515FC();
        sub_1C99510BC(&v79);
        return;
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_24;
  }
}

uint64_t sub_1C9950D78@<X0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (a1)
  {
    v7 = (a2 - a1) / 4;
  }

  else
  {
    v7 = 0;
  }

  result = sub_1C99F530C(a1, v7, a4, a5);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1C9950DBC(void *__dst, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 24);
  }

  else
  {
    v7 = 0;
  }

  return sub_1C99CC544(v6, v7, __dst, a2);
}

uint64_t sub_1C9950FF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9951038(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C99511FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
  }

  return result;
}

uint64_t sub_1C9951214(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1C9A92628();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_1C97E6AF4();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1C97E6AF4();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_1C9A92618();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_1C9A92548();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_1C9A92628();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C97E6AF4();
      v47 = v27;
    }

    v12 = *(v47 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v47 + 24) >> 1)
    {
      sub_1C97E6AF4();
      v47 = v28;
    }

    *(v47 + 16) = v11;
    v26 = (v47 + 32 * v12);
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_1C9A92548();
    if ((v22 & 1) == 0 && *(v47 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1C9A92628();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_1C97E6AF4();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99515CC(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void a6, void a7, void a8, uint64_t a3, uint64_t a4, char a5)
{

  return swift_dynamicCast();
}

void *sub_1C99515FC()
{

  return memcpy((v0 + 176), (v1 - 256), 0x50uLL);
}

uint64_t sub_1C995166C(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C995168C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1C97BD360(a3, va);
}

uint64_t sub_1C99516A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v54 = MEMORY[0x1E69E7CC0];
  result = sub_1C97B8260(0, v7, 0);
  v9 = v54;
  v46 = v5;
  v47 = v6;
  v44 = a1;
  v45 = v7;
  v43 = a2;
  if (!v7)
  {
    v12 = a3;
LABEL_24:
    v27 = v9;
    v28 = v45;
    for (i = (v44 + 32 * v45 + 56); ; i += 4)
    {
      if (v46 == v28)
      {
        goto LABEL_45;
      }

      if (v28 >= v46)
      {
        goto LABEL_48;
      }

      if (__OFADD__(v28, 1))
      {
        goto LABEL_49;
      }

      if (v47 == v28)
      {
LABEL_45:

        return v27;
      }

      if (v28 >= v47)
      {
        goto LABEL_50;
      }

      v31 = *(i - 3);
      v30 = *(i - 2);
      v32 = *(i - 1);
      v33 = *i;
      v34 = *(v43 + 32 + 8 * v28);
      v35 = *(v12 + 16);

      if (v35)
      {

        v36 = sub_1C9A32230(v31, v30);
        v12 = a3;
        v37 = 0.0;
        if (v38)
        {
          v37 = *(*(a3 + 56) + 8 * v36);
        }
      }

      else
      {
        v37 = 0.0;
      }

      if (v32 >= v37)
      {
        if (v33 != 0.0)
        {

          v31 = 0;
          v30 = 0;
          v33 = 0.0;
          v37 = 0.0;
          goto LABEL_42;
        }
      }

      else
      {
        if (__OFADD__(v34, 1))
        {
          goto LABEL_52;
        }

        if (v34 + 1 != *&v33)
        {

          v31 = 0;
          v30 = 0;
          v37 = 0.0;
          *&v33 = v34 + 1;
        }
      }

      v12 = a3;
LABEL_42:
      v39 = v27;
      v41 = *(v27 + 16);
      v40 = *(v27 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_1C97B8260((v40 > 1), v41 + 1, 1);
        v12 = a3;
        v39 = v27;
      }

      *(v39 + 16) = v41 + 1;
      v27 = v39;
      v42 = v39 + 32 * v41;
      *(v42 + 32) = v31;
      *(v42 + 40) = v30;
      *(v42 + 48) = v37;
      *(v42 + 56) = v33;
      ++v28;
    }
  }

  v10 = (a2 + 32);
  v11 = (a1 + 56);
  v12 = a3;
  while (v5)
  {
    if (!v6)
    {
      goto LABEL_47;
    }

    v13 = v12;
    v14 = *(v11 - 3);
    v15 = *(v11 - 2);
    v16 = *(v11 - 1);
    v49 = v9;
    v51 = *v11;
    v48 = *v10;
    v17 = *(v13 + 16);

    if (v17)
    {

      v18 = v14;
      v19 = sub_1C9A32230(v14, v15);
      v12 = a3;
      v20 = 0.0;
      if (v21)
      {
        v20 = *(*(a3 + 56) + 8 * v19);
      }
    }

    else
    {
      v18 = v14;
      v20 = 0.0;
      v12 = v13;
    }

    v22 = v18;
    v23 = v51;
    if (v16 >= v20)
    {
      if (v51 != 0.0)
      {

        v22 = 0;
        v15 = 0;
        v23 = 0.0;
        v20 = 0.0;
      }
    }

    else
    {
      if (__OFADD__(v48, 1))
      {
        goto LABEL_51;
      }

      if (v48 + 1 != *&v51)
      {

        v22 = 0;
        v15 = 0;
        v20 = 0.0;
        *&v23 = v48 + 1;
      }
    }

    v9 = v49;
    v55 = v49;
    v25 = *(v49 + 16);
    v24 = *(v49 + 24);
    if (v25 >= v24 >> 1)
    {
      v50 = v22;
      v52 = v23;
      result = sub_1C97B8260((v24 > 1), v25 + 1, 1);
      v22 = v50;
      v23 = v52;
      v12 = a3;
      v9 = v55;
    }

    *(v9 + 16) = v25 + 1;
    v26 = v9 + 32 * v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = v15;
    --v6;
    *(v26 + 48) = v20;
    *(v26 + 56) = v23;
    --v5;
    ++v10;
    v11 += 4;
    if (!--v7)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

BOOL sub_1C9951A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a7 != a8)
    {
      return 0;
    }

    return a3 == a6;
  }

  v13 = sub_1C9A93B18();
  result = 0;
  if ((v13 & 1) != 0 && a7 == a8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1C9951AB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C9ADA4F0 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001C9ADA510 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}
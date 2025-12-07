uint64_t sub_16C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3578(&qword_24668, &qword_1C0F8);
  __chkstk_darwin(v4 - 8);
  v106 = &v104 - v5;
  v6 = sub_3578(&qword_24670, &qword_1C100);
  __chkstk_darwin(v6 - 8);
  v111 = &v104 - v7;
  v112 = sub_1B624();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SignalDefinition(0);
  v113 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 40);
  v114 = *(a1 + 24);
  v115 = a1;
  sub_37EC(a1, v114);
  v133 = v114;
  v134 = v12;
  sub_35C0(v132);
  sub_1B674();
  v13 = v134;
  v114 = v133;
  sub_37EC(v132, v133);
  v130 = v114;
  v131 = v13;
  sub_35C0(&v129);
  sub_1B664();
  v14 = v131;
  v114 = v130;
  sub_37EC(&v129, v130);
  v127 = v114;
  v128 = v14;
  sub_35C0(v126);
  sub_1B684();
  v15 = v128;
  v114 = v127;
  sub_37EC(v126, v127);
  v124 = v114;
  v125 = v15;
  sub_35C0(v123);
  sub_1B644();
  v16 = v125;
  v114 = v124;
  sub_37EC(v123, v124);
  v121 = v114;
  v122 = v16;
  sub_35C0(v120);
  sub_1B6B4();
  v17 = v122;
  v114 = v121;
  sub_37EC(v120, v121);
  sub_13730(*(a2 + 88));
  v118 = v114;
  v119 = v17;
  sub_35C0(v117);
  sub_1B684();

  v18 = v118;
  v19 = sub_37EC(v117, v118);
  v20 = *(v18 - 8);
  __chkstk_darwin(v19);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116[3] = &type metadata for SiriAudioAssetProvider;
  v116[4] = sub_3624();
  sub_1B654();
  (*(v20 + 8))(v22, v18);
  sub_3678(v116);
  sub_3678(v117);
  sub_3678(v120);
  sub_3678(v123);
  sub_3678(v126);
  sub_3678(&v129);
  sub_3678(v132);
  v105 = a2;
  v23 = *(a2 + 48);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
    v110 = (v109 + 6);
    v113 = *(v113 + 72);
    *&v114 = v9;
    v107 = (v109 + 4);
    v104 = (v109 + 1);
    while (1)
    {
      sub_36C4(v25, v11);
      sub_3784(&v11[*(v9 + 24)], &v129, &qword_24680, &qword_1C108);
      if (v130)
      {
        break;
      }

      sub_3D38(&v129, &qword_24680, &qword_1C108);
      v37 = v111;
      sub_3784(&v11[*(v9 + 20)], v111, &qword_24670, &qword_1C100);
      v38 = v112;
      if ((*v110)(v37, 1, v112) == 1)
      {
        sub_3D38(v37, &qword_24670, &qword_1C100);
        v39 = v115[3];
        v40 = sub_37EC(v115, v39);
        v41 = *(v39 - 8);
        __chkstk_darwin(v40);
        v43 = &v104 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1B404();
        (*(v41 + 8))(v43, v39);
        goto LABEL_9;
      }

      v26 = v108;
      (*v107)(v108, v37, v38);
      v27 = v115[3];
      v28 = sub_37EC(v115, v27);
      v109 = &v104;
      v29 = *(v27 - 8);
      __chkstk_darwin(v28);
      v31 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1B3F4();
      (*(v29 + 8))(v31, v27);
      (*v104)(v26, v112);
      sub_3728(v11);
LABEL_4:
      v9 = v114;
      v25 += v113;
      if (!--v24)
      {
        goto LABEL_10;
      }
    }

    sub_38DC(&v129, v132);
    v32 = v115[3];
    v33 = sub_37EC(v115, v32);
    v34 = *(v32 - 8);
    __chkstk_darwin(v33);
    v36 = &v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1B3E4();
    (*(v34 + 8))(v36, v32);
    sub_3678(v132);
LABEL_9:
    sub_3728(v11);
    goto LABEL_4;
  }

LABEL_10:
  v44 = v105;
  v45 = v115;
  if (*(v105 + 120))
  {
    v46 = v115[3];
    v47 = sub_37EC(v115, v46);
    v48 = *(v46 - 8);
    __chkstk_darwin(v47);
    v50 = &v104 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v105;
    sub_1B6A4();
    (*(v48 + 8))(v50, v46);
  }

  if (*(v44 + 128))
  {
    v51 = v45[3];
    v52 = sub_37EC(v45, v51);
    v53 = *(v51 - 8);
    __chkstk_darwin(v52);
    v55 = &v104 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v105;
    sub_1B694();
    (*(v53 + 8))(v55, v51);
  }

  if (*(v44 + 104))
  {
    v56 = v45[3];
    v57 = sub_37EC(v45, v56);
    v58 = *(v56 - 8);
    __chkstk_darwin(v57);
    v60 = &v104 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1B3D4();
    v61 = v56;
    v44 = v105;
    (*(v58 + 8))(v60, v61);
  }

  if (*(v44 + 89) == 1)
  {
    v62 = v45[3];
    v63 = sub_37EC(v45, v62);
    v64 = *(v62 - 8);
    __chkstk_darwin(v63);
    v66 = &v104 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v105;
    sub_1B6C4();
    (*(v64 + 8))(v66, v62);
  }

  sub_3784(v44 + 152, &v129, &qword_24688, &qword_1C110);
  if (v130)
  {
    sub_38DC(&v129, v132);
    v67 = v45[3];
    v68 = sub_37EC(v45, v67);
    v69 = *(v67 - 8);
    __chkstk_darwin(v68);
    v71 = &v104 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v105;
    sub_1B634();
    (*(v69 + 8))(v71, v67);
    result = sub_3678(v132);
  }

  else
  {
    result = sub_3D38(&v129, &qword_24688, &qword_1C110);
  }

  v73 = *(v44 + 192);
  v74 = *(v73 + 16);
  if (v74)
  {
    v75 = v73 + 32;
    while (1)
    {
      sub_3878(v75, v132);
      v81 = v45[3];
      v111 = v45[5];
      v110 = sub_37EC(v45, v81);
      v113 = v81;
      *&v114 = &v104;
      v112 = *(v81 - 8);
      __chkstk_darwin(v110);
      v109 = (&v104 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
      v83 = v133;
      sub_37EC(v132, v133);
      v84 = (*(*(&v83 + 1) + 8))(v83, *(&v83 + 1));
      if (v84 > 2)
      {
        break;
      }

      if (v84)
      {
        if (v84 == 1)
        {
          v107 = 0x614E747369747261;
          v85 = 0xEA0000000000656DLL;
        }

        else
        {
          v107 = 0x6D614E6F69646172;
          v85 = 0xE900000000000065;
        }

LABEL_36:
        v108 = v85;
        goto LABEL_37;
      }

      v107 = 0x656D614E676E6F73;
      v108 = 0xE800000000000000;
LABEL_37:
      v87 = v133;
      sub_37EC(v132, v133);
      v88 = (*(*(&v87 + 1) + 8))(v87, *(&v87 + 1));
      if (v88 > 2)
      {
        if (v88 == 3)
        {
          v89 = 0x4E74736163646F70;
          v90 = 0xEB00000000656D61;
        }

        else
        {
          v89 = 0x7473696C79616C70;
          if (v88 == 4)
          {
            v91 = 1701667150;
          }

          else
          {
            v91 = 1701869908;
          }

          v90 = v91 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        }
      }

      else if (v88)
      {
        if (v88 == 1)
        {
          v89 = 0x614E747369747261;
          v90 = 0xEA0000000000656DLL;
        }

        else
        {
          v89 = 0x6D614E6F69646172;
          v90 = 0xE900000000000065;
        }
      }

      else
      {
        v90 = 0xE800000000000000;
        v89 = 0x656D614E676E6F73;
      }

      v92 = type metadata accessor for AudioSuggestionResolver();
      v93 = swift_allocObject();
      *(v93 + 16) = v89;
      *(v93 + 24) = v90;
      *&v130 = v92;
      *(&v130 + 1) = sub_3830(&qword_24690, v94, type metadata accessor for AudioSuggestionResolver, &unk_1C088);
      *&v129 = v93;
      v95 = v133;
      sub_37EC(v132, v133);
      (*(*(&v95 + 1) + 8))(v95, *(&v95 + 1));
      v76 = v133;
      sub_37EC(v132, v133);
      (*(*(&v76 + 1) + 16))(v76, *(&v76 + 1));
      v77 = v133;
      sub_37EC(v132, v133);
      (*(*(&v77 + 1) + 40))(v77, *(&v77 + 1));
      v78 = v133;
      sub_37EC(v132, v133);
      (*(*(&v78 + 1) + 32))(v126, v78, *(&v78 + 1));
      sub_1B594();
      swift_allocObject();
      sub_1B584();
      v79 = v109;
      v80 = v113;
      sub_1B6E4();

      (*(v112 + 8))(v79, v80);
      sub_3D38(&v129, &qword_24698, &qword_1C118);
      result = sub_3678(v132);
      v75 += 40;
      --v74;
      v45 = v115;
      if (!v74)
      {
        goto LABEL_50;
      }
    }

    if (v84 == 3)
    {
      v107 = 0x4E74736163646F70;
      v85 = 0xEB00000000656D61;
    }

    else
    {
      v107 = 0x7473696C79616C70;
      if (v84 == 4)
      {
        v86 = 1701667150;
      }

      else
      {
        v86 = 1701869908;
      }

      v85 = v86 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    }

    goto LABEL_36;
  }

LABEL_50:
  v96 = *(v105 + 200);
  v97 = *(v96 + 16);
  if (v97)
  {
    v98 = v96 + 32;
    do
    {
      sub_3878(v98, v132);
      v99 = v45[3];
      v100 = sub_37EC(v45, v99);
      v101 = *(v99 - 8);
      __chkstk_darwin(v100);
      v103 = &v104 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1B6D4();
      sub_3678(v132);
      result = (*(v101 + 8))(v103, v99);
      v98 += 40;
      --v97;
    }

    while (v97);
  }

  return result;
}

uint64_t sub_29FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3DA8;

  return sub_2E60(a1, a2);
}

uint64_t sub_2AB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2AE8()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_2B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2BE4;

  return (sub_38F4)(a2, a3, a4);
}

uint64_t sub_2BE4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void type metadata accessor for INMediaItemType()
{
  if (!qword_24638)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_24638);
    }
  }
}

void *sub_2DA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2E60(uint64_t a1, uint64_t a2)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return _swift_task_switch(sub_2E80, 0, 0);
}

uint64_t sub_2E80()
{
  if (qword_24468 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = qword_25C90;
  v0[31] = sub_1B474();
  v0[32] = sub_3830(&qword_24650, 255, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  v0[28] = v2;

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_3004;

  return v5(v0 + 28);
}

uint64_t sub_3004(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 328) = a1;

  sub_3678((v2 + 224));

  return _swift_task_switch(sub_310C, 0, 0);
}

uint64_t sub_310C()
{
  v1 = sub_1A8A8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_34C0(v3, (v0 + 2));
      *(swift_task_alloc() + 16) = v0 + 2;
      sub_1B754();

      sub_3524((v0 + 2));
      v3 += 208;
      --v2;
    }

    while (v2);
  }

  v4 = type metadata accessor for AudioHintsGenerator();
  v5 = swift_allocObject();
  v0[36] = v4;
  v0[37] = sub_3830(&qword_24658, 255, type metadata accessor for AudioHintsGenerator, &unk_1C2D8);
  v0[33] = v5;
  sub_1B744();

  sub_3678(v0 + 33);
  sub_3578(&qword_24660, &qword_1C0F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BF10;
  sub_1B764();

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_3578(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_35C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_3624()
{
  result = qword_24678;
  if (!qword_24678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24678);
  }

  return result;
}

uint64_t sub_3678(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_36C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalDefinition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3728(uint64_t a1)
{
  v2 = type metadata accessor for SignalDefinition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3578(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_37EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_3830(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3878(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_38DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_38F4(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_3914, 0, 0);
}

uint64_t sub_3914()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v1[3];
  v0[12] = v3;
  v0[13] = v1[4];
  v0[14] = sub_37EC(v1, v3);
  v0[15] = sub_1B564();
  v0[16] = v4;
  v0[17] = swift_getObjectType();
  v0[18] = *(v2 + 16);
  v0[19] = *(v2 + 24);

  v6 = sub_1B954();

  return _swift_task_switch(sub_39F4, v6, v5);
}

uint64_t sub_39F4()
{
  sub_1B814();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_3A7C, 0, 0);
}

uint64_t sub_3A7C()
{
  if (*(v0 + 72))
  {
    sub_3D98((v0 + 48), (v0 + 16));
    sub_3578(&qword_246A8, qword_1C130);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1BF10;
    sub_3D98((v0 + 16), (v1 + 32));
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = *(v0 + 88);
    sub_3D38(v0 + 48, &qword_246A0, &qword_1CB00);
    *(v0 + 160) = sub_1B564();
    *(v0 + 168) = v5;
    *(v0 + 176) = swift_getObjectType();
    *(v0 + 184) = *(v4 + 16);
    *(v0 + 192) = *(v4 + 24);

    v7 = sub_1B954();

    return _swift_task_switch(sub_3BE0, v7, v6);
  }
}

uint64_t sub_3BE0()
{
  sub_13910(*(v0 + 184), *(v0 + 192), *(v0 + 176), *(v0 + 168));
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_3C68, 0, 0);
}

uint64_t sub_3C68()
{
  if (*(v0 + 72))
  {
    sub_3D98((v0 + 48), (v0 + 16));
    sub_3578(&qword_246A8, qword_1C130);
    v1 = swift_allocObject();
    *(v1 + 1) = xmmword_1BF10;
    sub_3D98((v0 + 16), v1 + 2);
  }

  else
  {
    sub_3D38(v0 + 48, &qword_246A0, &qword_1CB00);
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_3D38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3578(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_3D98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3DC0(uint64_t a1, void *a2)
{
  v3 = sub_3578(&qword_246B0, &unk_1C1A0);
  __chkstk_darwin(v3 - 8);
  v5 = (v24 - v4);
  v6 = sub_1B4B4();
  if (*(v6 + 16) && (v7 = sub_9D7C(0x6449707061, 0xE500000000000000), (v8 & 1) != 0))
  {
    sub_41F8(*(v6 + 56) + 32 * v7, v25);

    if (swift_dynamicCast())
    {
      v10 = v24[0];
      v9 = v24[1];
LABEL_18:
      *v5 = v10;
      goto LABEL_19;
    }
  }

  else
  {
  }

  sub_37EC(a2, a2[3]);
  if (sub_1B574() == 0x6973754D79616C70 && v11 == 0xE900000000000063)
  {
  }

  else
  {
    v13 = sub_1BAB4();

    if ((v13 & 1) == 0)
    {
      sub_37EC(a2, a2[3]);
      if (sub_1B574() != 0x646F504179616C70 || v14 != 0xEC00000074736163)
      {
        v15 = sub_1BAB4();

        if (v15)
        {
          goto LABEL_17;
        }

        sub_37EC(a2, a2[3]);
        if (sub_1B574() != 0x4E65685479616C70 || v20 != 0xEB00000000737765)
        {
          v21 = sub_1BAB4();

          if ((v21 & 1) == 0)
          {
            sub_37EC(a2, a2[3]);
            if (sub_1B574() == 0x676E6F5374616877 && v22 == 0xEE00736968547349)
            {
            }

            else
            {
              v23 = sub_1BAB4();

              if ((v23 & 1) == 0)
              {
                *v5 = 0x6C7070612E6D6F63;
                v9 = 0xEF636973754D2E65;
                goto LABEL_19;
              }
            }

            v9 = 0x800000000001D0C0;
            v10 = 0xD00000000000001ALL;
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

LABEL_17:
      v9 = 0x800000000001D0E0;
      v10 = 0xD000000000000012;
      goto LABEL_18;
    }
  }

  *v5 = 0x6C7070612E6D6F63;
  v9 = 0xEE00697269732E65;
LABEL_19:
  v5[1] = v9;
  v16 = enum case for Image.appIcon(_:);
  v17 = sub_1B774();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v5, v16, v17);
  (*(v18 + 56))(v5, 0, 1, v17);
  return sub_1B784();
}

uint64_t sub_41F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for SongNameParameterBuilder(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SongNameParameterBuilder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_43C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_43E8, 0, 0);
}

uint64_t sub_43E8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v18 = *(v0 + 16);
    v19 = enum case for IntentParameter.ignore(_:);
    goto LABEL_40;
  }

  v2 = v1;
  v3 = *(v0 + 24);
  v4 = [v2 mediaItems];
  if (v4)
  {
    v5 = v4;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v6 = sub_1B944();

    v37 = v0;
    if (v6 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1BA84())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = sub_1BA64();
        }

        else
        {
          if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v9 title];
        if (v12)
        {
          v13 = v12;
          v14 = sub_1B8D4();
          v16 = v15;

          v17 = HIBYTE(v16) & 0xF;
          if ((v16 & 0x2000000000000000) == 0)
          {
            v17 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (v17)
          {

            v0 = v37;
            goto LABEL_23;
          }
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:

    v0 = v37;
  }

  v10 = [v2 mediaContainer];
  if (v10)
  {
LABEL_23:
    if ([v10 type] == &dword_0 + 1 || objc_msgSend(v10, "type") == &dword_0 + 2)
    {
      v20 = [v10 title];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1B8D4();
        v24 = v23;

        v25 = v22 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = 0;
        v24 = 0xE000000000000000;
      }

      v26 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v26 = v25;
      }

      if (v26)
      {
        v27 = [v10 title];
        v28 = *(v0 + 16);
        if (v27)
        {
          v29 = v27;
          v30 = sub_1B8D4();
          v32 = v31;

          *(v28 + 24) = &type metadata for String;
          if (v32)
          {

LABEL_38:
            v18 = *(v0 + 16);
            *v18 = v30;
            v18[1] = v32;
            v33 = &enum case for IntentParameter.directAssignment(_:);
            goto LABEL_39;
          }
        }

        else
        {
          *(v28 + 24) = &type metadata for String;
        }

        v30 = 0;
        v32 = 0xE000000000000000;
        goto LABEL_38;
      }
    }
  }

  v18 = *(v0 + 16);

  v33 = &enum case for IntentParameter.ignore(_:);
LABEL_39:
  v19 = *v33;
LABEL_40:
  v34 = sub_1B4E4();
  (*(*(v34 - 8) + 104))(v18, v19, v34);
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_4778()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C220, 0, v0);
}

uint64_t sub_47E0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_4828@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10[1] = a3;
  v5 = sub_1B844();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37EC(a2, a2[3]);
  sub_13730(*(a1 + 88));
  sub_E47C(_swiftEmptyArrayStorage);
  (*(v6 + 104))(v8, enum case for Objective.discoverability(_:), v5);
  sub_1B6F4();

  return (*(v6 + 8))(v8, v5);
}

void *sub_499C(void (*a1)(__int128 *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = a3 + 32;
  a1(&v12, a3 + 32, a2);
  while (!v3)
  {
    if (v13)
    {
      sub_38DC(&v12, v14);
      sub_38DC(v14, &v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_9AB0(0, v6[2] + 1, 1, v6);
      }

      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        v6 = sub_9AB0((v9 > 1), v10 + 1, 1, v6);
      }

      v6[2] = v10 + 1;
      sub_38DC(&v12, &v6[5 * v10 + 4]);
    }

    else
    {
      sub_3D38(&v12, &qword_24790, qword_1C328);
    }

    v7 += 208;
    if (!--v4)
    {
      return v6;
    }

    a1(&v12, v7, v8);
  }

  return v6;
}

uint64_t sub_4B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2BE4;

  return sub_52C0(a1, a2, a3);
}

uint64_t sub_4C44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioHintsGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4CAC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_4D08(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_4D08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4DD4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_41F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3678(v11);
  return v7;
}

unint64_t sub_4DD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4EE0(a5, a6);
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
    result = sub_1BA74();
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

void *sub_4EE0(uint64_t a1, unint64_t a2)
{
  v3 = sub_4F2C(a1, a2);
  sub_505C(&off_20DD0);
  return v3;
}

void *sub_4F2C(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_5148(v5, 0);
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

  result = sub_1BA74();
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
        v10 = sub_1B924();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_5148(v10, 0);
        result = sub_1BA34();
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

uint64_t sub_505C(uint64_t result)
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

  result = sub_51BC(result, v11, 1, v3);
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

void *sub_5148(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_3578(&qword_24788, &qword_1C320);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_51BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3578(&qword_24788, &qword_1C320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

_BYTE **sub_52B0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_52C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a1;
  v3[34] = a3;
  sub_3578(&qword_24770, &qword_1C308);
  v3[35] = swift_task_alloc();
  v4 = sub_1B454();
  v3[36] = v4;
  v3[37] = *(v4 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_53C4, 0, 0);
}

uint64_t sub_53C4()
{
  v100 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  sub_37EC(v2, v2[3]);
  sub_1B494();
  v3 = sub_1B554();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 280);
  if (v5 == 1)
  {
    sub_3D38(v6, &qword_24770, &qword_1C308);
LABEL_34:
    if (qword_24400 != -1)
    {
      swift_once();
    }

    v71 = sub_1B894();
    sub_5D50(v71, static Logger.audio);
    v72 = sub_1B874();
    v73 = sub_1B9A4();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_0, v72, v73, "AudioHintsGenerator#generateCandidateSuggestions Received an Interaction which was not PlayMedia interaction. Not returning any suggestions.", v74, 2u);
    }

    goto LABEL_39;
  }

  if ((*(v4 + 88))(v6, v3) != enum case for InteractionIntents.siriInteractionIntents(_:))
  {
    (*(v4 + 8))(*(v0 + 280), v3);
    goto LABEL_34;
  }

  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 288);
  v10 = *(v0 + 296);
  v11 = *(v0 + 280);
  (*(v4 + 96))(v11, v3);
  sub_3578(&qword_24778, &qword_1C310);

  (*(v10 + 32))(v7, v11, v9);
  (*(v10 + 16))(v8, v7, v9);
  if ((*(v10 + 88))(v8, v9) != enum case for SiriSuggestions.Intent.inIntent(_:))
  {
    v21 = *(v0 + 304);
    v22 = *(v0 + 288);
    v23 = *(*(v0 + 296) + 8);
    v23(*(v0 + 312), v22);
    v23(v21, v22);
    goto LABEL_34;
  }

  v12 = *(v0 + 304);
  (*(*(v0 + 296) + 96))(v12, *(v0 + 288));
  v13 = *v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    v24 = *(v0 + 312);
    v25 = *(v0 + 288);
    v26 = *(v0 + 296);

    (*(v26 + 8))(v24, v25);
    goto LABEL_34;
  }

  v15 = v14;
  v16 = v13;
  v17 = [v15 verb];
  v18 = sub_1B8D4();
  v20 = v19;

  if (v18 == 0x6964654D79616C50 && v20 == 0xE900000000000061)
  {
  }

  else
  {
    v27 = sub_1BAB4();

    if ((v27 & 1) == 0)
    {
      (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

      goto LABEL_34;
    }
  }

  sub_37EC(*(v0 + 264), v2[3]);
  v28 = sub_1B4A4();
  sub_8240(v28, v0 + 224);
  if (qword_24400 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v29 = sub_1B894();
    sub_5D50(v29, static Logger.audio);
    v30 = sub_1B874();
    v31 = sub_1B984();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v87 = v33;
      *v32 = 136315138;
      sub_7E58();
      sub_3578(&qword_24780, &qword_1C318);
      v34 = v16;
      v35 = sub_1B8A4();
      v37 = v36;

      v38 = v35;
      v16 = v34;
      v39 = sub_4D08(v38, v37, &v87);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_0, v30, v31, "AudioHintsGenerator#generateCandidateSuggestions Received execution parameters:%s", v32, 0xCu);
      sub_3678(v33);
    }

    if (*(v0 + 240))
    {
      break;
    }

    v86 = v16;
    v46 = *(v0 + 232);
    v47 = sub_1AD40(v46);
    v48 = sub_1B874();
    v49 = sub_1B984();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134218240;
      *(v50 + 4) = *(v47 + 16);
      *(v50 + 12) = 2048;
      *(v50 + 14) = v46;
      _os_log_impl(&dword_0, v48, v49, "AudioHintsGenerator#generateCandidateSuggestions Found %ld candidates which are enabled for INMediaItemType: %ld", v50, 0x16u);
    }

    v16 = *(v47 + 16);
    if (!v16)
    {
LABEL_43:

      v78 = sub_1B874();
      v79 = sub_1B984();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 134217984;
        *(v80 + 4) = _swiftEmptyArrayStorage[2];

        _os_log_impl(&dword_0, v78, v79, "AudioHintsGenerator#generateCandidateSuggestions Returning %ld candidates which are qualified for the current interaction.", v80, 0xCu);
      }

      else
      {
      }

      v81 = *(v0 + 312);
      v83 = *(v0 + 288);
      v82 = *(v0 + 296);
      v84 = *(v0 + 272);
      v85 = swift_task_alloc();
      *(v85 + 16) = v84;
      v75 = sub_499C(sub_5D88, v85, _swiftEmptyArrayStorage);

      (*(v82 + 8))(v81, v83);
      goto LABEL_40;
    }

    v51 = 0;
    v52 = v47 + 32;
    while (v51 < *(v47 + 16))
    {
      sub_34C0(v52, v0 + 16);
      if ((*(v0 + 152))(v0 + 224))
      {
        v53 = *(v0 + 192);
        v97 = *(v0 + 176);
        v98 = v53;
        v99 = *(v0 + 208);
        v54 = *(v0 + 128);
        v93 = *(v0 + 112);
        v94 = v54;
        v55 = *(v0 + 160);
        v95 = *(v0 + 144);
        v96 = v55;
        v56 = *(v0 + 64);
        v89 = *(v0 + 48);
        v90 = v56;
        v57 = *(v0 + 96);
        v91 = *(v0 + 80);
        v92 = v57;
        v58 = *(v0 + 32);
        v87 = *(v0 + 16);
        v88 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A39C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v60 = _swiftEmptyArrayStorage[2];
        v59 = _swiftEmptyArrayStorage[3];
        if (v60 >= v59 >> 1)
        {
          sub_1A39C((v59 > 1), v60 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v60 + 1;
        v61 = &_swiftEmptyArrayStorage[26 * v60];
        v61[2] = v87;
        v62 = v88;
        v63 = v89;
        v64 = v91;
        v61[5] = v90;
        v61[6] = v64;
        v61[3] = v62;
        v61[4] = v63;
        v65 = v92;
        v66 = v93;
        v67 = v95;
        v61[9] = v94;
        v61[10] = v67;
        v61[7] = v65;
        v61[8] = v66;
        v68 = v96;
        v69 = v97;
        v70 = v99;
        v61[13] = v98;
        v61[14] = v70;
        v61[11] = v68;
        v61[12] = v69;
      }

      else
      {
        sub_3524(v0 + 16);
      }

      ++v51;
      v52 += 208;
      if (v16 == v51)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_48:
    swift_once();
  }

  v40 = sub_1B874();
  v41 = sub_1B9A4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "AudioHintsGenerator#generateCandidateSuggestions Failed to resolve a MediaItemType on the interaction. Not returning any suggestions.", v42, 2u);
  }

  v43 = *(v0 + 312);
  v45 = *(v0 + 288);
  v44 = *(v0 + 296);

  (*(v44 + 8))(v43, v45);
LABEL_39:
  v75 = _swiftEmptyArrayStorage;
LABEL_40:

  v76 = *(v0 + 8);

  return v76(v75);
}

uint64_t sub_5D50(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5DAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B304();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v10 = v45 - v9;
  __chkstk_darwin(v8);
  v56 = v45 - v11;
  sub_41F8(a1, &v54);
  v12 = &type metadata for String;
  result = swift_dynamicCast();
  if (result)
  {
    v14 = sub_1B8E4();
    v46 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v5;
    v15 = v14;
    v17 = v16;

    v54 = v15;
    v55 = v17;
    v52 = 2128237;
    v53 = 0xE300000000000000;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_6244();
    v18 = sub_1B9D4();
    v48 = a2;
    v20 = v19;

    v54 = v18;
    v55 = v20;
    v52 = 543516788;
    v53 = 0xE400000000000000;
    v50 = 0;
    v51 = 0xE000000000000000;
    v21 = sub_1B9D4();
    v23 = v22;

    v54 = v21;
    v55 = v23;
    v52 = 0x73696C79616C7020;
    v53 = 0xE900000000000074;
    v50 = 0;
    v51 = 0xE000000000000000;
    v24 = sub_1B9D4();
    v25 = v49;
    v45[1] = v6;
    v27 = v26;

    v54 = v24;
    v55 = v27;
    v52 = 0x6E6F697461747320;
    v53 = 0xE800000000000000;
    v50 = 0;
    v51 = 0xE000000000000000;
    v28 = sub_1B9D4();
    v45[0] = v2;
    v30 = v29;

    v54 = v28;
    v55 = v30;
    v52 = 32;
    v53 = 0xE100000000000000;
    v50 = 0;
    v51 = 0xE000000000000000;
    v31 = sub_1B9D4();
    v33 = v32;

    sub_1B2C4();
    v34 = v46;
    sub_1B2B4();
    v35 = v56;
    sub_1B2E4();
    v36 = *(v25 + 8);
    v37 = v34;
    v38 = v47;
    v36(v37, v47);
    v36(v10, v38);
    v39 = *(v25 + 32);
    v39(v10, v35, v38);
    v40 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v41 = swift_allocObject();
    v39((v41 + v40), v10, v38);
    v42 = sub_6388(v31, v33, sub_6320, v41);
    v44 = v43;
    a2 = v48;
  }

  else
  {
    v12 = 0;
    v42 = 0;
    v44 = 0;
    a2[2] = 0;
  }

  a2[3] = v12;
  *a2 = v42;
  a2[1] = v44;
  return result;
}

unint64_t sub_6244()
{
  result = qword_24798;
  if (!qword_24798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24798);
  }

  return result;
}

uint64_t sub_6298()
{
  v1 = sub_1B304();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_6388(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v21 = a4;
  v19 = 0;
  v20 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_1BA44();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v11 = v18 + v9;
        }

        else
        {
          v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_1BA74();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      v15 = a3(v12);
      if (v4)
      {
      }

      if (v15)
      {
        sub_1B8F4();
      }

      v9 += v14;
      if (v9 >= v6)
      {
        return v19;
      }
    }
  }

  return 0;
}

uint64_t sub_6568(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_6588, 0, 0);
}

uint64_t sub_6588()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = [v2 mediaContainer];
    if (v4)
    {
      v5 = v4;
      if ([v4 type] == &dword_4 + 2)
      {
        v6 = [v5 title];
        if (v6)
        {
          v7 = v6;
          v8 = sub_1B8D4();
          v10 = v9;

          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = 0;
          v10 = 0xE000000000000000;
        }

        v14 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v14 = v11;
        }

        if (v14)
        {
          v15 = [v5 title];
          v16 = *(v0 + 16);
          if (v15)
          {
            v17 = v15;
            v18 = sub_1B8D4();
            v20 = v19;

            *(v16 + 24) = &type metadata for String;
            if (v20)
            {
              v21 = *(v0 + 24);

LABEL_39:
              v12 = *(v0 + 16);
              *v12 = v18;
              v12[1] = v20;
              v40 = &enum case for IntentParameter.directAssignment(_:);
LABEL_43:
              v13 = *v40;
              goto LABEL_44;
            }
          }

          else
          {
            *(v16 + 24) = &type metadata for String;
          }

          v39 = *(v0 + 24);

          goto LABEL_38;
        }
      }
    }

    v22 = [v2 mediaItems];
    if (!v22)
    {
      v27 = *(v0 + 24);
      goto LABEL_42;
    }

    v23 = v22;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v24 = sub_1B944();

    if (v24 >> 62)
    {
      result = sub_1BA84();
      if (result)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_18:
        if ((v24 & 0xC000000000000001) != 0)
        {
          v26 = sub_1BA64();
        }

        else
        {
          if (!*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v26 = *(v24 + 32);
        }

        v27 = v26;

        if ([v27 type] == &dword_4 + 3 || objc_msgSend(v27, "type") == &dword_4 + 2)
        {
          v28 = [v27 artist];
          if (v28)
          {
            v29 = v28;
            v30 = sub_1B8D4();
            v32 = v31;

            v33 = v30 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = 0;
            v32 = 0xE000000000000000;
          }

          v34 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v34 = v33;
          }

          if (v34)
          {
            v35 = [v27 artist];
            v36 = *(v0 + 16);
            if (v35)
            {
              v37 = v35;
              v18 = sub_1B8D4();
              v20 = v38;

              *(v36 + 24) = &type metadata for String;
              if (v20)
              {

                goto LABEL_39;
              }
            }

            else
            {
              *(v36 + 24) = &type metadata for String;
            }

LABEL_38:
            v18 = 0;
            v20 = 0xE000000000000000;
            goto LABEL_39;
          }
        }

LABEL_42:
        v12 = *(v0 + 16);
        v40 = &enum case for IntentParameter.ignore(_:);
        goto LABEL_43;
      }
    }

    v27 = *(v0 + 24);

    goto LABEL_42;
  }

  v12 = *(v0 + 16);
  v13 = enum case for IntentParameter.ignore(_:);
LABEL_44:
  v41 = sub_1B4E4();
  (*(*(v41 - 8) + 104))(v12, v13, v41);
  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_6958()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C400, 0, v0);
}

uint64_t sub_69C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_69E0, 0, 0);
}

uint64_t sub_69E0()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    v4 = [v2 mediaItems];
    if (v4)
    {
      v5 = v4;
      sub_47E0(0, &qword_246C0, INMediaItem_ptr);
      v6 = sub_1B944();

      v65 = v0;
      if (v6 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1BA84())
      {
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_1BA64();
          }

          else
          {
            if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_19;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = [v9 title];
          if (v12)
          {
            v13 = v12;
            v14 = sub_1B8D4();
            v16 = v15;

            v17 = HIBYTE(v16) & 0xF;
            if ((v16 & 0x2000000000000000) == 0)
            {
              v17 = v14 & 0xFFFFFFFFFFFFLL;
            }

            if (v17)
            {

              v0 = v65;
              goto LABEL_23;
            }
          }

          ++v8;
          if (v11 == i)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

LABEL_21:

      v0 = v65;
    }

    v10 = [v2 mediaContainer];
    if (v10)
    {
LABEL_23:
      if ([v10 type] == &dword_0 + 1)
      {
        v20 = [v10 artist];
        if (v20)
        {
          v21 = v20;
          v22 = sub_1B8D4();
          v24 = v23;

          v25 = v22 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = 0;
          v24 = 0xE000000000000000;
        }

        v26 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v26 = v25;
        }

        if (v26)
        {
          goto LABEL_45;
        }
      }

      if ([v10 type] == &dword_0 + 2)
      {
        v27 = [v10 artist];
        if (v27)
        {
          v28 = v27;
          v29 = sub_1B8D4();
          v31 = v30;

          v32 = v29 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = 0;
          v31 = 0xE000000000000000;
        }

        v33 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v33 = v32;
        }

        if (v33)
        {
          goto LABEL_45;
        }
      }

      if ([v10 type] == &dword_0 + 3)
      {
        v34 = [v10 title];
        if (v34)
        {
          v35 = v34;
          v36 = sub_1B8D4();
          v38 = v37;

          v39 = v36 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = 0;
          v38 = 0xE000000000000000;
        }

        v40 = HIBYTE(v38) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v40 = v39;
        }

        if (v40)
        {
LABEL_45:
          v41 = [v10 artist];
          if (v41)
          {
LABEL_46:
            v42 = v41;
            v43 = sub_1B8D4();
            v45 = v44;

LABEL_58:
            v58 = *(v0 + 48);
            v59 = *(v0 + 56);
            v58[3] = sub_3578(&qword_247A0, &qword_1C488);

            *v58 = v43;
            v58[1] = v45;
            v60 = enum case for IntentParameter.directAssignment(_:);
            v61 = sub_1B4E4();
            (*(*(v61 - 8) + 104))(v58, v60, v61);
            goto LABEL_62;
          }

LABEL_57:
          v43 = 0;
          v45 = 0;
          goto LABEL_58;
        }
      }

      if ([v10 type] == &dword_10)
      {
        v46 = [v10 title];
        if (v46)
        {
          v47 = v46;
          v48 = sub_1B8D4();
          v50 = v49;

          v51 = v48 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = 0;
          v50 = 0xE000000000000000;
        }

        v52 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v52 = v51;
        }

        if (v52)
        {
          v53 = [v10 identifier];
          if (v53)
          {
            v54 = v53;
            v55 = sub_1B8D4();
            v57 = v56;

            *(v0 + 16) = v55;
            *(v0 + 24) = v57;
            *(v0 + 32) = 0xD000000000000018;
            *(v0 + 40) = 0x800000000001D140;
            sub_6244();
            LOBYTE(v54) = sub_1B9E4();

            if (v54)
            {
              v41 = [v10 title];
              if (v41)
              {
                goto LABEL_46;
              }

              goto LABEL_57;
            }
          }
        }
      }

      v18 = *(v0 + 48);
    }

    else
    {
      v18 = *(v0 + 48);
    }

    v19 = enum case for IntentParameter.ignore(_:);
  }

  else
  {
    v18 = *(v0 + 48);
    v19 = enum case for IntentParameter.ignore(_:);
  }

  v62 = sub_1B4E4();
  (*(*(v62 - 8) + 104))(v18, v19, v62);
LABEL_62:
  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_6F54()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C480, 0, v0);
}

uint64_t *FirstPartyMusicSubscriber.__allocating_init(subscriptionProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_7020(a1, v3);
  v6 = sub_7A34(v5, v1, v3, v4);
  sub_3678(a1);
  return v6;
}

uint64_t sub_7020(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *FirstPartyMusicSubscriber.init(subscriptionProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_7020(a1, v3);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_79C4(v7, v1, v3, v4);
  sub_3678(a1);
  return v9;
}

uint64_t FirstPartyMusicSubscriber.filter(suggestion:environment:)()
{
  v1[2] = v0;
  v2 = sub_1B894();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1B3A4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_1B3C4();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1B374();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_7330, 0, 0);
}

uint64_t sub_7330()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_37EC((v0[2] + 16), *(v0[2] + 40));
  sub_1B3B4();
  sub_3578(&qword_247A8, &qword_1C4B8);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C490;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, enum case for MusicSubscriptionStatus.unknown(_:), v3);
  v8(v7 + v4, enum case for MusicSubscriptionStatus.notSubscribed(_:), v3);
  sub_1B364();
  LOBYTE(v4) = sub_7788(v1, v6, &type metadata accessor for MusicSubscriptionStatus, &qword_24868, &type metadata accessor for MusicSubscriptionStatus, &protocol conformance descriptor for MusicSubscriptionStatus);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v2 + 8))(v1, v3);
  if (v4 & 1) != 0 || (v10 = v0[7], v9 = v0[8], v11 = v0[6], sub_3578(&qword_247B0, &unk_1C4C0), v12 = *(v10 + 72), v13 = (*(v10 + 80) + 32) & ~*(v10 + 80), v14 = swift_allocObject(), *(v14 + 16) = xmmword_1C4A0, v15 = v14 + v13, v16 = *(v10 + 104), v16(v15, enum case for MusicSubscriptionType.notSubscribed(_:), v11), v16(v15 + v12, enum case for MusicSubscriptionType.unknown(_:), v11), v16(v15 + 2 * v12, enum case for MusicSubscriptionType.appleTVPlus(_:), v11), v16(v15 + 3 * v12, enum case for MusicSubscriptionType.match(_:), v11), v17 = v9, sub_1B354(), LOBYTE(v9) = sub_7788(v9, v14, &type metadata accessor for MusicSubscriptionType, &qword_24860, &type metadata accessor for MusicSubscriptionType, &protocol conformance descriptor for MusicSubscriptionType), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), (*(v10 + 8))(v17, v11), (v9))
  {
    sub_1B864();
    v18 = sub_1B874();
    v19 = sub_1B994();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Filtering out suggestion because Apple Music subscription type/status is either unknown or notSubscribed", v20, 2u);
    }

    v22 = v0[4];
    v21 = v0[5];
    v23 = v0[3];

    (*(v22 + 8))(v21, v23);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v0[13] + 8))(v0[14], v0[12]);

  v25 = v0[1];

  return v25(v24);
}

BOOL sub_7788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_7B5C(a4, a5, a6);
  }

  while ((sub_1B8C4() & 1) == 0);
  return v10 != v11;
}

uint64_t FirstPartyMusicSubscriber.__deallocating_deinit()
{
  sub_3678((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_78E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2BE4;

  return FirstPartyMusicSubscriber.filter(suggestion:environment:)();
}

uint64_t sub_7978(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_79C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  v7 = sub_35C0(a2 + 2);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  return a2;
}

uint64_t *sub_7A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FirstPartyMusicSubscriber();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  v11 = sub_35C0(v10 + 2);
  (*(v7 + 32))(v11, v9, a3);
  return v10;
}

uint64_t sub_7B5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Logger.audio.unsafeMutableAddressor()
{
  if (qword_24400 != -1)
  {
    swift_once();
  }

  v0 = sub_1B894();

  return sub_5D50(v0, static Logger.audio);
}

uint64_t sub_7C08()
{
  v0 = sub_1B894();
  sub_7D34(v0, static Logger.audio);
  sub_5D50(v0, static Logger.audio);
  return sub_1B884();
}

uint64_t static Logger.audio.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_24400 != -1)
  {
    swift_once();
  }

  v2 = sub_1B894();
  v3 = sub_5D50(v2, static Logger.audio);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_7D34(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 sub_7D98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7DAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_7E00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_7E58()
{
  sub_3578(&qword_24870, &qword_1C5B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C540;
  strcpy((inited + 32), "songIsDisliked");
  *(inited + 47) = -18;
  v2 = *v0;
  v3 = sub_3578(&qword_24878, &qword_1C5C0);
  *(inited + 72) = v3;
  v4 = sub_8168(&qword_24880, &protocol witness table for Bool, &protocol conformance descriptor for <A> A?);
  *(inited + 80) = v4;
  v5 = sub_8168(&qword_24888, &protocol witness table for Bool, &protocol conformance descriptor for <A> A?);
  *(inited + 48) = v2;
  *(inited + 88) = v5;
  *(inited + 96) = 0x694C7349676E6F73;
  *(inited + 104) = 0xEB0000000064656BLL;
  v6 = v0[1];
  *(inited + 136) = v3;
  *(inited + 144) = v4;
  *(inited + 112) = v6;
  *(inited + 152) = v5;
  strcpy((inited + 160), "mediaItemType");
  *(inited + 174) = -4864;
  v7 = sub_3578(&qword_24890, &qword_1C5C8);
  *(inited + 200) = v7;
  v8 = sub_81D4(&qword_24898, &protocol witness table for Int, &protocol conformance descriptor for <A> A?);
  *(inited + 208) = v8;
  v9 = sub_81D4(&qword_248A0, &protocol witness table for Int, &protocol conformance descriptor for <A> A?);
  *(inited + 216) = v9;
  v10 = v0[16];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v0 + 1);
  }

  *(inited + 176) = v11;
  *(inited + 184) = v10 & 1;
  *(inited + 224) = 0xD000000000000016;
  *(inited + 232) = 0x800000000001D1E0;
  v12 = v0[17];
  *(inited + 264) = v3;
  *(inited + 272) = v4;
  *(inited + 240) = v12;
  *(inited + 280) = v5;
  *(inited + 288) = 0x6E654C6575657571;
  *(inited + 328) = v7;
  *(inited + 336) = v8;
  v13 = *(v0 + 3);
  *(inited + 296) = 0xEB00000000687467;
  *(inited + 304) = v13;
  *(inited + 312) = v0[32];
  *(inited + 344) = v9;
  *(inited + 352) = 0xD000000000000016;
  *(inited + 360) = 0x800000000001D200;
  v14 = v0[33];
  *(inited + 392) = &type metadata for Bool;
  *(inited + 400) = &protocol witness table for Bool;
  *(inited + 408) = &protocol witness table for Bool;
  *(inited + 368) = v14;
  v15 = sub_E330(inited);
  swift_setDeallocating();
  sub_3578(&qword_248A8, &unk_1C5D0);
  swift_arrayDestroy();
  return v15;
}

uint64_t sub_8120(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_8168(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_8120(&qword_24878, &qword_1C5C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_81D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_8120(&qword_24890, &qword_1C5C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v5 = 2;
    goto LABEL_19;
  }

  v4 = sub_9D7C(0x69447349676E6F73, 0xEE0064656B696C73);
  v5 = 2;
  if (v6)
  {
    sub_860C(*(a1 + 56) + 48 * v4, v27);
    sub_3578(&qword_24780, &qword_1C318);
    if (swift_dynamicCast())
    {
      v5 = v26;
    }

    else
    {
      v5 = 2;
    }
  }

  if (!*(a1 + 16))
  {
LABEL_19:
    v8 = 2;
    v11 = 2;
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

LABEL_20:
    v13 = sub_9D7C(0x657449616964656DLL, 0xED0000657079546DLL);
    if (v14)
    {
      sub_860C(*(a1 + 56) + 48 * v13, v27);
      sub_3578(&qword_24780, &qword_1C318);
      if (swift_dynamicCast())
      {
        v15 = 0;
        v16 = v26;
        if (*(a1 + 16))
        {
          goto LABEL_26;
        }

LABEL_23:
        v17 = 0;
        v18 = 1;
        goto LABEL_36;
      }
    }

    goto LABEL_25;
  }

  v7 = sub_9D7C(0x694C7349676E6F73, 0xEB0000000064656BLL);
  v8 = 2;
  if (v9)
  {
    sub_860C(*(a1 + 56) + 48 * v7, v27);
    sub_3578(&qword_24780, &qword_1C318);
    if (swift_dynamicCast())
    {
      v8 = v26;
    }

    else
    {
      v8 = 2;
    }
  }

  if (!*(a1 + 16))
  {
    v11 = 2;
    goto LABEL_25;
  }

  v10 = sub_9D7C(0xD000000000000016, 0x800000000001D1E0);
  v11 = 2;
  if (v12)
  {
    sub_860C(*(a1 + 56) + 48 * v10, v27);
    sub_3578(&qword_24780, &qword_1C318);
    if (swift_dynamicCast())
    {
      v11 = v26;
    }

    else
    {
      v11 = 2;
    }
  }

  if (*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_25:
  v16 = 0;
  v15 = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

LABEL_26:
  v19 = sub_9D7C(0x6E654C6575657571, 0xEB00000000687467);
  if ((v20 & 1) == 0)
  {
    v17 = 0;
    v18 = 1;
    if (*(a1 + 16))
    {
      goto LABEL_33;
    }

LABEL_36:

    goto LABEL_37;
  }

  sub_860C(*(a1 + 56) + 48 * v19, v27);
  sub_3578(&qword_24780, &qword_1C318);
  v21 = swift_dynamicCast();
  if (v21)
  {
    v17 = v26;
  }

  else
  {
    v17 = 0;
  }

  v18 = v21 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

LABEL_33:
  v22 = sub_9D7C(0xD000000000000016, 0x800000000001D200);
  if ((v23 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_860C(*(a1 + 56) + 48 * v22, v27);

  sub_3578(&qword_24780, &qword_1C318);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_37:
    v25 = 0;
    goto LABEL_38;
  }

  v25 = v26;
LABEL_38:
  *a2 = v5;
  *(a2 + 1) = v8;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 17) = v11;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 33) = v25;
  return result;
}

uint64_t sub_860C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_8670()
{
  sub_3578(&qword_24960, &qword_1C618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5E0;
  *(inited + 32) = 0;
  sub_3578(&qword_24958, &qword_1C610);
  v1 = sub_1B4F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF10;
  if (qword_24420 != -1)
  {
    swift_once();
  }

  v5 = sub_5D50(v1, qword_248C0);
  v30 = *(v2 + 16);
  v31 = v5;
  v30(v4 + v3);
  *(inited + 40) = v4;
  *(inited + 48) = 2;
  if (qword_24448 != -1)
  {
    swift_once();
  }

  v6 = qword_25C70;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BF10;
  (v30)(v7 + v3, v31, v1);

  sub_A398(v7);
  *(inited + 56) = v6;
  *(inited + 64) = 3;
  v8 = qword_25C70;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BF10;
  v10 = qword_24428;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_5D50(v1, qword_248D8);
  (v30)(v9 + v3, v11, v1);
  sub_A398(v9);
  *(inited + 72) = v8;
  *(inited + 80) = 5;
  v12 = qword_25C70;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BF10;
  (v30)(v13 + v3, v31, v1);

  sub_A398(v13);
  *(inited + 88) = v12;
  *(inited + 96) = 4;
  v14 = qword_25C70;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BF10;
  (v30)(v15 + v3, v31, v1);

  sub_A398(v15);
  *(inited + 104) = v14;
  *(inited + 112) = 6;
  v16 = qword_25C70;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BF10;
  (v30)(v17 + v3, v31, v1);

  sub_A398(v17);
  *(inited + 120) = v16;
  *(inited + 128) = 7;
  v18 = qword_25C70;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BF10;
  (v30)(v19 + v3, v31, v1);

  sub_A398(v19);
  *(inited + 136) = v18;
  *(inited + 144) = 8;
  v20 = qword_25C70;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BF10;
  (v30)(v21 + v3, v31, v1);

  sub_A398(v21);
  *(inited + 152) = v20;
  *(inited + 160) = 9;
  v22 = qword_25C70;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BF10;
  (v30)(v23 + v3, v31, v1);

  sub_A398(v23);
  *(inited + 168) = v22;
  *(inited + 176) = 10;
  v24 = qword_25C70;
  *(inited + 184) = qword_25C70;
  *(inited + 192) = 13;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BF10;
  (v30)(v25 + v3, v31, v1);
  swift_bridgeObjectRetain_n();
  sub_A398(v25);
  *(inited + 200) = v24;
  *(inited + 208) = 12;
  v26 = qword_25C70;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BF10;
  (v30)(v27 + v3, v31, v1);

  sub_A398(v27);
  *(inited + 216) = v26;
  v28 = sub_D8C4(inited);
  swift_setDeallocating();
  sub_3578(&qword_24968, &qword_1C620);
  result = swift_arrayDestroy();
  off_248B0[0] = v28;
  return result;
}

uint64_t sub_8CE8()
{
  v35 = sub_1B5B4();
  *&v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = v28 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1B544();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3578(&qword_24960, &qword_1C618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4A0;
  *(inited + 32) = 3;
  v36 = inited + 32;
  v4 = sub_3578(&qword_24958, &qword_1C610);
  v5 = sub_1B4F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 72);
  v34 = 2 * v9;
  v40 = v7;
  v10 = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C490;
  v12 = v11 + v8;
  if (qword_24430 != -1)
  {
    swift_once();
  }

  v13 = sub_5D50(v5, qword_248F0);
  v14 = *(v6 + 16);
  v29 = v13;
  v14(v12);
  if (qword_24440 != -1)
  {
    swift_once();
  }

  v39 = sub_5D50(v5, qword_24920);
  v14(v12 + v9);
  *(inited + 40) = v11;
  *(inited + 48) = 4;
  v37 = v10;
  v38 = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BF10;
  v28[1] = sub_1B7F4();
  if (qword_24418 != -1)
  {
    swift_once();
  }

  v16 = v31;
  v17 = sub_5D50(v31, qword_25C58);
  v18 = v30;
  (*(v30 + 16))(v2, v17, v16);
  v19 = v32;
  sub_1B524();
  (*(v18 + 8))(v2, v16);
  sub_1B794();
  (*(v33 + 8))(v19, v35);
  *(inited + 56) = v15;
  *(inited + 64) = 8;
  v20 = v38;
  v35 = 3 * v38;
  v21 = swift_allocObject();
  v33 = xmmword_1C5F0;
  *(v21 + 16) = xmmword_1C5F0;
  v22 = v29;
  (v14)(v21 + v8, v29, v5);
  (v14)(v21 + v8 + v20, v39, v5);
  if (qword_24420 != -1)
  {
    swift_once();
  }

  v23 = sub_5D50(v5, qword_248C0);
  v24 = v34;
  (v14)(v21 + v8 + v34, v23, v5);
  *(inited + 72) = v21;
  *(inited + 80) = 9;
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  (v14)(v25 + v8, v22, v5);
  (v14)(v25 + v8 + v38, v39, v5);
  (v14)(v25 + v8 + v24, v23, v5);
  *(inited + 88) = v25;
  v26 = sub_D8C4(inited);
  swift_setDeallocating();
  sub_3578(&qword_24968, &qword_1C620);
  result = swift_arrayDestroy();
  off_248B8[0] = v26;
  return result;
}

uint64_t sub_9278()
{
  v0 = sub_1B514();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B544();
  sub_7D34(v4, qword_25C58);
  sub_5D50(v4, qword_25C58);
  (*(v1 + 104))(v3, enum case for AppEntityDetails.AppEntityCount.single(_:), v0);
  return sub_1B534();
}

uint64_t sub_93BC()
{
  v0 = sub_1B4F4();
  sub_7D34(v0, qword_248C0);
  sub_5D50(v0, qword_248C0);
  sub_1B7F4();
  v1 = sub_1B4C4();
  v4[3] = v1;
  v4[4] = sub_E2E8(&qword_24978, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  v2 = sub_35C0(v4);
  (*(*(v1 - 8) + 104))(v2, enum case for CoreSignalTypes.app(_:), v1);
  sub_1B7B4();
  sub_1B7E4();
}

uint64_t sub_94EC()
{
  v0 = sub_1B4F4();
  sub_7D34(v0, qword_248D8);
  sub_5D50(v0, qword_248D8);
  sub_1B7F4();
  v1 = sub_1B4C4();
  v4[3] = v1;
  v4[4] = sub_E2E8(&qword_24978, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  v2 = sub_35C0(v4);
  (*(*(v1 - 8) + 104))(v2, enum case for CoreSignalTypes.app(_:), v1);
  sub_1B7B4();
  sub_1B7E4();
}

uint64_t sub_9674(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1B4F4();
  sub_7D34(v5, a2);
  sub_5D50(v5, a2);
  sub_1B7F4();
  a3();
  sub_1B7E4();
}

uint64_t sub_96F8()
{
  sub_3578(&qword_24958, &qword_1C610);
  v0 = sub_1B4F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5F0;
  v5 = v4 + v3;
  if (qword_24430 != -1)
  {
    swift_once();
  }

  v6 = sub_5D50(v0, qword_248F0);
  v7 = *(v1 + 16);
  v7(v5, v6, v0);
  if (qword_24438 != -1)
  {
    swift_once();
  }

  v8 = sub_5D50(v0, qword_24908);
  v7(v5 + v2, v8, v0);
  if (qword_24440 != -1)
  {
    swift_once();
  }

  v9 = sub_5D50(v0, qword_24920);
  result = (v7)(v5 + 2 * v2, v9, v0);
  qword_25C70 = v4;
  return result;
}

void *sub_98D8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3578(&qword_24958, &qword_1C610);
  v10 = *(sub_1B4F4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B4F4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_9AB0(void *result, int64_t a2, char a3, void *a4)
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
    sub_3578(&qword_24990, &qword_1C640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_3578(&qword_24998, &qword_1C648);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_9BF8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_3578(&qword_24958, &qword_1C610);
  v4 = *(sub_1B4F4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_9CF4(uint64_t a1)
{
  v1 = a1;
  sub_1BAD4();
  sub_13730(v1);
  sub_1B904();

  v2 = sub_1BAE4();

  return sub_9DF4(v1, v2);
}

unint64_t sub_9D7C(uint64_t a1, uint64_t a2)
{
  sub_1BAD4();
  sub_1B904();
  v4 = sub_1BAE4();

  return sub_A2E0(a1, a2, v4);
}

unint64_t sub_9DF4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x7974696E69666661;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6E69666661736964;
          v7 = 0xEB00000000797469;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 2036427888;
          break;
        case 3:
          v8 = 0x646F504179616C70;
          v7 = 0xEC00000074736163;
          break;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x800000000001CF50;
          break;
        case 5:
          v8 = 0x6973754D79616C70;
          v7 = 0xE900000000000063;
          break;
        case 6:
          v8 = 0x5979425879616C70;
          break;
        case 7:
          v8 = 0x6974724179616C70;
          v7 = 0xEA00000000007473;
          break;
        case 8:
          v7 = 0xE90000000000006FLL;
          v8 = 0x6964615279616C70;
          break;
        case 9:
          v7 = 0xEC0000007473696CLL;
          v8 = 0x79616C5079616C70;
          break;
        case 0xA:
          v8 = 0x4E65685479616C70;
          v7 = 0xEB00000000737765;
          break;
        case 0xB:
          v7 = 0xE500000000000000;
          v8 = 0x6572616873;
          break;
        case 0xC:
          v7 = 0xE700000000000000;
          v8 = 0x656C6666756873;
          break;
        case 0xD:
          v8 = 0x676E6F5374616877;
          v7 = 0xEE00736968547349;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x7974696E69666661;
      switch(a1)
      {
        case 1:
          v9 = 0xEB00000000797469;
          if (v8 == 0x6E69666661736964)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v9 = 0xE400000000000000;
          if (v8 != 2036427888)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v9 = 0xEC00000074736163;
          if (v8 != 0x646F504179616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v9 = 0x800000000001CF50;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v9 = 0xE900000000000063;
          if (v8 != 0x6973754D79616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          if (v8 != 0x5979425879616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v9 = 0xEA00000000007473;
          if (v8 != 0x6974724179616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v9 = 0xE90000000000006FLL;
          if (v8 != 0x6964615279616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v9 = 0xEC0000007473696CLL;
          if (v8 != 0x79616C5079616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0x4E65685479616C70;
          v9 = 0xEB00000000737765;
          goto LABEL_41;
        case 11:
          v9 = 0xE500000000000000;
          if (v8 != 0x6572616873)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v9 = 0xE700000000000000;
          if (v8 != 0x656C6666756873)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v9 = 0xEE00736968547349;
          if (v8 != 0x676E6F5374616877)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v10)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_43:
          v11 = sub_1BAB4();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_A2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BAB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_A398(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_98D8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1B4F4();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_A4C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
  v33 = a2;
  v11 = sub_1B8B4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
      v21 = sub_1B8C4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_B764(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_A7A4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1B4F4();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_3578(&qword_24950, &qword_1C608);
  result = sub_1BA14();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
      result = sub_1B8B4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_AB00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_AD54((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_ACC4(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_ACC4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_AD54(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_AD54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_1B4F4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = v61 - v11;
  v13 = __chkstk_darwin(v10);
  v76 = (v61 - v14);
  result = __chkstk_darwin(v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_B43C(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
          v55 = sub_1B8B4();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
              v59 = sub_1B8C4();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
          v34 = sub_1B8B4();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
              v40 = sub_1B8C4();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_B43C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1B4F4();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_3578(&qword_24950, &qword_1C608);
  result = sub_1BA24();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
    result = sub_1B8B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_B764(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1B4F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_A7A4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_BA08();
      goto LABEL_12;
    }

    sub_BC40(v10 + 1);
  }

  v12 = *v3;
  sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
  v13 = sub_1B8B4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
      v21 = sub_1B8C4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BAC4();
  __break(1u);
  return result;
}

void *sub_BA08()
{
  v1 = v0;
  v2 = sub_1B4F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3578(&qword_24950, &qword_1C608);
  v6 = *v0;
  v7 = sub_1BA04();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_BC40(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1B4F4();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_3578(&qword_24950, &qword_1C608);
  v7 = sub_1BA14();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
      result = sub_1B8B4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_BF5C(uint64_t a1)
{
  v3 = sub_3578(&qword_24938, &qword_1C600);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1B4F4();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_E280(v5))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_CBAC(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_C168(uint64_t a1, void *a2)
{
  v5 = sub_3578(&qword_24938, &qword_1C600);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v65 - v9);
  v11 = sub_1B4F4();
  v12 = __chkstk_darwin(v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v65 - v15);
  __chkstk_darwin(v14);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_E280(v30);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
    v32 = sub_1B8B4();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, a2[6] + v84 * v24, v11);
    v35 = sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
    v36 = sub_1B8C4();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_E280(v24);
        a2 = sub_B43C(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_1B8B4();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, v52[6] + v54 * v84, v11);
        v55 = sub_1B8C4();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, v52[6] + v54 * v84, v11);
            v57 = sub_1B8C4();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_CE54(v64, v65, v80, v24, &v89);

LABEL_52:
  v59 = v89;
LABEL_53:
  sub_E278(v59);
  return a2;
}

uint64_t sub_CBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
  v31 = a1;
  v10 = sub_1B8B4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
      v19 = sub_1B8C4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BA08();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_D318(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_CE54(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_3578(&qword_24938, &qword_1C600);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1B4F4();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_E280(v11);
          v45 = v61;

          return sub_B43C(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
        v35 = sub_1B8B4();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
        v43 = sub_1B8C4();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_D318(int64_t a1)
{
  v3 = sub_1B4F4();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1B9F4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
        v24 = sub_1B8B4();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

void *sub_D620(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1B4F4();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v31;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = (&dword_0 + 1);
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_D8C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3578(&qword_24970, &qword_1C628);
    v3 = sub_1BA94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_9CF4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_D9B8(unsigned int a1, uint64_t a2)
{
  v18 = a1;
  v3 = sub_1B4D4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v17 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = *(v4 + 104);
  v9(v16 - v7, enum case for DeliveryVehicle.siriHelp(_:), v3);
  sub_E2E8(&qword_24980, &type metadata accessor for DeliveryVehicle, &protocol conformance descriptor for DeliveryVehicle);
  v16[1] = a2;
  sub_1B934();
  sub_1B934();
  if (v20 == v19)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1BAB4();
  }

  v11 = *(v4 + 8);
  v11(v8, v3);

  if (v10)
  {
    if (qword_24408 != -1)
    {
      swift_once();
    }

    if (!*(off_248B0[0] + &dword_10))
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v12 = v17;
    v9(v17, enum case for DeliveryVehicle.assistantSuggestions(_:), v3);
    sub_1B934();
    sub_1B934();
    if (v20 == v19)
    {
      v11(v12, v3);
    }

    else
    {
      v13 = sub_1BAB4();
      v11(v12, v3);

      if ((v13 & 1) == 0)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    if (qword_24410 != -1)
    {
      swift_once();
    }

    if (!*(off_248B8[0] + &dword_10))
    {
      return _swiftEmptyArrayStorage;
    }
  }

  sub_9CF4(v18);
  if (v14)
  {
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_DCF8(uint64_t a1)
{
  v2 = sub_1B4F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey, &protocol conformance descriptor for SignalLookupKey);
  result = sub_1B964();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_A4C4(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

char *sub_DE94(uint64_t a1)
{
  if (qword_24408 != -1)
  {
    swift_once();
  }

  v2 = off_248B0[0];
  if (*(off_248B0[0] + &dword_10) && (v3 = sub_9CF4(a1), (v4 & 1) != 0))
  {
    v5 = *(*&stru_20.segname[v2 + 16] + 8 * v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = sub_DCF8(v5);

  if (qword_24410 != -1)
  {
    swift_once();
  }

  v7 = off_248B8[0];
  if (*(off_248B8[0] + &dword_10) && (v8 = sub_9CF4(a1), (v9 & 1) != 0))
  {
    v10 = *(*&stru_20.segname[v7 + 16] + 8 * v8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = sub_DCF8(v10);

  v12 = sub_AB00(v11, v6);

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = sub_9BF8(*(v12 + 16), 0);
  v15 = *(sub_1B4F4() - 8);
  v16 = sub_D620(&v18, &v14[(*(v15 + 80) + 32) & ~*(v15 + 80)], v13, v12);
  sub_E278(v18);
  if (v16 != v13)
  {
    __break(1u);
LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

void *sub_E06C(uint64_t a1)
{
  if (qword_24408 != -1)
  {
    swift_once();
  }

  v2 = off_248B0[0];
  if (*(off_248B0[0] + &dword_10) && (v3 = sub_9CF4(a1), (v4 & 1) != 0))
  {
    v5 = *(*&stru_20.segname[v2 + 16] + 8 * v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = sub_DCF8(v5);

  if (qword_24410 != -1)
  {
    swift_once();
  }

  v7 = off_248B8[0];
  if (*(off_248B8[0] + &dword_10) && (v8 = sub_9CF4(a1), (v9 & 1) != 0))
  {
    v10 = *(*&stru_20.segname[v7 + 16] + 8 * v8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = sub_DCF8(v10);

  if (*(v11 + 16) <= v6[2] >> 3)
  {
    goto LABEL_17;
  }

  v12 = sub_C168(v11, v6);

  v13 = v12[2];
  if (v13)
  {
    while (1)
    {
      v11 = sub_9BF8(v13, 0);
      v14 = *(sub_1B4F4() - 8);
      v6 = sub_D620(&v16, (v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80))), v13, v12);
      sub_E278(v16);
      if (v6 == v13)
      {
        break;
      }

      __break(1u);
LABEL_17:
      v16 = v6;
      sub_BF5C(v11);

      v12 = v16;
      v13 = v16[2];
      if (!v13)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:

    return _swiftEmptyArrayStorage;
  }

  return v11;
}

uint64_t sub_E280(uint64_t a1)
{
  v2 = sub_3578(&qword_24938, &qword_1C600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_E330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3578(&qword_24988, &unk_1C630);
    v3 = sub_1BA94();
    v4 = a1 + 32;

    while (1)
    {
      sub_3784(v4, &v13, &qword_248A8, &unk_1C5D0);
      v5 = v13;
      v6 = v14;
      result = sub_9D7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_E464(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_E464(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_E47C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3578(&qword_249A0, &qword_1C650);
    v3 = sub_1BA94();
    v4 = a1 + 32;

    while (1)
    {
      sub_3784(v4, &v13, &qword_249A8, qword_1C658);
      v5 = v13;
      v6 = v14;
      result = sub_9D7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3D98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_E5C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3578(&qword_24670, &qword_1C100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_E690(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_3578(&qword_24670, &qword_1C100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SignalDefinition(uint64_t a1)
{
  result = qword_24A08;
  if (!qword_24A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E78C(uint64_t a1)
{
  sub_E888(319, &qword_24A18, &type metadata accessor for SignalLookupKey, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_E888(319, &qword_24A20, &type metadata accessor for SignalContextProperties, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_E8EC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_E8EC(uint64_t a1)
{
  if (!qword_24A28)
  {
    sub_8120(&unk_24A30, &qword_1C698);
    v1 = sub_1B9B4();
    if (!v2)
    {
      atomic_store(v1, &qword_24A28);
    }
  }
}

uint64_t sub_E960(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_E980, 0, 0);
}

uint64_t sub_E980()
{
  v83 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = v1;
  v3 = *(v0 + 56);
  v4 = [v2 mediaContainer];
  if (v4)
  {
    goto LABEL_3;
  }

  v50 = [v2 mediaItems];
  if (v50)
  {
    v51 = v50;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v52 = sub_1B944();

    if (v52 >> 62)
    {
      result = sub_1BA84();
      if (result)
      {
        goto LABEL_27;
      }
    }

    else
    {
      result = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_27:
        if ((v52 & 0xC000000000000001) != 0)
        {
          v53 = sub_1BA64();
        }

        else
        {
          if (!*(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v53 = *(v52 + 32);
        }

        v4 = v53;

LABEL_3:
        if ([v4 type] == &dword_4 + 1 && (v5 = objc_msgSend(v4, "identifier")) != 0)
        {
          v6 = v5;
          v7 = sub_1B8D4();
          v9 = v8;

          v10 = [v4 title];
          if (v10)
          {

            if (qword_24400 != -1)
            {
              swift_once();
            }

            v11 = *(v0 + 56);
            v12 = sub_1B894();
            sub_5D50(v12, static Logger.audio);
            v13 = v11;
            v14 = sub_1B874();
            v15 = sub_1B984();

            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v82 = v79;
              *v16 = 136315138;
              v78 = v15;
              v17 = [v2 debugDescription];
              v18 = v7;
              v19 = sub_1B8D4();
              v20 = v9;
              v22 = v21;

              v23 = v19;
              v7 = v18;
              v24 = sub_4D08(v23, v22, &v82);
              v9 = v20;

              *(v16 + 4) = v24;
              _os_log_impl(&dword_0, v14, v78, "PlaylistTypeParameterBuilder#transformer Received playIntent: %s", v16, 0xCu);
              sub_3678(v79);
            }

            *(v0 + 16) = v7;
            *(v0 + 24) = v9;
            *(v0 + 32) = 0xD000000000000016;
            *(v0 + 40) = 0x800000000001D220;
            sub_6244();
            if (sub_1B9E4() & 1) != 0 || (*(v0 + 16) = v7, *(v0 + 24) = v9, *(v0 + 32) = 0xD00000000000001DLL, *(v0 + 40) = 0x800000000001D240, (sub_1B9E4()))
            {

              v25 = [v4 identifier];
              if (!v25 || (v26 = v25, v27 = sub_1B8D4(), v29 = v28, v26, *(v0 + 16) = v27, *(v0 + 24) = v29, *(v0 + 32) = 0x2D6D702E6C70, *(v0 + 40) = 0xE600000000000000, LOBYTE(v26) = sub_1B9E4(), , (v26 & 1) == 0))
              {
                v54 = *(v0 + 56);
                v55 = sub_1B874();
                v56 = sub_1B984();

                v57 = os_log_type_enabled(v55, v56);
                v34 = *(v0 + 48);
                v58 = *(v0 + 56);
                if (v57)
                {
                  v81 = *(v0 + 56);
                  v59 = swift_slowAlloc();
                  v60 = swift_slowAlloc();
                  v82 = v60;
                  *v59 = 136315138;
                  v61 = [v2 debugDescription];
                  v62 = sub_1B8D4();
                  v64 = v63;

                  v65 = sub_4D08(v62, v64, &v82);

                  *(v59 + 4) = v65;
                  _os_log_impl(&dword_0, v55, v56, "PlaylistTypeParameterBuilder#transformer Apple catalog playlist: %s", v59, 0xCu);
                  sub_3678(v60);

                  *(v34 + 24) = &type metadata for Bool;
                }

                else
                {

                  *(v34 + 24) = &type metadata for Bool;
                }

                *v34 = 0;
                goto LABEL_46;
              }

              v30 = *(v0 + 56);
              v31 = sub_1B874();
              v32 = sub_1B984();

              v33 = os_log_type_enabled(v31, v32);
              v34 = *(v0 + 48);
              v35 = *(v0 + 56);
              if (v33)
              {
                v80 = *(v0 + 56);
                v36 = swift_slowAlloc();
                v37 = swift_slowAlloc();
                v82 = v37;
                *v36 = 136315138;
                v38 = [v2 debugDescription];
                v39 = sub_1B8D4();
                v41 = v40;

                v42 = sub_4D08(v39, v41, &v82);

                *(v36 + 4) = v42;
                v43 = "PlaylistTypeParameterBuilder#transformer personalized Apple playlist: %s";
LABEL_43:
                _os_log_impl(&dword_0, v31, v32, v43, v36, 0xCu);
                sub_3678(v37);

                *(v34 + 24) = &type metadata for Bool;
LABEL_45:

                *v34 = 1;
LABEL_46:
                v45 = &enum case for IntentParameter.directAssignment(_:);
                goto LABEL_20;
              }
            }

            else
            {
              *(v0 + 16) = v7;
              *(v0 + 24) = v9;
              *(v0 + 32) = 0xD000000000000019;
              *(v0 + 40) = 0x800000000001D260;
              if (sub_1B9E4() & 1) != 0 || (*(v0 + 16) = v7, *(v0 + 24) = v9, *(v0 + 32) = 0xD000000000000019, *(v0 + 40) = 0x800000000001D280, (sub_1B9E4()) || (*(v0 + 16) = v7, *(v0 + 24) = v9, *(v0 + 32) = 0xD000000000000017, *(v0 + 40) = 0x800000000001D2A0, (sub_1B9E4()))
              {
              }

              else
              {
                *(v0 + 16) = v7;
                *(v0 + 24) = v9;
                *(v0 + 32) = 0xD000000000000021;
                *(v0 + 40) = 0x800000000001D2C0;
                v73 = sub_1B9E4();

                if ((v73 & 1) == 0)
                {
                  v74 = *(v0 + 48);
                  v75 = *(v0 + 56);
                  v76 = enum case for IntentParameter.ignore(_:);
                  v77 = sub_1B4E4();
                  (*(*(v77 - 8) + 104))(v74, v76, v77);

                  goto LABEL_21;
                }
              }

              v66 = *(v0 + 56);
              v31 = sub_1B874();
              v32 = sub_1B984();

              v67 = os_log_type_enabled(v31, v32);
              v34 = *(v0 + 48);
              v35 = *(v0 + 56);
              if (v67)
              {
                v80 = *(v0 + 56);
                v36 = swift_slowAlloc();
                v37 = swift_slowAlloc();
                v82 = v37;
                *v36 = 136315138;
                v68 = [v2 debugDescription];
                v69 = sub_1B8D4();
                v71 = v70;

                v72 = sub_4D08(v69, v71, &v82);

                *(v36 + 4) = v72;
                v43 = "PlaylistTypeParameterBuilder#transformer personal playlist: %s";
                goto LABEL_43;
              }
            }

            *(v34 + 24) = &type metadata for Bool;
            goto LABEL_45;
          }

          v44 = *(v0 + 56);
        }

        else
        {
          v44 = *(v0 + 56);
        }

        goto LABEL_18;
      }
    }

    v44 = *(v0 + 56);
  }

  else
  {
    v44 = *(v0 + 56);
  }

LABEL_18:

LABEL_19:
  v34 = *(v0 + 48);
  v45 = &enum case for IntentParameter.ignore(_:);
LABEL_20:
  v46 = *v45;
  v47 = sub_1B4E4();
  (*(*(v47 - 8) + 104))(v34, v46, v47);
LABEL_21:
  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_F318()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C710, 0, v0);
}

uint64_t sub_F3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B504();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_F424(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B504();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PlayPlaylistAssistantConfigurator(uint64_t a1)
{
  result = qword_24AC0;
  if (!qword_24AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F4E0(uint64_t a1)
{
  result = sub_1B504();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_F594(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1B304();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_F654, 0, 0);
}

uint64_t sub_F654()
{
  v55 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_35;
  }

  v2 = v1;
  v3 = *(v0 + 40);
  v4 = [v2 mediaContainer];
  if (!v4)
  {
    v11 = [v2 mediaItems];
    if (!v11)
    {
      v48 = *(v0 + 40);
      goto LABEL_34;
    }

    v12 = v11;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v13 = sub_1B944();

    if (v13 >> 62)
    {
      result = sub_1BA84();
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_9:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v15 = sub_1BA64();
        }

        else
        {
          if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v15 = *(v13 + 32);
        }

        v4 = v15;

        goto LABEL_3;
      }
    }

    v48 = *(v0 + 40);

    goto LABEL_34;
  }

LABEL_3:
  if ([v4 type] != &dword_4 + 1)
  {
    goto LABEL_28;
  }

  v5 = [v4 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B8D4();
    v9 = v8;

    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  v16 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v16 = v10;
  }

  if (!v16)
  {
LABEL_28:
    v48 = *(v0 + 40);

LABEL_34:
LABEL_35:
    v49 = *(v0 + 32);
    goto LABEL_36;
  }

  if (qword_24400 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 40);
  v18 = sub_1B894();
  sub_5D50(v18, static Logger.audio);
  v19 = v17;
  v20 = sub_1B874();
  v21 = sub_1B984();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v54 = v23;
    *v22 = 136315138;
    v24 = [v2 debugDescription];
    v25 = sub_1B8D4();
    v27 = v26;

    v28 = sub_4D08(v25, v27, &v54);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_0, v20, v21, "PlaylistNameParameterBuilder#transformer Received playIntent: %s", v22, 0xCu);
    sub_3678(v23);
  }

  v29 = [v4 title];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1B8D4();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {

      v35 = sub_1B874();
      v36 = sub_1B984();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v54 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_4D08(v31, v33, &v54);
        _os_log_impl(&dword_0, v35, v36, "PlaylistNameParameterBuilder#transformer mediaItemTitle: %s", v37, 0xCu);
        sub_3678(v38);
      }

      v40 = *(v0 + 56);
      v39 = *(v0 + 64);
      v41 = *(v0 + 48);
      v53 = *(v0 + 40);
      v42 = *(v0 + 32);
      *(v0 + 16) = v31;
      *(v0 + 24) = v33;
      sub_1B2D4();
      sub_6244();
      v43 = sub_1B9C4();
      v45 = v44;
      (*(v40 + 8))(v39, v41);

      v42[3] = &type metadata for String;

      *v42 = v43;
      v42[1] = v45;
      v46 = enum case for IntentParameter.directAssignment(_:);
      v47 = sub_1B4E4();
      (*(*(v47 - 8) + 104))(v42, v46, v47);
      goto LABEL_37;
    }
  }

  v49 = *(v0 + 32);

LABEL_36:
  v50 = enum case for IntentParameter.ignore(_:);
  v51 = sub_1B4E4();
  (*(*(v51 - 8) + 104))(v49, v50, v51);
LABEL_37:

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_FBD4()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C850, 0, v0);
}

uint64_t sub_FC3C()
{
  v0 = sub_3578(&qword_246A0, &qword_1CB00);

  return Transformer.init(transform:)(sub_5DAC, 0, &type metadata for Any + 8, v0);
}

uint64_t sub_FCAC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xEC00000079746976;
  v4 = 0x69746375646F7270;
  v5 = 0xE800000000000000;
  v6 = 0x74754F6C6C696863;
  v7 = 0xED00007375636F46;
  v8 = 0x6C75666563616570;
  if (a1 != 3)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEF636973754D646ELL;
  }

  if (a1 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a1)
  {
    v4 = 0x636973754D77656ELL;
    v3 = 0xEB0000000078694DLL;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (a1 > 1u)
  {
    v3 = v5;
  }

  v11[3] = &type metadata for String;
  v11[0] = v9;
  v11[1] = v3;
  sub_1404C(0x7473696C79616C70, 0xEC000000656D614ELL, v11, a2, a3);
  return sub_3678(v11);
}

Swift::Int sub_FDD8()
{
  sub_1BAD4();
  sub_1B904();

  return sub_1BAE4();
}

uint64_t sub_FEE4(uint64_t a1)
{
  sub_1B904();
}

Swift::Int sub_FFDC(uint64_t a1)
{
  sub_1BAD4();
  sub_1B904();

  return sub_1BAE4();
}

unint64_t sub_100E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11160(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10114(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746976;
  v4 = 0x69746375646F7270;
  v5 = 0xE800000000000000;
  v6 = 0x74754F6C6C696863;
  v7 = 0xED00007375636F46;
  v8 = 0x6C75666563616570;
  if (v2 != 3)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEF636973754D646ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636973754D77656ELL;
    v3 = 0xEB0000000078694DLL;
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

uint64_t sub_101EC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1B4D4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = sub_3578(&qword_24B08, &unk_1C860);
  v2[12] = swift_task_alloc();
  sub_3578(&qword_24B10, &qword_1CB20);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10338, 0, 0);
}

uint64_t sub_10338()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  sub_1B5E4();
  (*(v6 + 104))(v2, enum case for DeliveryVehicle.assistantSuggestions(_:), v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = *(v4 + 48);
  sub_10E78(v1, v3);
  sub_10E78(v2, v3 + v7);
  v8 = *(v6 + 48);
  if (v8(v3, 1, v5) == 1)
  {
    v9 = *(v0 + 120);
    v10 = *(v0 + 64);
    sub_3D38(*(v0 + 112), &qword_24B10, &qword_1CB20);
    sub_3D38(v9, &qword_24B10, &qword_1CB20);
    if (v8(v3 + v7, 1, v10) == 1)
    {
      sub_3D38(*(v0 + 96), &qword_24B10, &qword_1CB20);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v11 = *(v0 + 64);
  sub_10E78(*(v0 + 96), *(v0 + 104));
  v12 = v8(v3 + v7, 1, v11);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 104);
  if (v12 == 1)
  {
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    sub_3D38(*(v0 + 112), &qword_24B10, &qword_1CB20);
    sub_3D38(v13, &qword_24B10, &qword_1CB20);
    (*(v17 + 8))(v15, v16);
LABEL_6:
    sub_3D38(*(v0 + 96), &qword_24B08, &unk_1C860);
    goto LABEL_7;
  }

  v34 = *(v0 + 96);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = *(v0 + 64);
  (*(v21 + 32))(v20, v3 + v7, v22);
  sub_10EE8(&qword_24B18, &type metadata accessor for DeliveryVehicle, &protocol conformance descriptor for DeliveryVehicle);
  v23 = sub_1B8C4();
  v24 = *(v21 + 8);
  v24(v20, v22);
  sub_3D38(v14, &qword_24B10, &qword_1CB20);
  sub_3D38(v13, &qword_24B10, &qword_1CB20);
  v24(v15, v22);
  sub_3D38(v34, &qword_24B10, &qword_1CB20);
  if (v23)
  {
LABEL_11:
    sub_1B7F4();
    sub_1B5D4();
    sub_1B7A4();
    v25 = sub_1B7D4();

    if (v25 & 1) != 0 || (sub_1B5D4(), sub_1B7C4(), v26 = sub_1B7D4(), , , (v26))
    {
      v27 = *(v0 + 48);
      *(v0 + 128) = *v27;
      *(v0 + 136) = v27[1];
      *(v0 + 144) = swift_getObjectType();
      v28 = sub_1B954();
      v30 = v29;
      v31 = sub_107EC;
    }

    else
    {
      v32 = *(v0 + 48);
      *(v0 + 152) = *v32;
      *(v0 + 160) = v32[1];
      sub_132B0();
      *(v0 + 176) = unk_20ED8;

      *(v0 + 168) = swift_getObjectType();
      v28 = sub_1B954();
      v30 = v33;
      v31 = sub_108E4;
    }

    return _swift_task_switch(v31, v28, v30);
  }

LABEL_7:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_107EC()
{
  v2 = v0[17];
  v1 = v0[18];
  v0[5] = &type metadata for String;
  v0[2] = 0x636973754D77656ELL;
  v0[3] = 0xEB0000000078694DLL;
  sub_1404C(0x7473696C79616C70, 0xEC000000656D614ELL, v0 + 2, v1, v2);
  sub_3678(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_108E4()
{
  sub_FCAC(*(v0 + 176), *(v0 + 168), *(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10984(uint64_t a1, uint64_t a2)
{
  v4 = sub_10EE8(&qword_24B00, type metadata accessor for PlayPlaylistAssistantConfigurator, &unk_1C7C0);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

uint64_t sub_10A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B504();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10A74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10B10;

  return sub_101EC(a1, a2);
}

uint64_t sub_10B10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2BE4;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t sub_10CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10D64;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t sub_10D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_10E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_3578(&qword_24B10, &qword_1CB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10EE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PlayPlaylistAssistantConfigurator.Playlist(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayPlaylistAssistantConfigurator.Playlist(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_110A4()
{
  result = qword_24B20;
  if (!qword_24B20)
  {
    sub_8120(&qword_24B28, qword_1C880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24B20);
  }

  return result;
}

unint64_t sub_1110C()
{
  result = qword_24B30;
  if (!qword_24B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24B30);
  }

  return result;
}

unint64_t sub_11160(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_20DF8;
  v6._object = a2;
  v4 = sub_1BAA4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_111AC()
{
  sub_3578(&qword_24BD8, &unk_1CE10);
  sub_1B334();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C960;
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  result = sub_1B314();
  qword_25C78 = v0;
  return result;
}

uint64_t sub_113D4()
{
  sub_3578(&qword_24BD8, &unk_1CE10);
  sub_1B334();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C970;
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  result = sub_1B314();
  qword_25C80 = v0;
  return result;
}

uint64_t sub_118F8()
{
  sub_3578(&qword_24BD0, &unk_1C9D0);
  v0 = sub_1B464();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C980;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DeviceType.iPhone(_:), v0);
  v6(v5 + v2, enum case for DeviceType.iPad(_:), v0);
  v6(v5 + 2 * v2, enum case for DeviceType.watch(_:), v0);
  v6(v5 + 3 * v2, enum case for DeviceType.pod(_:), v0);
  v6(v5 + 4 * v2, enum case for DeviceType.mac(_:), v0);
  v6(v5 + 5 * v2, enum case for DeviceType.homepod(_:), v0);
  v6(v5 + 6 * v2, enum case for DeviceType.appleTV(_:), v0);
  result = (v6)(v5 + 7 * v2, enum case for DeviceType.carPlay(_:), v0);
  qword_25C88 = v4;
  return result;
}

uint64_t sub_11AEC()
{
  sub_1B474();
  swift_allocObject();
  result = sub_1B484();
  qword_25C90 = result;
  return result;
}

unint64_t sub_11B68()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_1B944();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0x7365736143657355 && *v5 == 0xEE005879616C503ALL)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_1BAB4() & 1) == 0);
  }

  return v3;
}

uint64_t sub_11C60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_11D0C()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (v1 && (v2 = v1, v3 = [v1 internalSignals], v2, v3))
  {
    v4 = sub_1B944();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    while (--v6)
    {
      if (*(v5 - 1) != 0xD000000000000011 || 0x800000000001D330 != *v5)
      {
        v5 += 2;
        if ((sub_1BAB4() & 1) == 0)
        {
          continue;
        }
      }

      return 1;
    }
  }

  else
  {
    v9 = [v0 mediaItems];
    if (v9)
    {
      v10 = v9;
      sub_12384();
      v11 = sub_1B944();

      v37 = v0;
      if (v11 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1BA84())
      {
        v13 = 0;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = sub_1BA64();
          }

          else
          {
            if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_28;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v17 = [v14 title];
          if (v17)
          {
            v18 = v17;
            v19 = sub_1B8D4();
            v21 = v20;

            v22 = HIBYTE(v21) & 0xF;
            if ((v21 & 0x2000000000000000) == 0)
            {
              v22 = v19 & 0xFFFFFFFFFFFFLL;
            }

            if (v22)
            {

              goto LABEL_32;
            }
          }

          ++v13;
          if (v16 == i)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_30:

      v0 = v37;
    }

    v15 = [v0 mediaContainer];
    if (v15)
    {
      if ([v15 type] != &dword_0 + 1 && objc_msgSend(v15, "type") != &dword_0 + 2)
      {
        goto LABEL_42;
      }

LABEL_32:
      v23 = [v15 title];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1B8D4();
        v27 = v26;

        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = 0;
        v27 = 0xE000000000000000;
      }

      v29 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v29 = v28;
      }

      if (v29)
      {
        v30 = [v15 artist];
        if (v30)
        {
          v31 = v30;
          v32 = sub_1B8D4();
          v34 = v33;

          v35 = v32 & 0xFFFFFFFFFFFFLL;
        }

        else
        {

          v35 = 0;
          v34 = 0xE000000000000000;
        }

        v36 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v36 = v35;
        }

        if (v36)
        {
          return 1;
        }
      }

      else
      {
LABEL_42:
      }
    }
  }

  return 0;
}

unint64_t sub_12068()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_1B944();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0xD000000000000012 && 0x800000000001D370 == *v5)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_1BAB4() & 1) == 0);
  }

  return v3;
}

unint64_t sub_1215C()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_1B944();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0xD000000000000019 && 0x800000000001D350 == *v5)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_1BAB4() & 1) == 0);
  }

  return v3;
}

uint64_t sub_12250(uint64_t a1)
{
  v3 = [v1 mediaItems];
  if (!v3)
  {
LABEL_10:
    v8 = [v1 mediaContainer];
    if (!v8)
    {
      return 0;
    }

LABEL_11:
    v9 = [v8 type];
    v10 = *(a1 + 16);
    v11 = (a1 + 32);
    do
    {
      v12 = v10-- != 0;
      v13 = v12;
      if (!v12)
      {
        break;
      }

      v14 = *v11++;
    }

    while (v14 != v9);

    return v13;
  }

  v4 = v3;
  sub_12384();
  v5 = sub_1B944();

  if (!(v5 >> 62))
  {
    result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = sub_1BA84();
  if (!result)
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_1BA64();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {
    v7 = *(v5 + 32);
LABEL_7:
    v8 = v7;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t sub_12384()
{
  result = qword_246C0;
  if (!qword_246C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_246C0);
  }

  return result;
}

uint64_t sub_123F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B504();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_12474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B504();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PlayRadioAssistantConfigurator(uint64_t a1)
{
  result = qword_24C38;
  if (!qword_24C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12578(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_12598, 0, 0);
}

uint64_t sub_12598()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    v4 = [v2 mediaItems];
    if (v4)
    {
      v5 = v4;
      sub_47E0(0, &qword_246C0, INMediaItem_ptr);
      v6 = sub_1B944();

      if (v6 >> 62)
      {
        result = sub_1BA84();
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
        if (result)
        {
LABEL_5:
          if ((v6 & 0xC000000000000001) != 0)
          {
            v8 = sub_1BA64();
          }

          else
          {
            if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return result;
            }

            v8 = *(v6 + 32);
          }

          v9 = v8;

LABEL_13:
          if ([v9 type] == &dword_10 || objc_msgSend(v9, "type") == &dword_8 + 1)
          {
            v12 = [v9 title];
            if (v12)
            {
              v13 = v12;
              v14 = sub_1B8D4();
              v16 = v15;

              v17 = v14 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = 0;
              v16 = 0xE000000000000000;
            }

            v18 = HIBYTE(v16) & 0xF;
            if ((v16 & 0x2000000000000000) == 0)
            {
              v18 = v17;
            }

            if (v18)
            {
              v19 = [v9 identifier];
              if (!v19 || (v20 = v19, v21 = sub_1B8D4(), v23 = v22, v20, *(v0 + 16) = v21, *(v0 + 24) = v23, *(v0 + 32) = 0xD000000000000022, *(v0 + 40) = 0x800000000001D390, sub_6244(), LOBYTE(v20) = sub_1B9E4(), , (v20 & 1) != 0) || (v24 = [v9 identifier]) == 0 || (v25 = v24, v26 = sub_1B8D4(), v28 = v27, v25, *(v0 + 16) = v26, *(v0 + 24) = v28, *(v0 + 32) = 0xD000000000000019, *(v0 + 40) = 0x800000000001D3C0, LOBYTE(v25) = sub_1B9E4(), , (v25 & 1) != 0))
              {

                v10 = *(v0 + 48);
LABEL_28:
                v11 = enum case for IntentParameter.ignore(_:);
                goto LABEL_29;
              }

              v31 = [v9 title];
              v32 = *(v0 + 48);
              if (v31)
              {
                v33 = v31;
                v34 = sub_1B8D4();
                v36 = v35;

                *(v32 + 24) = &type metadata for String;
                if (v36)
                {

LABEL_38:
                  v37 = *(v0 + 48);
                  *v37 = v34;
                  v37[1] = v36;
                  v38 = enum case for IntentParameter.directAssignment(_:);
                  v39 = sub_1B4E4();
                  (*(*(v39 - 8) + 104))(v37, v38, v39);
                  goto LABEL_30;
                }
              }

              else
              {
                *(v32 + 24) = &type metadata for String;
              }

              v34 = 0;
              v36 = 0xE000000000000000;
              goto LABEL_38;
            }
          }

LABEL_27:
          v10 = *(v0 + 48);

          goto LABEL_28;
        }
      }
    }

    v9 = [v2 mediaContainer];
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  v10 = *(v0 + 48);
  v11 = enum case for IntentParameter.ignore(_:);
LABEL_29:
  v29 = sub_1B4E4();
  (*(*(v29 - 8) + 104))(v10, v11, v29);
LABEL_30:
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_129C0()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1CB08, 0, v0);
}

Swift::Int sub_12A28()
{
  sub_1BAD4();
  sub_1B904();
  return sub_1BAE4();
}

Swift::Int sub_12A9C(uint64_t a1)
{
  sub_1BAD4();
  sub_1B904();
  return sub_1BAE4();
}

uint64_t sub_12AF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_20FB8;
  v7._object = v3;
  v5 = sub_1BAA4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_12B74(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1B4D4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = sub_3578(&qword_24B08, &unk_1C860);
  v2[12] = swift_task_alloc();
  sub_3578(&qword_24B10, &qword_1CB20);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_12CC0, 0, 0);
}

uint64_t sub_12CC0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  v6 = v0[9];
  sub_1B5E4();
  (*(v6 + 104))(v2, enum case for DeliveryVehicle.assistantSuggestions(_:), v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = *(v4 + 48);
  sub_10E78(v1, v3);
  sub_10E78(v2, v3 + v7);
  v8 = *(v6 + 48);
  if (v8(v3, 1, v5) == 1)
  {
    v9 = v0[15];
    v10 = v0[8];
    sub_3D38(v0[14], &qword_24B10, &qword_1CB20);
    sub_3D38(v9, &qword_24B10, &qword_1CB20);
    if (v8(v3 + v7, 1, v10) == 1)
    {
      sub_3D38(v0[12], &qword_24B10, &qword_1CB20);
LABEL_11:
      v25 = v0[6];
      v0[16] = *v25;
      v0[17] = v25[1];
      sub_133F8();

      v0[18] = swift_getObjectType();
      v27 = sub_1B954();

      return _swift_task_switch(sub_1309C, v27, v26);
    }

    goto LABEL_6;
  }

  v11 = v0[8];
  sub_10E78(v0[12], v0[13]);
  v12 = v8(v3 + v7, 1, v11);
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[13];
  if (v12 == 1)
  {
    v16 = v0[8];
    v17 = v0[9];
    sub_3D38(v0[14], &qword_24B10, &qword_1CB20);
    sub_3D38(v13, &qword_24B10, &qword_1CB20);
    (*(v17 + 8))(v15, v16);
LABEL_6:
    sub_3D38(v0[12], &qword_24B08, &unk_1C860);
    goto LABEL_7;
  }

  v28 = v0[12];
  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[8];
  (*(v21 + 32))(v20, v3 + v7, v22);
  sub_13548(&qword_24B18, &type metadata accessor for DeliveryVehicle, &protocol conformance descriptor for DeliveryVehicle);
  v23 = sub_1B8C4();
  v24 = *(v21 + 8);
  v24(v20, v22);
  sub_3D38(v14, &qword_24B10, &qword_1CB20);
  sub_3D38(v13, &qword_24B10, &qword_1CB20);
  v24(v15, v22);
  sub_3D38(v28, &qword_24B10, &qword_1CB20);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_7:

  v18 = v0[1];

  return v18();
}

uint64_t sub_1309C()
{
  v2 = v0[17];
  v1 = v0[18];
  v0[5] = &type metadata for String;
  v0[2] = 0x7265766F63736964;
  v0[3] = 0xE900000000000079;
  sub_1404C(0x6D614E6F69646172, 0xE900000000000065, v0 + 2, v1, v2);
  sub_3678(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_13190(uint64_t a1, uint64_t a2)
{
  v4 = sub_13548(&qword_24C78, type metadata accessor for PlayRadioAssistantConfigurator, &unk_1CA78);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

uint64_t sub_13214(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10B10;

  return sub_12B74(a1, a2);
}

void sub_132B0()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = v1[v4 + 32];
        v11 = v1[v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_13520(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_20;
        }

        v1[v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_21;
        }

        v1[v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_133F8()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_13534(v1);
        }

        v10 = *(v1 + 2);
        if (v4 >= v10)
        {
          goto LABEL_20;
        }

        if (v8 >= v10)
        {
          goto LABEL_21;
        }

        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_13548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PlayRadioAssistantConfigurator.RadioStations(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PlayRadioAssistantConfigurator.RadioStations(_WORD *result, int a2, int a3)
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

unint64_t sub_13674()
{
  result = qword_24C80;
  if (!qword_24C80)
  {
    sub_8120(&qword_24C88, qword_1CB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C80);
  }

  return result;
}

unint64_t sub_136DC()
{
  result = qword_24C90;
  if (!qword_24C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C90);
  }

  return result;
}

unint64_t sub_13730(char a1)
{
  result = 0x7974696E69666661;
  switch(a1)
  {
    case 1:
      result = 0x6E69666661736964;
      break;
    case 2:
      result = 2036427888;
      break;
    case 3:
      result = 0x646F504179616C70;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6973754D79616C70;
      break;
    case 6:
      result = 0x5979425879616C70;
      break;
    case 7:
      result = 0x6974724179616C70;
      break;
    case 8:
      result = 0x6964615279616C70;
      break;
    case 9:
      result = 0x79616C5079616C70;
      break;
    case 10:
      result = 0x4E65685479616C70;
      break;
    case 11:
      result = 0x6572616873;
      break;
    case 12:
      result = 0x656C6666756873;
      break;
    case 13:
      result = 0x676E6F5374616877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_13910(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1B804();
  v6 = v13;
  v7 = v14;
  v8 = sub_37EC(v12, v13);
  v11[3] = v6;
  v11[4] = *(v7 + 8);
  v9 = sub_35C0(v11);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  sub_1A294(a1, a2);
  sub_1B824();

  sub_3678(v11);
  return sub_3678(v12);
}

uint64_t sub_13A2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000079746976;
  v3 = 0x69746375646F7270;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x636973754D77656ELL;
    }

    else
    {
      v5 = 0x69746375646F7270;
    }

    if (v4)
    {
      v6 = 0xEB0000000078694DLL;
    }

    else
    {
      v6 = 0xEC00000079746976;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x74754F6C6C696863;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6C75666563616570;
    }

    else
    {
      v5 = 0x756F72676B636162;
    }

    if (v4 == 3)
    {
      v6 = 0xED00007375636F46;
    }

    else
    {
      v6 = 0xEF636973754D646ELL;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x74754F6C6C696863;
  v9 = 0x6C75666563616570;
  v10 = 0xED00007375636F46;
  if (a2 != 3)
  {
    v9 = 0x756F72676B636162;
    v10 = 0xEF636973754D646ELL;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x636973754D77656ELL;
    v2 = 0xEB0000000078694DLL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1BAB4();
  }

  return v13 & 1;
}

uint64_t sub_13BF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x4E74736163646F70;
  v5 = 0xEB00000000656D61;
  v6 = 0xEC000000656D614ELL;
  if (a1 != 4)
  {
    v6 = 0xEC00000065707954;
  }

  if (a1 != 3)
  {
    v4 = 0x7473696C79616C70;
    v5 = v6;
  }

  v7 = 0x614E747369747261;
  v8 = 0xEA0000000000656DLL;
  if (a1 != 1)
  {
    v7 = 0x6D614E6F69646172;
    v8 = 0xE900000000000065;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x656D614E676E6F73;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEB00000000656D61;
      if (v9 != 0x4E74736163646F70)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 1701667150;
      }

      else
      {
        v12 = 1701869908;
      }

      v11 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v9 != 0x7473696C79616C70)
      {
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xEA0000000000656DLL;
      if (v9 != 0x614E747369747261)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x6D614E6F69646172)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x656D614E676E6F73)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
LABEL_34:
    v13 = sub_1BAB4();
    goto LABEL_35;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int sub_13E00(unsigned __int8 a1)
{
  sub_1BAD4();
  sub_1B904();

  return sub_1BAE4();
}

Swift::Int sub_13F28(uint64_t a1, unsigned __int8 a2)
{
  sub_1BAD4();
  sub_1B904();

  return sub_1BAE4();
}

uint64_t sub_1404C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1B804();
  v8 = v19;
  v9 = v20;
  v10 = sub_37EC(v18, v19);
  v17[3] = v8;
  v17[4] = *(v9 + 8);
  v11 = sub_35C0(v17);
  (*(*(v8 - 8) + 16))(v11, v10, v8);
  sub_1A294(a1, a2);
  v12 = a3[3];
  v13 = sub_37EC(a3, v12);
  v16[3] = v12;
  v14 = sub_35C0(v16);
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  sub_1B834();

  sub_3678(v16);
  sub_3678(v17);
  return sub_3678(v18);
}

Swift::Int sub_141C0()
{
  v1 = *v0;
  sub_1BAD4();
  sub_13730(v1);
  sub_1B904();

  return sub_1BAE4();
}

uint64_t sub_14224(uint64_t a1)
{
  sub_13730(*v1);
  sub_1B904();
}

Swift::Int sub_14278(uint64_t a1)
{
  v2 = *v1;
  sub_1BAD4();
  sub_13730(v2);
  sub_1B904();

  return sub_1BAE4();
}

unint64_t sub_142D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B06C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_14308@<X0>(unint64_t *a1@<X8>)
{
  result = sub_13730(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_14334(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_13730(*a1);
  v5 = v4;
  if (v3 == sub_13730(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BAB4();
  }

  return v8 & 1;
}

uint64_t sub_143C4(uint64_t a1)
{
  sub_1B904();
}

unint64_t sub_144DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1450C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D614E676E6F73;
  v5 = 0xEB00000000656D61;
  v6 = 0x4E74736163646F70;
  v7 = 0xEC000000656D614ELL;
  if (v2 != 4)
  {
    v7 = 0xEC00000065707954;
  }

  if (v2 != 3)
  {
    v6 = 0x7473696C79616C70;
    v5 = v7;
  }

  v8 = 0xEA0000000000656DLL;
  v9 = 0x614E747369747261;
  if (v2 != 1)
  {
    v9 = 0x6D614E6F69646172;
    v8 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_145F8()
{
  v0 = sub_1B4D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v4 = qword_24460;
  v26 = qword_25C80;

  if (v4 != -1)
  {
    swift_once();
  }

  v24 = 0x800000000001D680;
  v25 = 0x800000000001D430;
  v23 = qword_25C88;
  v5 = *(v1 + 104);
  v5(v3, enum case for DeliveryVehicle.siriHelp(_:), v0);

  v21 = sub_D9B8(0, v3);
  (*(v1 + 8))(v3, v0);
  v22 = 0x800000000001D490;
  sub_3578(&qword_24D70, &qword_1CE08);
  sub_1B5A4();
  v6 = swift_allocObject();
  v27 = xmmword_1BF10;
  *(v6 + 16) = xmmword_1BF10;
  sub_1B5C4();
  sub_3578(&qword_24D48, &qword_1CDF0);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v27;
  v9 = enum case for SiriHintsMode.display(_:);
  v10 = sub_1B414();
  (*(*(v10 - 8) + 104))(v8 + v7, v9, v10);
  v5((v8 + v7), enum case for DeliveryVehicle.siriHints(_:), v0);
  qword_25D50 = 0;
  unk_25D40 = 0u;
  unk_25D30 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v11 = (type metadata accessor for SignalDefinition(0) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v27;
  v14 = (v13 + v12);
  v15 = v11[7];
  *(v13 + v12 + v15) = v8;
  v16 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v17 = sub_1B624();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v14[v15], v16, v17);
  (*(v18 + 56))(&v14[v15], 0, 1, v17);
  v19 = &v14[v11[8]];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *v14 = v21;
  qword_25C98 = 0xD000000000000019;
  qword_25CA0 = v24;
  unk_25CA8 = 0xD000000000000056;
  qword_25CB0 = v25;
  unk_25CB8 = v26;
  qword_25CC0 = v23;
  unk_25CC8 = v13;
  qword_25CD0 = 0x7974696E69666661;
  qword_25CD8 = 0xE800000000000000;
  unk_25CE0 = 0xD000000000000010;
  qword_25CE8 = v22;
  word_25CF0 = 256;
  qword_25CF8 = 0;
  unk_25D00 = 0;
  qword_25D08 = &off_20C18;
  unk_25D10 = v6;
  qword_25D18 = v8;
  unk_25D20 = sub_14AE4;
  qword_25D28 = 0;
  qword_25D58 = _swiftEmptyArrayStorage;
  unk_25D60 = _swiftEmptyArrayStorage;
}

uint64_t sub_14AE4(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 != 2 && (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *a1;
  if (v3 == 2 || (v3 & 1) == 0)
  {
    return a1[33];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_14B1C()
{
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v0 = qword_24460;
  v19 = qword_25C80;

  if (v0 != -1)
  {
    swift_once();
  }

  v18 = qword_25C88;
  sub_3578(&qword_24D70, &qword_1CE08);
  sub_1B5A4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF10;

  sub_1B5C4();
  sub_3578(&qword_24D48, &qword_1CDF0);
  v2 = sub_1B4D4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BF10;
  v6 = enum case for SiriHintsMode.display(_:);
  v7 = sub_1B414();
  (*(*(v7 - 8) + 104))(v5 + v4, v6, v7);
  (*(v3 + 104))(v5 + v4, enum case for DeliveryVehicle.siriHints(_:), v2);
  qword_25E20 = 0;
  unk_25E10 = 0u;
  unk_25E00 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v8 = (type metadata accessor for SignalDefinition(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BF10;
  v11 = (v10 + v9);
  v12 = v8[7];
  *(v10 + v9 + v12) = v5;
  v13 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v14 = sub_1B624();
  v15 = *(v14 - 8);
  (*(v15 + 104))(&v11[v12], v13, v14);
  (*(v15 + 56))(&v11[v12], 0, 1, v14);
  v16 = &v11[v8[8]];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *v11 = _swiftEmptyArrayStorage;
  qword_25D68 = 0xD00000000000001CLL;
  unk_25D70 = 0x800000000001D660;
  qword_25D78 = 0xD000000000000056;
  qword_25D80 = 0x800000000001D430;
  unk_25D88 = v19;
  qword_25D90 = v18;
  unk_25D98 = v10;
  qword_25DA0 = 0x6E69666661736964;
  qword_25DA8 = 0xEB00000000797469;
  unk_25DB0 = 0xD000000000000010;
  qword_25DB8 = 0x800000000001D490;
  word_25DC0 = 257;
  qword_25DC8 = 0;
  unk_25DD0 = 0;
  qword_25DD8 = &off_20C70;
  unk_25DE0 = v1;
  qword_25DE8 = v5;
  unk_25DF0 = variable initialization expression of AudioSuggestionsExecutionParameters.supportsAffinityIntent;
  qword_25DF8 = 0;
  qword_25E28 = _swiftEmptyArrayStorage;
  unk_25E30 = _swiftEmptyArrayStorage;
}

uint64_t sub_14FA8()
{
  v0 = sub_1B4D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24450 != -1)
  {
    swift_once();
  }

  v4 = qword_24460;
  v25 = qword_25C78;

  if (v4 != -1)
  {
    swift_once();
  }

  v23 = 0x800000000001D640;
  v24 = 0x800000000001D430;
  v5 = qword_25C88;
  v6 = enum case for DeliveryVehicle.siriHelp(_:);
  v7 = *(v1 + 104);
  v7(v3, enum case for DeliveryVehicle.siriHelp(_:), v0);

  v21 = sub_D9B8(2u, v3);
  (*(v1 + 8))(v3, v0);
  v22 = 0x800000000001D490;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  v20 = xmmword_1BF10;
  *(v9 + 16) = xmmword_1BF10;
  v7((v9 + v8), v6, v0);
  qword_25EF0 = 0;
  unk_25EE0 = 0u;
  unk_25ED0 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v10 = (type metadata accessor for SignalDefinition(0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v20;
  v13 = (v12 + v11);
  v14 = v10[7];
  *(v12 + v11 + v14) = v9;
  v15 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v16 = sub_1B624();
  v17 = *(v16 - 8);
  (*(v17 + 104))(&v13[v14], v15, v16);
  (*(v17 + 56))(&v13[v14], 0, 1, v16);
  v18 = &v13[v10[8]];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *v13 = v21;
  qword_25E38 = 0xD000000000000015;
  qword_25E40 = v23;
  unk_25E48 = 0xD000000000000056;
  qword_25E50 = v24;
  unk_25E58 = v25;
  qword_25E60 = v5;
  unk_25E68 = v12;
  qword_25E70 = 2036427888;
  qword_25E78 = 0xE400000000000000;
  unk_25E80 = 0xD000000000000010;
  qword_25E88 = v22;
  word_25E90 = 258;
  xmmword_25E98 = 0u;
  unk_25EA8 = 0u;
  qword_25EB8 = v9;
  unk_25EC0 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_25EC8 = 0;
  qword_25EF8 = _swiftEmptyArrayStorage;
  unk_25F00 = _swiftEmptyArrayStorage;
}

double sub_1539C()
{
  v0 = sub_1B394();
  v52 = *(v0 - 8);
  v53 = v0;
  __chkstk_darwin(v0);
  v51 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_3578(&qword_24670, &qword_1C100);
  __chkstk_darwin(v2 - 8);
  v4 = (&v38 - v3);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v5 = qword_24460;
  v50 = qword_25C80;

  if (v5 != -1)
  {
    swift_once();
  }

  v48 = 0x800000000001D620;
  v49 = 0x800000000001D430;
  v46 = qword_25C88;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v6 = (type metadata accessor for SignalDefinition(0) - 8);
  v7 = *v6;
  *&v59 = *(*v6 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v56 = xmmword_1C490;
  v47 = v9;
  *(v9 + 16) = xmmword_1C490;
  v10 = (v9 + v8);

  v43 = sub_DE94(3);
  v58 = sub_3578(&qword_24D48, &qword_1CDF0);
  v54 = sub_1B4D4();
  v11 = *(v54 - 8);
  v12 = *(v11 + 72);
  v57 = *(v11 + 80);
  v13 = (v57 + 32) & ~v57;
  v44 = 2 * v12;
  v42 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v56;
  v45 = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v15 = *(v11 + 104);
  v55 = v15;
  v15(v14 + v13);
  LODWORD(v56) = enum case for DeliveryVehicle.siriHelp(_:);
  v15(v14 + v13 + v12);
  *v4 = v14;
  v16 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v41 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v17 = sub_1B624();
  v18 = *(v17 - 8);
  v40 = *(v18 + 104);
  v40(v4, v16, v17);
  v39 = *(v18 + 56);
  v39(v4, 0, 1, v17);
  v19 = v10 + v6[8];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *v10 = v43;
  sub_1AC78(v4, v10 + v6[7]);
  v20 = (v10 + v59);
  v43 = sub_E06C(3);
  v21 = v42;
  v22 = swift_allocObject();
  v59 = xmmword_1BF10;
  *(v22 + 16) = xmmword_1BF10;
  v55(v22 + v13, v56, v54);
  *v4 = v22;
  v40(v4, v41, v17);
  v39(v4, 0, 1, v17);
  v23 = v20 + v6[8];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *v20 = v43;
  sub_1AC78(v4, v20 + v6[7]);
  v24 = v44;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C5F0;
  v26 = v25 + v13;
  v27 = v25 + v13;
  v29 = v54;
  v28 = v55;
  v55(v27, v56, v54);
  v28(v26 + v21, enum case for DeliveryVehicle.siriAutoComplete(_:), v29);
  v28(v26 + v24, v45, v29);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v61 + 1) = sub_1B444();
  v62 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v60);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v30 = swift_allocObject();
  *(v30 + 16) = v59;
  *(v30 + 56) = &type metadata for PodcastNameParameterBuilder;
  *(v30 + 64) = &off_213F8;
  *(v30 + 32) = 3;
  sub_3578(&qword_24D60, &qword_1CE00);
  v31 = swift_allocObject();
  *(v31 + 16) = v59;
  v32 = v51;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v34 = swift_allocObject();
  v35 = v53;
  v34[5] = v53;
  v34[6] = &protocol witness table for SubscriptionProvider;
  v36 = sub_35C0(v34 + 2);
  (*(v52 + 32))(v36, v32, v35);
  *(v31 + 56) = PartyMusicSubscriber;
  *(v31 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber, &protocol conformance descriptor for FirstPartyMusicSubscriber);
  *(v31 + 32) = v34;
  qword_25F08 = 0xD00000000000001DLL;
  qword_25F10 = v48;
  qword_25F18 = 0xD000000000000056;
  qword_25F20 = v49;
  qword_25F28 = v50;
  qword_25F30 = v46;
  unk_25F38 = v47;
  strcpy(&qword_25F40, "playAPodcast");
  BYTE5(qword_25F48) = 0;
  HIWORD(qword_25F48) = -5120;
  unk_25F50 = 0xD000000000000010;
  qword_25F58 = 0x800000000001D490;
  word_25F60 = 259;
  xmmword_25F68 = 0u;
  unk_25F78 = 0u;
  result = *&v61;
  *&algn_25FA0[16] = v61;
  qword_25F88 = v25;
  unk_25F90 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_25F98 = 0;
  *algn_25FA0 = v60;
  qword_25FC0 = v62;
  unk_25FC8 = v30;
  qword_25FD0 = v31;
  return result;
}

uint64_t sub_15B60()
{
  if (sub_12250(&off_20F20))
  {
    v0 = sub_12068() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}